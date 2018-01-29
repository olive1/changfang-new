<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 该类用于加载  head, menu, body 框架。 */

class Lm extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        
    }
	
    function header(){
        $data['admin'] = unserialize($this->session->userdata('user'));
        $data['admin_update'] = site_url().'/'.LUMN_ADMIN_PATH.'/admin/update';
		$data['login_out'] = site_url().'/'.LUMN_ADMIN_PATH.'/login/login_out';
        $this->load->view(LUMN_ADMIN_PATH.'/header', $data);
    }
	
	
    function menu(){
        
        $this->load->view(LUMN_ADMIN_PATH.'/menu');
    }
	
    function body(){
        
        $this->load->view(LUMN_ADMIN_PATH.'/body');
    }
    
}

?> 