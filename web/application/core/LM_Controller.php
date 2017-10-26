<?php if(!defined('BASEPATH')) exit('不允许直接访问!');
/**
 * Lumn系统
 * 基于Codeigniter的多用户非开源系统
 * 
 */

/**
 * Lumn前台 父控制器
 */
 class Lm_Controller extends CI_Controller{
    
    function __construct(){
        
        parent::__construct();

        /** 加载地区库 */
        $this->load->library('Area');
        
        /** 加载用户验证 */
        $this->load->library('lmauth');
        
        /** 加载原生SESSION */
        $this->load->library('lm_session');
        
        /** 加载后台表单库 */
        $this->load->library('form_validation');
		
		/** 加载公共部分数据 */
		$this->load->library('allpublic');
        
		/** 开启模板路径*/
		$this->load->themple_on(LUMN_THEMPLE);
	
    }
    
 }
 
 
 
 /**
  * Lumn后台父控制器包含管理用户 验证
  */
  
  class Lm_Admin_Controller extends CI_Controller{
    
    function __construct(){
        
        parent::__construct();
		
		/** 开启模板路径*/
		$this->load->themple_on(LUMN_THEMPLE);
        
        /** 加载SESSION */
        $this->load->library('session');
        
        /** 加载验证库 */
        $this->load->library('Auth');
        
        /** 加载地区库 */
        $this->load->library('Area');
        
        /** 检查登录 */
        if(!$this->auth->is_login()){
            redirect(LUMN_ADMIN_PATH.'/login?ref='.urlencode($this->uri->uri_string()));//（%）后跟两位十六进制数  reffer
        }       
       
        
        /** 加载后台表单库 */
        $this->load->library('form_validation');
		
		

        
        
    }
    
  }
?>