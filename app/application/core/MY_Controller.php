<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 前端父控制器
 * 
 * 
 */
class MK_App_Controller extends CI_Controller {


    public function __construct() {
        
		parent::__construct();
        $this->verify();//验证基本参数
    }
    
    
    /**
     * 验证基本参数
     *   
     */
    protected function verify()
    {
        //POST类型验证
        if($this->input->method() != 'post')
        {
            response_json(0, '', get_error_code_msg(4000),4000);
        }
        
        //参数验证
        $postdata_config = $this->config->item('postdata');
        $post               = $this->input->post();
        if(array_diff_key($postdata_config, $post))
        {
            response_json(0, '', get_error_code_msg(4003),4003);
        }
        
        if(!in_array($post['version'], $postdata_config['version']))
        {
            $msg    = get_error_code_msg(4003) . 'version';
            response_json(0, '', $msg, 4003);
        }
        
        if(!in_array($post['apptype'], $postdata_config['apptype']))
        {
            $msg    = get_error_code_msg(4003) . 'apptype';
            response_json(0, '', $msg, 4003);
        }
        
        if(!$post['time'] || !$post['sign'])
        {
            $msg    = get_error_code_msg(4003) . 'time, sign';
            response_json(0, '', $msg, 4003);
        }
        
        //签名验证
        $data   = $post;
        unset($data['sign']);
        if($post['sign'] != get_sign($data))
        {
            response_json(0, '', get_error_code_msg(4002), 4002);
        }
        
        
    }
    
}

/**
 * 前端用户父控制器
 *
 * 主要包含用户权限验证
 * 
 * 
 */
class MK_App_User_Controller extends MK_App_Controller {


    public function __construct() {
        
		parent::__construct();
		
		/** 加载验证库 */
		$this->load->library('auth');
		
		/** 检查登陆 */		
		if(!$this->auth->hasLogin())
		{
			redirect('admin/login?ref='.urlencode($this->uri->uri_string()));
		}
		
		/** 加载用户类 */
	   	$this->load->library('yuangong');

		/** 加载后台控制器公共模型 */
		$this->load->model('yuangong_mdl');
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/libraries/MY_Controller.php */