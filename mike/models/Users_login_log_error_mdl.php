<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Users_login_log_error_mdl extends Base_mdl {


	/**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
       parent::__construct();
	   $this->table = 'users_login_error_log';
	   log_message('debug', "Users Model Class Initialized");
    }
	
      
	public function create($data)
	{

		$this->db->insert($this->table, $data);
		if ($this->db->affected_rows() > 0) {
			return isset($data[$this->pk]) ? $data[$this->pk] : $this->db->insert_id();
		}
		else {
			return NULL;
		}
	}


	function update_row($where, $data=array())
	{
		return $this->db->set('num', 'num+1', false)->where($where)->update($this->table);
	}
	

}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */