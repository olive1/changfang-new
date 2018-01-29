<?php if(!defined('BASEPATH')) exit('不可以直接访问！');
/**
 * 验证库  -前台 用户管理
 * 检查用户的登入或登出
 */

class Lm_uth
{
	/**
     * 用户
     *
     * @access private
     * @var array
     */
    public $_user = array();
    
    /**
     * 是否已经登录
     * 
     * @access private
     * @var boolean
     */
    private $_hasLogin = NULL;
    

	
	/**
    * CI句柄
    * 
    * @access private
    * @var object
    */
	private $_CI;

	 /**
     * 构造函数
     * 
     * @access public
     * @return void
     */
     
    public function __construct()
    {
        /** 获取CI句柄 */
		$this->_CI = & get_instance();

		$this->_CI->load->model('lm_user_mdl');
		$this->_CI->load->library('lm_session');
        
        //有SESSION时 获取数据过来 解序列 session数组
		$this->_user = unserialize($this->_CI->lm_session->userdata('lm_user'));
		
		log_message('debug', "library Class Initialized");
    }
	
    /**
     * 判断用户是否已经登录
     *
     * @access public
     * @return void
     */
	public function is_login()
	{
		/** 检查session，并与数据库里的数据相匹配 */
        
		if (NULL !== $this->_hasLogin)
		{
            return $this->_hasLogin;
        }
		else //每次都执行这里
		{
			if(!empty($this->_user) && array_key_exists('user_id', $this->_user))
			{
				$user = $this->_CI->lm_user_mdl->select_row_array(array('user_id' => $this->_user['user_id']));//返回该ID的DATA
				
				if($user && $user['token'] == $this->_user['token'])  //判断数据库中的TOKEN是否和 SESSION中的TOKEN相同
				{
					$user['update_time'] = time();//更新登陆时间
					
					$this->_CI->lm_user_mdl->update($user, array('user_id' => $this->_user['user_id']));
					
					return ($this->_hasLogin = TRUE);
				}
			}
			
			return ($this->_hasLogin = FALSE);
		}
	}

	
	 /**
     * 处理用户登出
     * 
     * @access public
     * @return void
     */
	public function process_logout()
	{
		
        $this->_CI->lm_session->sess_destroy();	//销毁SESSION	
		
	}
	
	/**
     * 处理用户登录
     *
     * @access public
     * @param  array $user 用户信息
     * @return boolean
     */
	public function process_login($user)
	{
		/** 获取用户信息 */
		$this->_user = $user;
		
		/** 每次登陆时需要更新的数据 */        
		$this->_user['update_time'] =  now();//返回当前的 Unix 时间戳，根据你的config文件中"time reference"设定返回服务器当前时间或者GMT时间
		
		/** 每登陆一次更新一次token */
		$this->_user['token']       =  md5(now().rand());
        
        /** 更新最后登录IP */
        $this->_user['ip']          =  $this->_CI->input->ip_address();
		
		/** 更新表，如果更新成功则 设置session */
        if($this->_CI->lm_user_mdl->update($this->_user, array('user_id' => $this->_user['user_id'])))
		{
			/** 设置session */
			$this->_set_session();
			$this->_hasLogin = TRUE;
			
			return TRUE;
		}
		
		return FALSE;
	}

	/**
     * 设置session
     *
     * @access private
     * @return void
     */
	private function _set_session() 
	{
		$session_data = array('lm_user' => serialize($this->_user));//序列化当前USER数组
		
		$this->_CI->lm_session->set_userdata($session_data);

	}
    


}

/* End of file lm_auth.php */
/* Location: ./application/libraries/lm_auth.php */
?>