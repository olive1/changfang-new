<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Users_update_log_mdl extends Base_mdl {


	/**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
       parent::__construct();
	   $this->table = 'users_update_log';
	   log_message('debug', "Users Model Class Initialized");
    }
	
	

}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */