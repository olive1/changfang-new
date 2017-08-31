<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Main extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    function index(){
        
        $ref = $this->input->get('ref');
        $data['ref'] = !empty($ref) ? $ref : 'lm/body';
		
        $this->load->view(LUMN_ADMIN_PATH.'/main', $data);
        
    }
    
}

?>