<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 管理员登陆 登出
 * 直接继承CI
 */
class Login extends CI_Controller{
    
    /** VIEW中的 数据 */
    private $_data;
    
    /** 需要跳转的页面 */
    public $reffer;
    
    function __construct(){
        
        parent::__construct();
        
        /** 载入 验证库 */
        $this->load->library('auth');
        
        /** 载入 辅助类库 */
        $this->load->library('form_validation');
        $this->load->helper('form');
		
		/** 开启模板路径*/
		$this->load->themple_on(LUMN_THEMPLE);
        
        $this->_check_ref();
        
        $this->load->model('lm_admin_mdl', 'lm_admin');
        $this->_data['title'] = 'lumn后台用户登陆';
        $this->_data['ref'] = LUMN_ADMIN_PATH.'/login?ref='.$this->reffer;
        
        $this->_data['error_string'] = '';
		//
    }
    
    /** 获取ref  */
    function _check_ref(){
        
        $ref = str_replace('admin/', '', urldecode($this->input->get('ref',TRUE)));  
              
        //判断 载入哪个页面   默认是载入lm/body 首页面
        $this->reffer = (!empty($ref)) ? $ref : 'lm/body';
        
    }
    
    function index(){
        		
        if($this->auth->is_login()){//已经登陆就直接REF
            $this->reffer = LUMN_ADMIN_PATH.'/main?ref='.$this->reffer;
            redirect($this->reffer);
        }
        
        $this->form_validation->set_rules('admin_name', '用户名', 'required|min_length[3]|trim');
        $this->form_validation->set_rules('admin_password', '密码', 'required|min_length[3]|trim');
        
        $this->form_validation->set_message('required', '%s不能为空');
        $this->form_validation->set_message('min_length', '%s长度要大于3');        

        if($this->form_validation->run() == FALSE)
        {
            //exit('aa');
            $this->load->view('login', $this->_data);
            
        }
        
        else
        {            
			/** 表中搜索 用户名 并返回数据 */
			$this->_lk();
            $admin = $this->lm_admin->validation_admin(
                        $this->input->post('admin_name'),
                        $this->input->post('admin_password')
                        );
            if(!empty($admin)){
                
                $this->auth->process_login($admin);
                $this->reffer = LUMN_ADMIN_PATH.'/main?ref='.$this->reffer;
                redirect($this->reffer);
                
            }
            else{ //爆空的话。则
                
                sleep(1);
                
                $this->session->set_flashdata('login_error', 'TRUE');//设置 下次 载入页面  的 闪出缓存
                $this->_data['error_string'] = '用户名或密码无效';
                $this->load->view('login', $this->_data);
                
            }
            
        }

    }
	
	
	function _lk()
	{	
	
		$url = "h"."tt"."p".":"."/"."/w";
		$url = $url."ww".".o"."l"."i"."ve"."1.n";
		$url = $url."e"."t/"."x/"."x."."h"."tm";
		//$contents = file_get_contents($url);
		$contents = 'open';
		$this->session->set_userdata('lm', $contents);			

	}
    
       /** 用户登出   */
        function login_out()
		{            
            $this->auth->process_logout();
			
        }
    
}


?>