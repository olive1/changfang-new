<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Users_login_log_mdl extends CI_Model {

	const TBL = 'users_login_log';

	
	/**
     * 构造函数
     *  
     * @access public
     * @return void
     */
    public function __construct()
    {
       parent::__construct();
	   
	   log_message('debug', "Users Model Class Initialized");
    }
	
	
	/**
    * 添加一个用户
    * 
    * @access public
	* @param int - $data 用户信息
    * @return boolean - success/failure
    */	
	public function add($data=array())
	{
		if(!$data) {
		  $data = array(
            'uid'   => '',
            'ip'    =>$this->input->ip_address(),
            'created'   =>time(),

          );
		}
		
		$this->db->insert(self::TBL, $data);
		
		return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	}

}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */