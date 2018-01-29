<?php if(!defined('BASEPATH')) exit('不允许直接访问!');
/**
 * Lumn系统
 * 基于Codeigniter的多用户非开源系统
 * 
 */

/**
 * load类 扩展，添加模板开关
 */
 
 class Lm_Loader extends CI_Loader{
 
	//public $themple = 'default';    //默认模板文件夹名称
	
    
    function __construct(){
        
       parent::__construct();
        
    }
	
	//开启模板路径
	function themple_on($themple = 'default')
	{
		$this->_ci_view_paths = array(APPPATH.'views/'.$themple.'/'	=> TRUE);		
	}
	
	function themple_off()
	{
		//just do nothing;
	}

    function view($view, $vars = array(), $return = FALSE)
    {
        if(false && is_ajax_request())
        {
            //response_json($vars);
        }else{
            return $this->_ci_load(array('_ci_view' => $view, '_ci_vars' => $this->_ci_prepare_view_vars($vars), '_ci_return' => $return));
        }
    }
 
    
  }
?>