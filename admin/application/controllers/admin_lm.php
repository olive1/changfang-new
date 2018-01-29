<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Admin_lm extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        $this->load->model('lm_admin_mdl', 'lm_admin');
        
    }
    
	
	function index()
	{
	//	echo("===========");
	}
	
	
	/** 修改个人资料  */
	function me()
	{
		//获取个人资料
		$user				=	$this->admin_auth->_user;
		$admin_id			=	$user['admin_id'];		
		$admin_row			=	$this->lm_admin_mdl->select_row_array(array('admin_id' => $admin_id));		
		$data['admin_row']	=	$admin_row;
		
		$this->_form_validation(1); //验证表单
        if($this->form_validation->run() == FALSE){
            $this->load->view(LUMN_ADMIN_PATH.'/admin_me', $data);            
        }
        else{
            $this->_update_me($this->admin_auth->_user['admin_id']);//更新
        }
	}
	
    /** 增加用户  */
    function add()
	{        
        
		$data['admin_group']	=	$this->_admin_group_get(); //获取用户组数据
		
        $this->_form_validation(); //验证表单
        
        if($this->form_validation->run() == FALSE){
            $this->load->view(LUMN_ADMIN_PATH.'/admin_add', $data);            
        }
        else{
            $this->_insert();//入库
        }
        
    }
    
    /** 删除  */
    function del($admin_id = 0){
        
		if($admin_id == 1)
		{
			show_error('你想做什！');
			exit();
		}
        $del    =   $this->lm_admin_mdl->del(array('admin_id = ' => $admin_id, 'admin_id !=' => '1'));
        $result =   $del ? '删除成功！' : '删除失败！';
        $this->session->set_flashdata('success', $result);
        go_back();
    }
    
    /** 修改 */
    function update($admin_id=''){        
        
        $admin_id = (!empty($admin_id)) ? substr(intval($admin_id), 0, 3) : 0;
      
        $admin_row = $this->lm_admin_mdl->select_row_array(array('admin_id' => $admin_id));  //取得用户数据 
        if(!$admin_row)
		{
            show_error('记录不存在或已被删除！');
            exit();
        }        
        
		$data['admin_group']	=	$this->_admin_group_get(); //获取用户组数据
        $data['admin_row'] 		= 	$admin_row;        
        
        $this->_form_validation(1);//验证,注意有参数“1”  表示 更新用户数据
        if($this->form_validation->run() == FALSE)
		{            
            $this->load->view(LUMN_ADMIN_PATH.'/admin_add', $data);            
        }else{            
            //更新
            $this->_update($admin_id);
        }
        
        
    }
    
    
    /** 管理员列表  */
    function a_list(){        
		
		$admin_result   =   $this->lm_admin_mdl->select_result(array());//获取所有用户数据		
		$admin_result	=	$this->_add_admin_group($admin_result);  //加入用户组 名称进来
        
		unset($admin_result[0]);  //不显示超级管理
		
		$data['admin']	=	$admin_result;
        $this->load->view(LUMN_ADMIN_PATH.'/admin_list', $data);
    }    
    
    

    /////////////以下函数  供上面的方法调用///////////////////////////
    
    
    /** 表单验证 */
    function _form_validation($id = 0)
	{        
        
		if($id == 0):   //添加时 才验证 用户名和密码
			$this->form_validation->set_rules('admin_name', '用户名', 'required|trim|min_length[3]|max_length[12]|'.'callback_admin_name_checked');
			$this->form_validation->set_rules('admin_password', '密码', 'required|trim|min_length[3]|matches[admin_passwordf]');
			$this->form_validation->set_rules('admin_passwordf', '确认密码', 'required|trim');
		endif;
		
		if($id > 0): //更新时
			$admin_password		=	$this->input->post('admin_password', TRUE);
			$admin_passwordf	=	$this->input->post('admin_passwordf', TRUE);
			if(!empty($admin_password) || !empty($admin_password))://如果密码不为空时 要验证一下
				$this->form_validation->set_rules('admin_password', '密码', 'trim|min_length[3]|matches[admin_passwordf]');
				$this->form_validation->set_rules('admin_passwordf', '确认密码', 'trim');
			endif;
		endif;
		
        $this->form_validation->set_rules('admin_nickname','max_length[20]|trim');
        $this->form_validation->set_rules('yhzid','required|trim|max_length[3]|is_natural');
        
    }
    
    /** 验证后入库*/
    function _insert(){        
        
        $data = array(
                'admin_name'        =>  $this->input->post('admin_name', TRUE),
                'admin_password'    =>  md5($this->input->post('admin_password', TRUE)),
                'admin_nickname'    =>  $this->input->post('admin_nickname', TRUE),
                'group'             =>  $this->input->post('group', TRUE),
                'purview_mdl'       =>  '',
                'create_time'       =>  time(),
                'update_time'       =>  time(),
                'yhzid'             =>  intval($this->input->post('yhzid', TRUE)),
				'admin_id_class'	=>	$this->auth->_user['admin_id'],
                );
                
        $this->lm_admin_mdl->add($data);
        $this->session->set_flashdata('success', '成功添加一个用户账号');
        
        go_back();
        
    }
    
    /** 更新 入库 */
    function _update( $admin_id = '' ){
        
		if($this->input->post('admin_name', TRUE) == 'lm_admin')
		{
			show_error("你想做什？");
		}
		$admin_password				=	$this->input->post('admin_password', TRUE);
		$data = array(                
                'admin_password'    =>  md5($admin_password),
                'admin_nickname'    =>  $this->input->post('admin_nickname', TRUE),
                'group'             =>  $this->input->post('group', TRUE),
                'purview_mdl'       =>  '',
                'create_time'       =>  time(),
                'update_time'       =>  time(),
                'yhzid'             =>  intval($this->input->post('yhzid', TRUE)),
				'admin_id_class'	=>	$this->admin_auth->_user['admin_id'],
                );
		
		if(!$admin_password)		unset($data['admin_password']);	//不更新空密码
		
        $success	=	$this->lm_admin_mdl->update($data, array('admin_id' => $admin_id));
		$success	=	$success	?	'更新成功'	:	'更新失败';
        $this->session->set_flashdata('success', $success);
        
        go_back();
        
    }
	
	
    /** 更新 个人资料 */
    function _update_me( $admin_id = '' ){
        
		if($this->input->post('admin_name', TRUE) == 'lm_admin')
		{
			show_error("你想做什？");
		}
		$admin_password				=	$this->input->post('admin_password', TRUE);
		$data = array(                
                'admin_password'    =>  md5($admin_password),
                'admin_nickname'    =>  $this->input->post('admin_nickname', TRUE),
                
                );
		
		if(!$admin_password)		unset($data['admin_password']);	//不更新空密码
		
        $success	=	$this->lm_admin_mdl->update($data, array('admin_id' => $admin_id));
		$success	=	$success	?	'更新成功'	:	'更新失败';
        $this->session->set_flashdata('success', $success);
        
        go_back();
        
    }
	
	
    
    /** 回调用户名 唯一 */
    function admin_name_checked($str){
        
        $this->form_validation->set_message('admin_name_checked', '%s 已经存在');
        return $this->lm_admin->admin_name_checked($str);
        
    }
    
    
    function _save($purview_mdl, $group = 'edit'){
        if(!is_array($purview_mdl)) return array();        
        
        if(array_search('goods/add', $purview_mdl) || array_search('goods/update', $purview_mdl)) 
        {
            array_push($purview_mdl, 'goods/add_save');  //商品添加权限，则同时有 添加保存权限 uri
        }
		
        if(array_search('indexdefin/update', $purview_mdl) || array_search('indexdefin/i_list', $purview_mdl)) 
        {
            array_push($purview_mdl, 'indexdefin/upload');  //首页修改 同时有上传权限   
        }
        //echo($this->admin_auth->_user['group']);
        //exit();
        if($group == 'manage') //管理员有删除权限 
        {
            array_push($purview_mdl, 'goods/del_menu');   //菜单 
            array_push($purview_mdl, 'goods/del_img');    //相册 
        }
        
        return $purview_mdl;
    }
    
    /** 获取用户组数据  */
	function _admin_group_get()
	{
		$this->load->model('lm_admin_group_mdl');
		
		return $this->lm_admin_group_mdl->select_result(array());
	}
	
	
	
    /** 用户列表  中  加入用户组名称  */
	function _add_admin_group($admin_result)
	{
		$this->load->model('lm_admin_group_mdl');
		
		$i	=	0;
		foreach($admin_result	as $result)
		{
			$row			=	array();
			$row			=	$this->lm_admin_group_mdl->select_row_array(array('yhzid' => $result->yhzid));
			$title			=	$row['title'];
			$admin_result[$i]->group_title = $title;
			$i++;
		}
		
		return $admin_result;
	}
    
    
	
	
	
	
	
	
	
    
}

?>