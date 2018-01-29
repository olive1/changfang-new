<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 


/** 订单类 */
class Fabu extends Lm_Admin_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_fabu_x_mdl');

    }
    
    
    /** 更新 状态 */
    function update_xuqiu($fabuid = 0, $status = 0)
	{
        $fabuid	        =   (!empty($fabuid) && is_numeric($fabuid)) ? substr(intval($fabuid), 0, 8) : 0;
        $status         =   (!empty($status) && is_numeric($status)) ? substr(intval($status), 0, 1) : 0;
				
        $row         	=   $this->lm_fabu_x_mdl->select(array('fabuid' => $fabuid));        
		//有订单，并且有人编辑过的时候检查。即：没有人编辑过不检查
		if($row && $row->admin_id)  
        {            
			$this->auth->is_me(array('fabuid'=>$fabuid), 'lm_fabu_x_mdl');//只能更新自己的信息?
        }        
        
        $data           =   array('ver' => $status, 'admin_id' => $this->auth->_user['admin_id']);
        $ary            =   array('fabuid' => $fabuid);        
        $row            =   $this->lm_fabu_x_mdl->update($data, $ary);
        
        go_back(); 
    }
	
	/** 编辑 **/
	function update_adm_xuqiu($fabuid = 0)
	{		
		$data['xuqiu_row']	=	$this->_xuqiu_id($fabuid);//验证该条信息并返回数据
		
		$this->_form_validation_xuqiu();  //验证
		if($this->form_validation->run() == FALSE)
		{
            $this->load->view(LUMN_ADMIN_PATH.'/fabu_x_update', $data);        
        } 
        else
		{
            $this->_update_xuqiu($fabuid);//入库
        }
	}
	
	
    /** 删除 */
    function del($fubuid = 0){        
        
        $fubuid          =   (!empty($fubuid) && is_numeric($fubuid)) ? substr(intval($fubuid), 0, 5) : 0;
        $fubuid_list     =   $this->input->post('fubuid',  TRUE);//ID列表        
        $fubuid          =   $fubuid   ?   $fubuid   :   $fubuid_list;
        
        $result         =   $this->_del($fubuid);
        go_back(); 
    }
	
    
    /** 列表 */
    function xuqiu_list()
	{
        
        $limit   =   10; //每页10条
        $num_rows=  $this->lm_fabu_x_mdl->select_num_rows();
        $per_page=  intval($this->input->get('per_page'));  //获取页数
        $user_id =  intval($this->input->get('user_id'));   //获取会员ID
        
        $sql     =   'select * from lm_fabu_x';
        if($user_id) $sql   =   $sql.' where user_id ='.$user_id;
        $sql     =   $sql.' limit '.$per_page.', '.$limit;        
        $result       		=   $this->lm_fabu_x_mdl->query_result_ary($sql);//得到  所有结果
		
        $result		        =   $result ? $this->_result_goods_user($result) : FALSE;//遍历出 user_name
        $data['result']  	=   $result;
        $data['num_rows']   =   $num_rows; 
        $data['cur']        =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/'.LUMN_ADMIN_PATH.'/fabu/n_list/?';
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
        $this->load->view(LUMN_ADMIN_PATH.'/fabu_x_list', $data);
    } 
    
    
    
    ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
    function _form_validation_xuqiu()
	{       
        $this->form_validation->set_rules('title','标题','required|min_length[5]|max_length[80]|xss_clean');		
    }
	
	
    
   /** 遍历  商品名  和 会员名  return array */
   function _result_goods_user($result)
   {
        
        $this->load->model('lm_user_mdl');
        
        $data   =   $result;
        $i      =   0;
        foreach($result as $row)
        {
            
            $user_row               =   $this->lm_user_mdl->query_row('select user_mail from lm_user where user_id ='.intval($row['user_id']));
            $data[$i]['user_mail']  =   $user_row ? $user_row->user_mail : '';  //数组加入 GOODS_NAME
            
            $admin_row              =   $this->lm_admin_mdl->query_row('select admin_name from lm_admin where admin_id ='.intval($row['admin_id']));
            $data[$i]['admin_name'] =   $admin_row ? $admin_row->admin_name : '';  //数组加入 admin_name
            
            $i++;
        }
        
        return $data;
   }
   
   //** 删除
    function _del($fubuid)
    {
        if(is_array($fubuid))
        {
            
            foreach($fubuid as $id)
            {
                $result =   $this->lm_fabu_x_mdl->del(array('fubuid'=>intval($id)));   
            } 
        }
        else
        {
            $result =   $this->lm_fabu_x_mdl->del(array('fubuid'=>intval($fubuid)));
        }
        return $result;
    }
	
	
	
	//更新数据入库
    function _update_xuqiu($fabuid)
	{
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
                'admin_id'	=>	$this->auth->_user['admin_id'],
				'vertime'   =>  time(),
                );
        
        $row    =   $this->lm_fabu_x_mdl->update($data, array('fabuid' => $fabuid));
        
        $success	=	$row	?	'更新成功！'	:	'更新失败！';
		$this->session->set_flashdata('success', $success);//更新成功
        go_back();
    }
	
	
	
	/** 验证需求id  **/
	function _xuqiu_id($fabuid)
	{
		$fabuid = (!empty($fabuid) && is_numeric($fabuid)) ? substr(intval($fabuid), 0, 8) : 0;
		$data = $this->lm_fabu_x_mdl->select_row_array(array('fabuid' => $fabuid));		
		
		if(!$data)
		{
			show_error('该条信息不存在，请核实！');
			exit();
		}
		return $data;
	}
	
	
   
    
    
}

?>