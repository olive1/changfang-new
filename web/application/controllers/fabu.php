<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 发布
 * 
 */
 
 class Fabu extends Lm_Controller{
    
    function __construct(){
        
        parent::__construct();    
        
        if(!$this->lmauth->is_login())//未登陆，后退
        {
            $this->lm_session->set_flashdata('success', '请先登录！');
            redirect(site_url('/user/login/'));
        }
        
        $this->load->model('lm_fabu_x_mdl');
    }    
    
    	
	
	/** add需求  **/
	function xuqiu_add()
	{
        
		$this->_form_validation_xuqiu();  //验证
		
		if($this->form_validation->run() == FALSE)
		{
            $this->load->view('lm_fabu_x_add');        
        } 
        else
		{
            $this->_insert_xuqiu();//入库
        }
		
	}
	
	/** update需求  **/
	function xuqiu_update($fabuid = 0)
	{
        $data['xuqiu_row']	=	$this->_xuqiu_id($fabuid);//验证该条信息并返回数据
		
		$this->_form_validation_xuqiu();  //验证		
		if($this->form_validation->run() == FALSE)
		{
            $this->load->view('lm_fabu_x_add', $data);        
        } 
        else
		{
            $this->_update_xuqiu($fabuid);//入库
        }
		
	}
	
	
	/** del需求  **/
	function xuqiu_del($fabuid = 0)
	{
        if($fabuid == 0) $fabuid = $this->input->post('fabuid'); 
        
		$this->_foreach_del($fabuid);
        go_back();
	}
	
	
	/** 发布列表  **/
	function xuqiu_list()
	{
		$limit           =  10; //每页10条
        $per_page        =  intval($this->input->get('per_page'));
        $user_id   		 =  $this->lmauth->_user['user_id'];
        $sql             =  'select fabuid, title, ver, fabutime from lm_fabu_x ';        
        $sql             =  $sql.' where user_id = '.$user_id;
        $sql             =  $sql.' limit '.$per_page.', '.$limit;
        
        $result        	 =   $this->lm_fabu_x_mdl->query($sql);//得到  查询条件        
        $data['xuqiu_result']=   $result;
		$num_rows		 	 =   $this->lm_fabu_x_mdl->count_all_results(array('user_id = ' => $user_id));
        
		$data['num_rows']    =   $num_rows;
        $data['cur']         =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/fabu/xuqiu_list/?';
        $this->load->library('pagination');                //加载分页类           
        $config['base_url']             =   $url;          
        $config['total_rows']           =   $num_rows;     //总记录数
        $config['per_page']             =   $limit;        //每页数
        $config['page_query_string']    =   TRUE;          //get形式
       
        $config['prev_link']            =   '上一页';
        $config['next_link']            =   '下一页';
        $config['first_link']           =   '第一页';
        $config['last_link']            =   '最后页';  
        $config['cur_tag_open']         =   '<b>';
        $config['cur_tag_close']        =   '</b>';       
        $config['num_links']            =   4;
        $this->pagination->initialize($config);
        $data['pagination'] =   $this->pagination->create_links();
        $this->load->view('lm_fabu_x_list', $data);
	}
	
	
	
	
    
    ///////////////以下函数私有，供上面调用////////////////////
    
    //更新时验证
    function _form_validation_xuqiu()
	{       
        $this->form_validation->set_rules('title','标题','required|min_length[5]|max_length[80]|xss_clean');
		
		$this->form_validation->set_rules('names', '姓名', 'min_length[1]|max_length[50]|xss_clean');
        $this->form_validation->set_rules('tel', '电话', 'trim|min_length[1]|max_length[18]|xss_clean');
        $this->form_validation->set_rules('phone', '手机', 'is_natural|min_length[11]|max_length[11]|xss_clean|callback_phone_check');
        $this->form_validation->set_rules('email', '邮箱', 'min_length[1]|max_length[19]|valid_email|xss_clean'); 
        $this->form_validation->set_rules('content', '描述', 'min_length[20]|max_length[3000]|xss_clean'); 
        
        //$this->form_validation->set_rules('tbxRegisterNickname','验证码不正确','callback_regname|xss_clean');
    }
    
    //回调手机号码
    function phone_check($str)
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
    
    
	
	
	/** 增加 需求  **/
	function _insert_xuqiu()
	{
		$this->_add_limit();  //限制条数
		$title 	 = $this->input->post('title', TRUE);
		$names 	 = $this->input->post('names', TRUE);
		$tel	 = $this->input->post('tel', TRUE);
		$phone 	 = $this->input->post('phone', TRUE);
		$email 	 = $this->input->post('email', TRUE);
		$content = $this->input->post('content', TRUE);
		
        $data = array(
                'title' 	=>  $title,
                'names'     =>  $names,
                'tel'       =>  $tel,
                'phone'   	=>  $phone,
                'email'     =>  $email,
                'content'   =>  $content,
				'user_id'	=>	$this->lmauth->_user['user_id'],
                'fabutime'  =>  time(),
                );
                
        $insert_id  =   $this->lm_fabu_x_mdl->add($data);
        $success    =   $insert_id ? '添加成功' : '添加失败';
        $this->lm_session->set_flashdata('success', $success);
        go_back();
        
	}
	
	
    //更新数据入库
    function _update_xuqiu($fabuid)
	{
        //审核通过后将不更新
		$row    =   $this->lm_fabu_x_mdl->select_row('', array('fabuid' => $fabuid, 'user_id' => $this->lmauth->_user['user_id']));
        if($row && $row->ver == 1)
		{
			show_error('不可编辑，审核已通过！');
			exit();
		}
		
        $title 	 = $this->input->post('title', TRUE);
		$names 	 = $this->input->post('names', TRUE);
		$tel	 = $this->input->post('tel', TRUE);
		$phone 	 = $this->input->post('phone', TRUE);
		$email 	 = $this->input->post('email', TRUE);
		$content = $this->input->post('content', TRUE);
		
        $data = array(
                'title' 	=>  htmlspecialchars($title),
                'names'     =>  htmlspecialchars($names),
                'tel'       =>  htmlspecialchars($tel),
                'phone'   	=>  $phone,
                'email'     =>  htmlspecialchars($email),
                'content'   =>  htmlspecialchars($content),
                'user_id'	=>	$this->lmauth->_user['user_id'],
                );
        
        $row    =   $this->lm_fabu_x_mdl->update($data, array('fabuid' => $fabuid, 'user_id' => $this->lmauth->_user['user_id']));
        
        $success	=	$row	?	'更新成功！'	:	'更新失败！';
		$this->lm_session->set_flashdata('success', $success);//更新成功
        go_back();
    }
	
	
	
    /** 遍历删除  */
    function _foreach_del($fabuid)
    {
        $fabuid = is_array($fabuid) ? $fabuid : (array)$fabuid;
        
        foreach($fabuid as $id)
        {            
			$nid	=	0;
			$nid	=	$id ? substr(intval($id), 0, 8) : 0;
			
			//该记录  如果已经审核通过，则不可以删除！
			if($this->_is_ver(array('fabuid' => $nid, 'user_id' => $this->lmauth->_user['user_id'])))continue;
			
			$del    =   $this->lm_fabu_x_mdl->del(array('fabuid' => $nid, 'user_id' => $this->lmauth->_user['user_id']));            
        }
        
        
    }
	
    

    
    /** 验证需求id  **/
	function _xuqiu_id($fabuid)
	{
		$fabuid = (!empty($fabuid) && is_numeric($fabuid)) ? substr(intval($fabuid), 0, 8) : 0;
		$data = $this->lm_fabu_x_mdl->select_row_array(array('fabuid' => $fabuid, 'user_id' => $this->lmauth->_user['user_id']));		
		
		if(!$data)
		{
			show_error('该条信息不存在，请核实！');
			exit();
		}
		return $data;
	}
	
	/** 已审核 则返回true    **/
	function _is_ver($ary)
	{
		
		$data = $this->lm_fabu_x_mdl->select($ary);		
		
		if($data && $data->ver == 1)  //审核通过则返回
		{
			return TRUE;
		}
		return FALSE;
	}
	
	
	/** 每日发布限制  **/
	function _add_limit()
	{
		$thisday	=	date('Ymd',time());//今天
		$user_id	=	$this->lmauth->_user['user_id'];//当前用户
		//查询 当前用户 今天的所有发布数据 个数
		$sql		=	"select count(*) as count from lm_fabu_x where user_id = ".$user_id." and FROM_UNIXTIME(fabutime, '%Y%m%d') = ".$thisday;
		
		$row		=	$this->lm_fabu_x_mdl->query_row($sql);
		
		if($row->count >= LUMN_fabu_x_limit && LUMN_fabu_x_limit)
		{
			show_error('每天最多只可发布'.LUMN_fabu_x_limit.'条信息！');
			exit();
		}
		return true;
	}
	
	
	
	
	
	
    
 }



?>