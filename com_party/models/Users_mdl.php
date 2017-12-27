<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Users_mdl extends CI_Model {

	const TBL = 'users';
	
	/**
     * 标识用户的唯一键：{"name"|"screenName"|"mail"}
     *  
     * @access private
     * @var array
     */
	private $_unique_key = array('name', 'screenName', 'mail');
	
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
     * 获取单个用户信息
     * 
     * @access public
	 * @param int $uid 用户id
     * @return array - 用户信息
     */
	public function get_user_by_id($uid)
	{
		$data = array();
		
		$this->db->select('*')->from(self::TBL)->where('uid', $uid)->limit(1);
		$query = $this->db->get();
		if($query->num_rows() == 1)
		{
			$data = $query->row_array();
		}
		$query->free_result();
		
		return $data;
	}

	/**
     * 获取所有用户信息
     * 
     * @access public
     * @return array - 用户信息
     */
	public function get_users()
	{
		return $this->db->get(self::TBL);
	}

	/**
     * 删除一个用户
     * 
     * @access public
	 * @param int - $uid 用户id
     * @return boolean - success/failure
     */
	public function remove_user($uid)
	{
		$this->db->delete(self::TBL, array('uid' => intval($uid))); 
		
		return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	}
	
	/**
    * 添加一个用户
    * 
    * @access public
	* @param int - $data 用户信息
    * @return boolean - success/failure
    */	
	public function add_user($data)
	{
		$data['password'] = Common::do_hash($data['password']);
		
		$this->db->insert(self::TBL, $data);
		
		return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	}

	/**
    * 修改用户信息
    * 
    * @access public
	* @param int - $uid 用户ID
	* @param int - $data 用户信息
	* @param int - $cipher_password 密码是否hash	
    * @return boolean - success/failure
    */	
	public function update_user($uid, $data, $hashed = TRUE)
	{
		if(!$hashed)
		{
		  $data['password'] = Common::do_hash($data['password']);
		}
		
		$this->db->where('uid', intval($uid));
		$this->db->update(self::TBL, $data);
		
		return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	}

	/**
    * 检查是否存在相同{用户名/昵称/邮箱}
    * 
    * @access public
	* @param int - $key {name,screenName,mail}
	* @param int - $value {用户名/昵称/邮箱}的值
	* @param int - $exclude_uid 需要排除的uid
    * @return boolean - success/failure
    */	
	public function check_exist($key = 'name',$value = '', $exclude_uid = 0)
	{
		if(in_array($key, $this->_unique_key) && !empty($value))
		{
			//fix issue 2
			$this->db->select('uid')->from(self::TBL)->where($key, $value);
			
			if(!empty($exclude_uid) && is_numeric($exclude_uid))
			{
				$this->db->where('uid <>', $exclude_uid);	
			}
			
			$query = $this->db->get();
			$num = $query->num_rows();
			
			$query->free_result();
			
			return ($num > 0) ? TRUE : FALSE;
		}
		
		return FALSE;		
	}
	
	/**
    * 检查用户是否通过验证
    * 
    * @access public
	* @param string - $name 用户名
	* @param string - $password 密码
    * @return mixed - FALSE/uid
    */	
	public function validate_user($username, $password)
	{
		$data = FALSE;
		
		$this->db->where('name', $username);
		$query = $this->db->get(self::TBL);
		
		if($query->num_rows() == 1)
        {
            $data = $query->row_array();
        }
      		
		if(!empty($data))
		{
		     $this->load->library("Common");
			 $data = (Common::hash_Validate($password, $data['password'])) ? $data : FALSE;
		}
		
		$query->free_result();
		
		return $data;
	}

}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */