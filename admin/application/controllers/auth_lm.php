<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Auth_lm extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        $this->load->model('lm_auth_mdl');
        $this->load->model('lm_auth_class_mdl');
        
    }
	
	
	/** 分类-- 权限  列表  **/
    function class_list($auth_class_id = 0)
	{        
		
		$orderby = 'index_sort asc';
        $data['index_row']  	=   $this->lm_auth_class_mdl->select_result(array(), $orderby);	
        $this->load->view(LUMN_ADMIN_PATH.'/auth_class_list', $data);
    }
	
	
	/** 分类-- 权限   增加  **/
    function class_add()
	{
        
        $this->_form_validation_class();  //验证
		
		if($this->form_validation->run() == FALSE){
            go_back();          
        } 
        else{
            $success=	$this->_insert_class();//入库
        }
        
        $success    =   $success ? '添加成功！' : '添加失败';
        $this->session->set_flashdata('success', $success);
        go_back();        
    }
	
	/** 分类-- 权限   更新  **/
    function class_update()
	{
        
        $data		=   array(
                            'auth_class_id'      =>  $this->input->post('auth_class_id', TRUE),
                            'auth_class_name'    =>  $this->input->post('auth_class_name', TRUE),
							'index_sort'    	 =>  $this->input->post('index_sort', TRUE),
                        );
        
        $success  	=   $this->_class_update($data);
        if($success) $this->session->set_flashdata('success', '更新成功');
        
        go_back();
    }
	
	/** 分类-- 权限   删除  **/
    function class_del($auth_class_id = 0)
	{                
        
        $auth_class_id       =   (!empty($auth_class_id) && is_numeric($auth_class_id)) ? substr(intval($auth_class_id), 0, 3) : 0;
        $auth_class_id_list  =   $this->input->post('class_del_id',  TRUE);//ID列表  		
        $auth_class_id       =   $auth_class_id   ?   $auth_class_id   :   $auth_class_id_list;
		
		//检查子表是否有  该分类数据
		$auth_class_id		 = 	 (array)$auth_class_id;
		
		$result         	 =   $this->_class_del($auth_class_id);
		if($result) 		     $this->session->set_flashdata('success', '删除成功');
        go_back(); 
    }
	/** class  over **/
	
	
	
	
	
	
	
    
    /** 增加  */
    function add(){
        
        $auth_class_result          =   $this->lm_auth_class_mdl->select_result(array());
        $data['auth_class_result']  =   $auth_class_result;
		$data['sess_auth_class_id']	=	$this->session->flashdata('sess_auth_class_id'); //上次添加的分类ID
		//print_r($auth_class_result);
		//exit();
        
        $this->_form_validation(); //验证表单
        if($this->form_validation->run() == FALSE){
            $this->load->view(LUMN_ADMIN_PATH.'/auth_add', $data);            
        }
        else{
            $this->_insert();//入库
        }
        
    }
    
    /** 删除  */
    function del($authid = 0){
        
        $this->auth->exceed('admin');//超级管理员才有的权限
        if($authid == 0) $authid = $this->input->get('authid');
        
        $this->_foreach_del($authid);
        go_back();
    }
    
    /** 修改 */
    function update($authid = 0){
        
        //获取表单数据
        $auth_class_result          =   $this->lm_auth_class_mdl->select_result(array());
        $data['auth_class_result']  =   $auth_class_result;//获取分类
		$data['sess_auth_class_id']	=	$this->session->flashdata('sess_auth_class_id'); //上次添加的分类ID
        
        $authid            	=   (!empty($authid) && is_numeric($authid)) ? substr(intval($authid), 0, 5) : 0;
        $data['auth_row']   = $this->lm_auth_mdl->select_row_array(array('authid' => $authid));
        
        $this->_form_validation();
        if($this->form_validation->run() == FALSE)
		{            
            $this->load->view(LUMN_ADMIN_PATH.'/auth_add', $data);            
        }else
		{
            //更新
            $this->_update($authid);
        }
        
        
    }
    
    
    /** 列表  */
    function n_list()
	{        
        
        $data['auth_class_result']  =   $this->lm_auth_class_mdl->select_result(array(), 'index_sort asc');//获取权限分类
		$data['auth_result']		=	$this->lm_auth_mdl->select_result(array(), 'sort asc');//所有权限
		
		/** 以后改进。 这里我遍历大类，再分别检索哪个引属于大类 */
        $this->load->view(LUMN_ADMIN_PATH.'/auth_list', $data);
    }    
    
    
    
    
    
    /////////////以下函数  供上面的方法调用///////////////////////////
     /** class 验证  */
    function _form_validation_class()
	{     
        $this->form_validation->set_rules('auth_class_name', '名称', 'required|min_length[1]|max_length[80]|xss_clean'); 
    }
	
    /** class 入库  */
    function _insert_class(){
       	
        $data   =   array(
                            'auth_class_name' 	=>  $this->input->post('auth_class_name', TRUE),							
                            );
        return $this->lm_auth_class_mdl->add($data);
        
    }
	
    /** class 更新IDLIST */
    function _class_update($data)
	{        

        $data['auth_class_id']   =   is_array($data['auth_class_id']) ? $data['auth_class_id'] : (array)$data['auth_class_id'];
        foreach($data['auth_class_id'] as $key => $value)
        {
            
            $auth_class_id   =   is_numeric($data['auth_class_id'][$key]) 	? substr(intval($data['auth_class_id'][$key]), 0, 3) 	: 0; //id必须为数字
			$index_sort		 =   is_numeric($data['index_sort'][$key]) 		? substr(intval($data['index_sort'][$key]), 0, 3)  		: 0;
			$auth_class_name =	 $data['auth_class_name'][$key] 			? $data['auth_class_name'][$key] 						: 0;
			
            $_data      =   array(
                                    'auth_class_name'   =>  $auth_class_name,
									'index_sort'  		=>  $index_sort,
                                );

            $this->lm_auth_class_mdl->update($_data, array('auth_class_id' => $auth_class_id));
        }
        return TRUE;
        
    }
	
	
     /** class 删除 */
     function _class_del($auth_class_id)
     {
                 
        foreach($auth_class_id as $id)
        {
			$result =   $this->lm_auth_class_mdl->del(array('auth_class_id'=>intval($id)));
        }
        return $result;
     }
	/** _class  over **/
	
	
	
	
    
    /** 表单验证 */
    function _form_validation($id = 0){
        $this->form_validation->set_rules('auth_class_id', '分类', 'required|trim|max_length[3]|is_natural_no_zero|xss_clean');
        $this->form_validation->set_rules('url', 'url', 'required|trim|min_length[1]|max_length[80]|xss_clean');
        $this->form_validation->set_rules('auth_title', '标题', 'required|trim|min_length[1]|max_length[80]|xss_clean');
		$this->form_validation->set_rules('sort', '标题', 'required|trim|min_length[1]|max_length[3]|is_natural|xss_clean');
    }
    
    /** 验证后入库*/
    function _insert(){        
       
        $auth_class_id	=	$this->input->post('auth_class_id', TRUE);
		$data = array(
                'auth_class_id' =>  $auth_class_id,
                'url'     		=>  $this->input->post('url', TRUE),
				'auth_title' 	=>  $this->input->post('auth_title', TRUE),
				'sort' 			=>  intval($this->input->post('sort', TRUE)),
                );
                
        $insert_id  =   $this->lm_auth_mdl->add($data);
        $success    =   $insert_id ? '添加成功' : '添加失败';
        $this->session->set_flashdata('success', $success); 
		$this->session->set_flashdata('sess_auth_class_id', $auth_class_id); 
        go_back();
        
    }
    
    /** 更新 入库 */
    function _update( $authid = 0 ){
        
        $data = array(
                'auth_class_id' =>  $this->input->post('auth_class_id', TRUE),
                'url'     		=>  $this->input->post('url', TRUE),
                'auth_title' 	=>  $this->input->post('auth_title', TRUE),
				'sort' 			=>  intval($this->input->post('sort', TRUE)),
                );
       
        $update_id  =   $this->lm_auth_mdl->update($data, array('authid' => $authid));
        $success    =   $update_id ? '更新成功' : '更新失败';
        $this->session->set_flashdata('success', $success);        
        go_back();
        
    }

    
    /** 获取图片地址   */
    function _upload()
    {
          $config['upload_path']    = getcwd().'\lm_uploads';
          $config['allowed_types']  = 'gif|jpg|png';
          $config['max_size']       = '1000';
          $config['max_width']      = '1024';
          $config['max_height']     = '768';
          $config['file_name']      = time();

        $this->load->library('upload', $config);
        

          if ( $this->upload->do_upload())
          {
             $data = $this->upload->data();
             return $data['file_name'];
          } 
          
          return FALSE;
    }
    
    /** 列表结果  加入 分类名 */
    function _result_news_class($data)
    {
        $this->load->model('lm_auth_class_mdl');
        $i      =   0;
        foreach($data as $row)
        {            
            $news_class_row               =   $this->lm_auth_class_mdl->query_row('select news_class_title from lm_auth_class where news_class_id ='.intval($row['news_class_id']));
            $data[$i]['news_class_title'] =   $news_class_row ? $news_class_row->news_class_title : '';  //数组加入 news_class_title
            
            $admin_row              =   $this->lm_admin_mdl->query_row('select admin_name from lm_admin where admin_id ='.intval($row['admin_id']));
            $data[$i]['admin_name'] =   $admin_row ? $admin_row->admin_name : '';  //数组加入 admin_name
            
            $i++;
        }
        return $data;
    }
    
    
    /** 遍历删除  */
    function _foreach_del($authid)
    {
        $authid = is_array($authid) ? $authid : (array)$authid;
        
        foreach($authid as $id)
        {
            $del    =   $this->lm_auth_mdl->del(array('authid = ' => $id));
            
        }
        
        
    }
    
    
    
}

?>