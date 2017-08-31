<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Admin_group extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        $this->load->model('lm_admin_group_mdl');
        
    }
	
	
	
    
    /** 增加  */
    function add(){		
		
		$data['auth_class_result']	=	$this->_auth_class_all();  //取得权限分类
		$data['auth_result']		=	$this->_auth_all();  //取得所有权限 
        
		$this->_form_validation(); //验证表单
        if($this->form_validation->run() == FALSE){
            $this->load->view(LUMN_ADMIN_PATH.'/admin_group_add', $data);            
        }
        else{
            $this->_insert();//入库
        }
        
    }
    
    /** 删除  */
    function del($yhzid = 0){
        
       
        if($yhzid == 0) $yhzid = $this->input->get('yhzid');
        
        $this->_foreach_del($yhzid);
        go_back();
    }
    
    /** 修改 */
    function update($yhzid = 0){
        
        $data['auth_class_result']	=	$this->_auth_class_all();  //取得权限分类
		$data['auth_result']		=	$this->_auth_all();  //取得所有权限 
        
        $yhzid           		 	=   (!empty($yhzid)) ? substr(intval($yhzid), 0, 3) : 0;
        $data['admin_group_row']    = 	$this->lm_admin_group_mdl->select_row_array(array('yhzid' => $yhzid));
        
        $this->_form_validation();
        if($this->form_validation->run() == FALSE)
		{            
            $this->load->view(LUMN_ADMIN_PATH.'/admin_group_add', $data);            
        }else
		{
            //更新
            $this->_update($yhzid);
        }
        
        
    }
    
    
    /** 列表  */
    function n_list()
	{        
        
		$data['admin_group_result']		=	$this->lm_admin_group_mdl->select_result(array());//所有用户组
		/** 以后改进。 这里我遍历大类，再分别检索 属于大类 的权限 */
        $this->load->view(LUMN_ADMIN_PATH.'/admin_group_list', $data);
    }    
    
    
    
    
    
    /////////////以下函数  供上面的方法调用///////////////////////////
   
    /** 表单验证 */
    function _form_validation($id = 0){
        
		$this->form_validation->set_rules('title', '用户组名称', 'required|trim|max_length[80]|xss_clean');
        //$this->form_validation->set_rules('authid_list', '权限', 'required|max_length[500]|xss_clean');
        
    }
    
    /** 验证后入库*/
    function _insert(){        
       
        $authid_list	=	$this->input->post('authid_list', TRUE);
		$authid_list	=	array_unique($authid_list); //过滤重复值
		$authid_list	=	array_filter($authid_list); //过滤空值
		if(!$authid_list)
		{
			$this->session->set_flashdata('success', '请选择权限'); 	
			go_back();
			exit();
		}
		
		$data = array(
                'authid_list' =>  serialize($authid_list),
                'title'       =>  $this->input->post('title', TRUE),
				
                );
                
        $insert_id  =   $this->lm_admin_group_mdl->add($data);
        $success    =   $insert_id ? '添加成功' : '添加失败';
        $this->session->set_flashdata('success', $success); 		
        go_back();
        
    }
    
    /** 更新 入库 */
    function _update( $yhzid = 0 ){
        
		
        $authid_list	=	$this->input->post('authid_list', TRUE);
		$authid_list	=	array_unique($authid_list); //过滤重复值
		$authid_list	=	array_filter($authid_list); //过滤空值
		if(!$authid_list)
		{
			$this->session->set_flashdata('success', '请选择权限'); 	
			go_back();
			exit();
		}
		
		$data = array(
                'authid_list' =>  serialize($authid_list),
                'title'       =>  $this->input->post('title', TRUE),
				
                );
       
        $update_id  =   $this->lm_admin_group_mdl->update($data, array('yhzid' => $yhzid));
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
        $this->load->model('lm_admin_group_class_mdl');
        $i      =   0;
        foreach($data as $row)
        {            
            $news_class_row               =   $this->lm_admin_group_class_mdl->query_row('select news_class_title from lm_admin_group_class where news_class_id ='.intval($row['news_class_id']));
            $data[$i]['news_class_title'] =   $news_class_row ? $news_class_row->news_class_title : '';  //数组加入 news_class_title
            
            $admin_row              =   $this->lm_admin_mdl->query_row('select admin_name from lm_admin where admin_id ='.intval($row['admin_id']));
            $data[$i]['admin_name'] =   $admin_row ? $admin_row->admin_name : '';  //数组加入 admin_name
            
            $i++;
        }
        return $data;
    }
    
    
    /** 遍历删除  */
    function _foreach_del($yhzid)
    {
        $yhzid = is_array($yhzid) ? $yhzid : (array)$yhzid;
        
        foreach($yhzid as $id)
        {
            $del    =   $this->lm_admin_group_mdl->del(array('yhzid = ' => $id));
            
        }
        
        
    }
	
	
	
	/**  获取  权限分类  */
	function _auth_class_all()
	{
		$this->load->model('lm_auth_class_mdl');
		$auth_class_result	=	$this->lm_auth_class_mdl->select_result(array(), 'index_sort asc');
		
		return $auth_class_result;

	}
	
	/**  获取   所有权限  */
	function _auth_all()
	{
		$this->load->model('lm_auth_mdl');
		$auth_result	=	$this->lm_auth_mdl->select_result(array(), 'sort asc');
		
		return $auth_result;

	}
	
    
    
    
}

?>