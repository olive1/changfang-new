<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 用户中心
 * 收藏
 * 订单
 * 构造函数中  包括验证SESSION
 * 
 */
 
 class Usercenter extends Lm_Controller{
    
    function __construct(){
        
        parent::__construct();    
        
        if(!$this->lmauth->is_login())//未登陆，后退
        {
            $this->lm_session->set_flashdata('success', '请先登录！');
            redirect(site_url('/user/login/'));
        }
        
        $this->load->model('lm_co_mdl');  //load 收藏table
        $this->load->model('lm_order_mdl');
    }
    
    
    /**
     * center用户中心
     * $id  根据ID 载入  个人资料，联系方式，密码。0-4
     */
    function center($id = 0){
        
        $data['id']	=	intval($id); //个人资料 切换用
        //返回  所有资料数据
        $data['user_row']=   $this->lm_user_mdl->select(array('user_id' => $this->lmauth->_user['user_id']));
        
        $this->_form_validation_update(); //表单验证  更改资料
        
        if($this->form_validation->run() == FALSE)
        {
            if($id == 0)
			{
				$this->load->view('lm_user_center', $data);
			}
			elseif($id == 2)
			{
				$this->load->view('lm_user_contact', $data);
			}
			elseif($id == 3)
			{
				$this->load->view('lm_user_password', $data);
			}
			
			
        }else
        {
            $row    =   $this->_update();//更新入库         
        }
        
        
        
    } 
    
    /** 订单 */
    function order(){
        
        $this->load->model('lm_order_mdl');
        $result         =  $this->lm_order_mdl->select_result(array(
                                                            'user_id'   => $this->lmauth->_user['user_id'],
                                                            ));
        $data['order_result']	= $result;        
        $this->load->view('lm_order', $data);
        
    }
    
    /** 订单ADD */
    function order_add($goods_id = 0){
        
        $goods_id       =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        
        //检查 该会员 最大商品ID  订单数
        $max_goods_id    =   count($this->lm_order_mdl->select_result(array('user_id' => $this->lmauth->_user['user_id'])));
        
        if($max_goods_id > 20)
        {
            $success    =   '最大预约数不可大于20！';
            $this->lm_session->set_flashdata('order_success', $success);
            go_back();
            exit();
        }
        
        $this->_order_form_validation(); //订单验证
        
        if($this->form_validation->run() == FALSE)
        {
            $success    =   '订单非法！';               
        }
        else
        {
            
            //是否已存在
            $row    =   $this->lm_order_mdl->select(
                                                    array(
                                                       'goods_id' => $goods_id,
                                                       'user_id'  => $this->lmauth->_user['user_id'],
                                                    )
                                                    );
            if($row)
            {
                $success    =   '该酒店已添加过！';
                $this->lm_session->set_flashdata('order_success', $success);   
                go_back();
                exit();         
            }
            
            $data   =   array(
                        'goods_id'      => $goods_id,
                        'user_id'       => $this->lmauth->_user['user_id'],
                        'cat_id'        => $this->area->area_ary->cat_id,
                        'goods_name'    => $this->input->post('goods_name', TRUE),
                        'l_price'       => $this->input->post('l_price', TRUE),
                        'h_price'       => $this->input->post('h_price', TRUE),
                        'order_phone'   => $this->input->post('order_phone', TRUE),
                        'create_time'   => time(),
                        'update_time'   => time(),
                        );
            
            $this->lm_order_mdl->add($data);
            $success    =   '添加成功，可到“我的订单”查询！';
        }
        $this->lm_session->set_flashdata('order_success', $success);
        go_back();
    }
    
    /** 取消订单  */
    function order_del($goods_id = 0){
        
        $goods_id   =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        $del        =   $this->lm_co_mdl->del(
                                                array(
                                                    'goods_id' => $goods_id,
                                                    'user_id'  => $this->lmauth->_user['user_id'],
                                                    )
                                                
                                                );
        $success    =   $del ? '已取消该收藏' : '取消失败！';
        $this->lm_session->set_flashdata('success', $success);
        go_back();
    }
    
    
    /** 收藏 */
    function co(){
        $this->load->model('lm_goods_mdl');
        //$result      	= $this->lm_co_mdl->select_result(array('user_id' => $this->lmauth->_user['user_id']));
        $sql            = 'select * from lm_goods where goods_id in 
                            (select goods_id from lm_co 
                             where user_id='.$this->lmauth->_user['user_id'].' and cat_id='.$this->area->area_ary->cat_id.')';
        $result         =  $this->lm_goods_mdl->query($sql);
        $data['result']	= $result;        
        $this->load->view('lm_co', $data);
        
    }
    
    /** 收藏ADD */
    function co_add($goods_id = 0){
        
        $goods_id       =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        
        //检查 该会员 最大商品ID  收藏数
        $max_goods_id    =   count($this->lm_co_mdl->select_result(array('user_id' => $this->lmauth->_user['user_id'])));
        
        if($max_goods_id > 20)
        {
            $success    =   '最大收藏数不可大于20！';
            $this->lm_session->set_flashdata('success', $success);
            go_back();
            exit();
        }
        $data   =   array(
                        'goods_id'      => $goods_id,
                        'user_id'       => $this->lmauth->_user['user_id'],
                        'cat_id'        => $this->area->area_ary->cat_id,
                        
                        );
        
        $row    =   $this->lm_co_mdl->select($data);
        if($row)
        {
            $success    =   '该酒店已收藏过！';
            $this->lm_session->set_flashdata('success', $success);   
            go_back();
            exit();         
        }
        $data['create_time'] = time();
        $this->lm_co_mdl->add($data);
        $success    =   '收藏成功！';
        $this->lm_session->set_flashdata('success', $success);
        go_back();
    }
    
    /** 取消收藏   */
    function co_del($goods_id = 0){
        
        $goods_id   =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        $del        =   $this->lm_co_mdl->del(
                                                array(
                                                    'goods_id' => $goods_id,
                                                    'user_id'  => $this->lmauth->_user['user_id'],
                                                    )
                                                
                                                );
        $success    =   $del ? '已取消该收藏' : '取消失败！';
        $this->lm_session->set_flashdata('success', $success);
        go_back();
    }
    
	
	
	
	
	
    
    /** 会员退出  */
    function login_out(){
        $this->lmauth->process_logout();
		redirect('/');
    }
    
    
    
    
    ///////////////以下函数私有，供上面调用////////////////////
    
    //更新时验证
    function _form_validation_update()
	{
       
        $this->form_validation->set_rules('user_name','姓名','min_length[1]|max_length[15]|xss_clean');        
        $this->form_validation->set_rules('sex', '性别', 'trim|min_length[1]|max_length[1]|is_natural|xss_clean');
        $this->form_validation->set_rules('cat_id', '城市', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
        $this->form_validation->set_rules('user_phone', '手机', 'is_natural|min_length[11]|max_length[11]|xss_clean|callback_user_phone_check');
        $this->form_validation->set_rules('nickname', '昵称', 'min_length[1]|max_length[15]|xss_clean'); 
        $this->form_validation->set_rules('address', '地址', 'min_length[3]|max_length[15]|xss_clean'); 
        $this->form_validation->set_rules('zip', '邮编', 'min_length[6]|max_length[6]|is_natural|xss_clean'); 
        $this->form_validation->set_rules('tel', '电话', 'min_length[8]|max_length[20]|alpha_dash|xss_clean'); 
        $this->form_validation->set_rules('qq', 'qq', 'min_length[5]|max_length[18]|is_natural|xss_clean'); 
        $this->form_validation->set_rules('msn', 'msn', 'min_length[3]|max_length[30]|valid_email|xss_clean'); 
        $this->form_validation->set_rules('user_password', '密码', 'min_length[5]|max_length[30]|alpha_dash|matches[user_passwordf]|md5');
        $this->form_validation->set_rules('user_passwordf', '确认密码', 'trim|min_length[5]|max_length[30]');
        
        //$this->form_validation->set_rules('tbxRegisterNickname','验证码不正确','callback_regname|xss_clean');
    }
    
    //回调手机号码
    function user_phone_check($str)
	{
			if($str == '') return true;
            $n = preg_match_all("/13[123456789]{1}\d{8}|15[01235689]\d{8}|188\d{8}/",$str,$array); 
            if($n)
            {
                
                //检测 是否已经设置过手机 , 设置过则TRUE
                $row    =   $this->lm_user_mdl->select_row('user_id, user_phone', array('user_id' => $this->lmauth->_user['user_id']));                
                if(!empty($row->user_phone) || is_numeric($row->user_phone))
                {
                    return true;
                }
                
                //检测手机是否存在
                $row    =   $this->lm_user_mdl->select_row('user_phone', array('user_phone' => $str));
                if($row && $row->user_phone == $str)//库中已存在
                {
                    $this->form_validation->set_message('user_phone_check', '该手机已被注册!');
                    return false;
                }
                
                
                return true;
            }else{
                $this->form_validation->set_message('user_phone_check', '请输入正确的手机号!');
                return false;
            }
            

        return false;
    }
    
    
    //更新数据入库
    function _update(){
        
        $user_name       =   $this->input->post('user_name', TRUE);  //姓名
        $sex             =   $this->input->post('sex', TRUE); 
        $cat_id          =   $this->input->post('cat_id', TRUE); 
        $user_phone      =   $this->input->post('user_phone', TRUE); 
        
        $nickname        =   $this->input->post('nickname', TRUE);   //昵称
        $address         =   $this->input->post('address', TRUE);    //地址
        $zip             =   $this->input->post('zip', TRUE);        //邮编
        $tel             =   $this->input->post('tel', TRUE);        //电话
        $qq              =   $this->input->post('qq', TRUE);         //qq
        $msn             =   $this->input->post('msn', TRUE);        //msn
        
        $user_password   =   $this->input->post('user_password', TRUE);   //password
        
        $data   =   array(
                        'user_name'       =>   $user_name, 
                        'sex'             =>   $sex, 
                        'cat_id'          =>   $cat_id, 
                        'user_phone'      =>   $user_phone,                         
                        'nickname'        =>   $nickname,
                        'address'         =>   $address,
                        'zip'             =>   $zip,
                        'tel'             =>   $tel,
                        'qq'              =>   $qq,
                        'msn'             =>   $msn,
                        'user_password'   =>   $user_password,
                   );
        
        //检查  该会员 是否已经设置手机， 设置了的 则不更新
        $row    =   $this->lm_user_mdl->select_row('user_id, user_phone', array('user_id' => $this->lmauth->_user['user_id']));
        
        if(!empty($row->user_phone) && strlen(intval($row->user_phone)) != 11)
        {
            unset($data['user_phone']);
        }
        
        //密码空的时候不更新， 或者长度不对 也不更新
        if(empty($user_password) || strlen($user_password) !== 32)
        {
            unset($data['user_password']);
        }
		
        if(!$user_name)	unset($data['user_name']);
		if(!$sex)		unset($data['sex']);
		if(!$cat_id)	unset($data['cat_id']);
		if(!$nickname)	unset($data['nickname']);
		if(!$address)	unset($data['address']);
		if(!$zip)		unset($data['zip']);
		if(!$tel)		unset($data['tel']);
		if(!$qq)		unset($data['qq']);
		if(!$msn)		unset($data['msn']);
        
        $row    =   $this->lm_user_mdl->update($data, array('user_id' => $this->lmauth->_user['user_id']));
        
            if($row)
            {   
                $this->lm_session->set_flashdata('success', '更新成功');//更新成功               
            }else
            {
                $this->lm_session->set_flashdata('success', '更新失败！');               
            }
            
            go_back();   
    }
    
    
    /**   从收藏表中  遍历出所有商品，return array */
    function _goods_result($result){
        
        $this->load->model('lm_goods_mdl'); 
        $data   =   array();
        foreach($result as $row)
        {
            $data   = $this->lm_goods_mdl->select($row->goods_id);
            
        }
    }
    
    
    /** 验证订单  */
    function _order_form_validation()
    {
        $this->form_validation->set_rules('goods_name','','required|min_length[1]|max_length[50]|xss_clean');
        $this->form_validation->set_rules('l_price','','required|trim|is_natural|min_length[2]|max_length[5]|xss_clean');
        $this->form_validation->set_rules('h_price','','required|trim|is_natural|min_length[2]|max_length[5]|xss_clean');
        $this->form_validation->set_rules('order_phone','','required|trim|is_natural|min_length[11]|max_length[11]|xss_clean');
        
    }
    
    
    
    
 }



?>