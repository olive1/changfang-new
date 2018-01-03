<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * 用户登录控制器
 * @author Mike lu
 */
class Login extends MK_App_Controller {
    
    function __construct()
    {
        $this->is_test    = TRUE;//调试
        parent::__construct();
        $this->load->model("Yuangong_mdl");
        $this->load->library("Auth_app");
    }
    
    /**
     * 登录
     * @param $username
     * @param $password md5
     * 
     */
	public function index()
	{ 
       //$_POST['username']      = '13817999919';
       //$_POST['password']   = '202cb962ac59075b964b07152d234b70';
       
        $username = $this->input->post('username');
        $password = $this->input->post('password');
       
        if((!$username = addslashes(sprintf("%s",$username))) || (!$password = addslashes(sprintf("%s",$password))) )
        {
            response_json(0, '请求参数不正确');
        }
                
        if(!$this->_login_max())
        {				
            response_json(0, '登录次数超出最大值');
        }
        
        
        $user = $this->Yuangong_mdl->get_login($username, $password);
        
        if(!$user || $user['password'] != $password)
        {
            $this->_error_log();
            response_json(0, '账号或密码错误');
        }
        
    	if(!$this->auth_app->process_login($user['id']))
    	{
    		response_json(0, '系统错误');
    	}
        
        $data   = array(
            'uid'       =>  $user['id'],
            'xingming'  =>  $user['xingming'],
            'token'     =>  $user['token_app'],
        );
        response_json(1, $data, '登录成功');
	}
    
    private function _error_log()
    {
        $this->load->model("Yuangong_login_log_error_mdl");
		$ip			= $this->input->ip_address();
		$created	= date("Y-m-d");
        
		$where	= array('ip'=>$ip, 'created'=>$created);
		if($this->Yuangong_login_log_error_mdl->get_row($where))//已存在则更新
		{
			$this->Yuangong_login_log_error_mdl->update_row($where);
            //echo $this->db->last_query();exit;
		}
        else
        {
		     $data = array(
                'ip'            => $ip,
                'num'           => 1,
                'created'       => $created,
             );                
            $this->Yuangong_login_log_error_mdl->create($data);
        }
        
        return;

    }
    
    private function _login_max()
    {
        $this->load->model("Yuangong_login_log_error_mdl");
		$ip			= $this->input->ip_address();
		$created	= date("Y-m-d");
        
		$where	= array('ip'=>$ip, 'created'=>$created);
        $row = $this->Yuangong_login_log_error_mdl->get_row($where);
        if($row && isset($row['num']) && $row['num']> LM_APP_LOGIN_MAX) return false;
        return true;
        
    }
    
	 /**
     * 用户登出wrapper
     * 
     * @access public
     * @return void
     */
	public function logout()
	{
		$this->auth->process_logout();
	}
    
    
    
    /**
     * 修改密码（找回密码）
     * @param password_new 新密码
     * @param $mobile 手机号
     * @param $code   短信码
     * @param $tmpcode模板类型
     * @return  Boolean
     */
    public function forgot_password()
    {
        
        
    }



   
}
