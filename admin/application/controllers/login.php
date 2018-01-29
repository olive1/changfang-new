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
        $this->load->library('Admin_auth');
        
        /** 载入 辅助类库 */
        $this->load->library('form_validation');
        $this->load->helper('form');
		
		/** 开启模板路径*/
		$this->load->themple_on(LUMN_THEMPLE);
        
        $this->_check_ref();
        
        $this->load->model('lm_admin_mdl');
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
        		
        if($this->admin_auth->is_login()){//已经登陆就直接REF
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
            return;
        }

        /** 表中搜索 用户名 并返回数据 */
        //$this->session->set_userdata('lm', $contents);
        $admin = $this->lm_admin_mdl->validation_admin(
            $this->input->post('admin_name'),
            $this->input->post('admin_password')
        );
        if(!empty($admin)){

            $this->admin_auth->process_login($admin);
            $this->reffer = LUMN_ADMIN_PATH.'/main?ref='.$this->reffer;
            redirect($this->reffer);

        }
        else{ //未找到该用户
            $this->session->set_flashdata('login_error', 'TRUE');//设置 下次 载入页面  的 闪出缓存
            $this->_data['error_string'] = '用户名或密码无效';
            $this->load->view('login', $this->_data);
        }


    }

    
       /** 用户登出   */
        function login_out()
		{            
            $this->admin_auth->process_logout();
			
        }

    public function captcha()
    {
        $this->load->library('captcha');
        $code = $this->captcha->getCaptcha();
        //$this->session->set_userdata('code', $code);
        //$this->session->set_tempdata('captcha', $code, 7200);
        $this->captcha->showImg();
    }


}


?>
