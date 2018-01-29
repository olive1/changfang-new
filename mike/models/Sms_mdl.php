<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Sms_md extends Base_mdl {

	/**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
       parent::__construct();
	   $this->table = 'sms';
	   log_message('debug', "sms Model Class Initialized");
    }
	
	



}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */