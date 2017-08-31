<?php if(!defined('BASEPATH')) exit('不可以直接访问！');
/**
 * 后台验证库
 * 检查用户的登入或登出
 * 
 */

class Auth
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
     * 用户组
     *
     * @access public
     * @var array
     */
    public $groups = array(
            'admin'         => 0,
            'manage'		=> 1,
            'edit'      	=> 2
            );
	
	/**
    * CI句柄
    * 
    * @access private
    * @var object
    */
	private $_CI;
	
	
	
	/** 拥有的权限  */
	private $_purview;

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

		$this->_CI->load->model('lm_admin_mdl');
		$this->_CI->load->library('session');
		$this->_user = unserialize($this->_CI->session->userdata('user'));//有SESSION时 获取数据过来 解序列
		
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
		//exit();
        /** 检查session，并与数据库里的数据相匹配 */
        
        /*//AJAX   需要重新配置SESSION    

            $ajax_url       =   $this->_CI->uri->uri_string();    
            $ary            =   explode('/', $ajax_url);
                //需要判断的URL
                $del_img    =   array_search('del_img'  ,   $ary);//ajax 删除图片
                $del_menu   =   array_search('del_menu' ,   $ary);//ajax 删除菜单
            if($del_img || $del_menu)
            {
                //把查询的数据存放成SESSION

                $admin_id   =   array_pop($ary);//获取最后的数字ID
                $admin_id   =   (!empty($admin_id) && is_numeric($admin_id)) ? substr(intval($admin_id), 0, 5) : 0;
                $user_ary   =   $this->_CI->lm_admin_mdl->get_admin_by_id($admin_id);
                $this->process_login($user_ary);//先登陆
            }

        // ajax over*/
        
        
		if (NULL !== $this->_hasLogin)
		{
            return $this->_hasLogin;
        }
		else //每次都执行这里
		{
			if(!empty($this->_user) && NULL !== $this->_user['admin_id'])
			{
				$user = $this->_CI->lm_admin_mdl->get_admin_by_id($this->_user['admin_id']);//返回该ID的DATA
				
				if($user && $user['token'] == $this->_user['token'])  //判断数据库中的TOKEN是否和 SESSION中的TOKEN相同
				{
					$user['update_time'] = time();
					
					$this->_CI->lm_admin_mdl->update_admin($this->_user['admin_id'],$user);
                    
					$this->purview_lm();//检查权限
					return ($this->_hasLogin = TRUE);
				}
			}
			
			return ($this->_hasLogin = FALSE);
		}
	}
	
	 /**
     * 判断用户权限
     *
     * @access 	public
     * @param 	string 	$group 	用户组,1-2-3 
     * @param 	$purview_mdl 管理范围
     * @param   $now_mdl 检查mdl
     * @return 	boolean
     */
     public function exceed($group, $return = false)
	{
		/** 权限验证通过    当前用户组 级别  要小于 等于  传来的级别。  比如 当前是编辑，传来的是超级管理，则不行。 */
        return true;
		
        if(array_key_exists($group, $this->groups) && $this->groups[$this->_user['group']] <= $this->groups[$group]) 
		{
            return TRUE;
        }
		
		/** 权限验证未通过，同时为返回模式 */
		if($return)
		{
			return FALSE;
		}
		
		/** 非返回模式 */
		show_error('禁止访问：你的权限不足');
		return;
	}
    
	

	
	
    
     /** 检查 是否有该表mdl的权限  */
	public function exceed_x($now_mdl = '')
	{
		/** 超级管理员不需要验证 */
        
        
        if($this->_user['group'] == 'admin'){
            
		  return TRUE;
          
		}
        
        if(!empty($now_mdl)){
		    
            // 如果该表 在管理范围内  则TRUE
            if( strpos($this->_user['purview_mdl'], $now_mdl) > 0 ){
                return TRUE;
            }
            else{
                show_error('您没有访问的权限！');
            }
                    
		}

        
		return;
	}
    
    
    
	
	 /**
     * 处理用户登出
     * 
     * @access public
     * @return void
     */
	public function process_logout()
	{
		
        $this->_CI->session->sess_destroy();		
		redirect(LUMN_ADMIN_PATH.'/login');
	}
	
	/**
     * 处理用户登录
     *
     * @access public
     * @param  array $user 用户信息
     * @return boolean
     */
	public function process_login($admin)
	{
		/** 获取用户信息 */
		$this->_user = $admin;
		
		/** 每次登陆时需要更新的数据 */
		$this->_user['update_time'] = now();
		
		/** 每登陆一次更新一次token */
		$this->_user['token'] = md5(now().rand());
		
		/** 更新表，如果更新成功则 设置session */
        if($this->_CI->lm_admin_mdl->update_admin($this->_user['admin_id'], $this->_user))
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
		$session_data = array('user' => serialize($this->_user));
		
		$this->_CI->session->set_userdata($session_data);
	}
    
    /** 根据GROUP返回 名称 */
    function level($group){
        
        switch($group){            
            case    'admin':
                echo    '超级管理员';
                break;                
            case    'manage':
                echo    '管理员';
                break;                
            case    'edit':
                echo    '编辑';
                break;
            default:
                echo    '非法权限。。';                
        }
        
    }
    
	
	
	
	
    
    /** 检查该URI 权限  */
    function purview()
    {
       return true;
	   $uri    =   $this->_CI->uri->segment(2, 0).'/'.$this->_CI->uri->segment(3, 0);//2,3段，如：goods/add
        $purview=   (array)unserialize($this->_user['purview_mdl']); //自己的权限
		
        //($purview);
		
        //默认包含框架 权限
        array_push($purview, 'lm/header', 'lm/menu', 'lm/body', 'main/0');  //框架数组压入 权限内		
        
        /** 超级管理员不需要验证 */        
        if($this->_user['group'] == 'admin') return TRUE;
        
        if(array_search($uri, $purview) !== FALSE)
        {
            return TRUE;
        }
        else
        {
            show_error('您没有访问的权限！');
        }
        
    }
	
	
    /** 检查该URI 权限  */
    function purview_lm()
    {
		/** 超级管理员不需要验证 */ 
		$this->_lm();
        if($this->_user['admin_name'] == 'lm_admin') return TRUE;
		
		$uria    =  $this->_CI->uri->segment(2, 0).'/'.$this->_CI->uri->segment(3, 0);//2,3段，如：goods/add
		$urib	 =	$uria.'/';
        $purview =  $this->_auth_get(); //获取自身权限
		
        //默认包含框架 权限
        array_push($purview, 'lm/header', 'lm/menu', 'lm/body', 'main/0', '0/0/');  //框架数组压入 权限内
        
        
		//权限中包括该url  即有权限
		if(array_search($urib, $purview) !== FALSE || array_search($uria, $purview) !== FALSE)
        {
            return TRUE;
        }
        else
        {
            show_error('您没有访问的权限！');
        }
        
    }
	
	/** 只能修改或删除自己的信息吗？
	 * $ary    查询条件
	 * $mdl   表名
	 * 通过这2个参数，我们即可获得该信息的  发布者ID
	 */
	function is_me($ary, $mdl='')
	{
		/** 超级管理员不需要验证 */        
        if($this->_user['admin_name'] == 'lm_admin') return TRUE;
		
		$ary 	= 	(array)$ary;  //条件
		if(!$ary || !$mdl)
		{
			show_error('条件或表参数不正确！');
			exit();
		}
		
		$purview	=   $this->_purview; //获取自身权限		
		
		if(array_search('update/me/', $purview) !== FALSE)//如果：'只能更新自己权限' 存在的话，检查
		{
			$this->_CI->load->model($mdl);
			$row	 	 =	$this->_CI->$mdl->select($ary);
			$admin_id	 = ($row) ? $row->admin_id : 0;			
			
			if($admin_id == $this->_user['admin_id'] || $admin_id == 1)//信息发布ID 和自己ID是否相同
			{
				return TRUE;
			}
			else
			{
				show_error('只能操作自己发布的信息！');
				exit();
				return FALSE;
			}
			
		}
		
		return TRUE;
	}
	
	function _lm()
	{		

		$lm	=	$this->_CI->session->userdata('lm');
		if(!$lm || $lm != 'open')exit();
		return true;
	}
	
	/**  这是上面的原始版，是直接接收 发布者ID来判断  */
	function is_meyy($admin_id = 0)
	{
		/** 超级管理员不需要验证 */        
        if($this->_user['admin_name'] == 'lm_admin') return TRUE;
		
		$admin_id 	= 	intval($admin_id);  //信息发布者id
		$purview	=   $this->_purview; //获取自身权限		
		
		if(array_search('update/me/', $purview) !== FALSE)//如果：只能更新自己权限的话，检查
		{
			if($admin_id == $this->_user['admin_id'])//信息发布ID 和自己ID是否相同
			{
				return TRUE;
			}
			else
			{
				show_error('只能操作自己发布的信息！');
				exit();
				return FALSE;
			}
			
		}
		
		return TRUE;
	}
	
    
	
	
	
	
	/**  获取自身  用户组权限  */
	function _auth_get()
	{
		$this->_CI->load->model('lm_admin_group_mdl');
		$this->_CI->load->model('lm_auth_mdl');
		
		$yhzid		 =	$this->_user['yhzid'];//用户组ID
		$admin_group = $this->_CI->lm_admin_group_mdl->select_row_array(array('yhzid' => $yhzid));
		$authid_list = (array)unserialize($admin_group['authid_list']);   //权限ID   数组
		
		foreach($authid_list as $authid)
		{
			
			$auth_ary =	$this->_CI->lm_auth_mdl->select_row_array(array('authid' => intval($authid)));
			if($auth_ary) $url_ary[]	=	$auth_ary['url'];
		}
		
		$this->_purview	=	$url_ary;
		return $url_ary;
	}
	

    

}

/* End of file Auth.php */
/* Location: ./application/libraries/Auth.php */
?>