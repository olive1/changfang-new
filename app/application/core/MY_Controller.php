<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 前台父控制器
 *
 * 前台的所有控制器都需要继承这个类
 * 
 * 
 */
class MK_Controller extends CI_Controller {
    
	public function __construct() {
		
		parent::__construct();
    }

}

// ------------------------------------------------------------------------

/**
 * 后台父控制器
 *
 * 后台的所有控制器都需要继承这个类，主要包含验证
 * 
 * 
 */
class MK_Admin_Controller extends CI_Controller {


    public function __construct() {
        
		parent::__construct();
		
		/** 加载验证库 */
		$this->load->library('auth');
		
		/** 检查登陆 */		
		if(!$this->auth->hasLogin())
		{
			redirect('admin/login?ref='.urlencode($this->uri->uri_string()));
		}
		
		/** 加载后台控制器公共库 */
	   	$this->load->library('form_validation');
	   	$this->load->library('user');

		/** 加载后台控制器公共模型 */
		$this->load->model('users_mdl');
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/libraries/MY_Controller.php */