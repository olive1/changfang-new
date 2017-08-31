<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Lm_admin_mdl extends CI_Model{
    
    /** 表名 */
    const LM_ADMIN = 'lm_admin';
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加用户add() */
    function add($data){
        
        $this->db->insert(self::LM_ADMIN, $data);        
        return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
        
    }
    
    /** 删除用户 */
    function del($ary)
    {
        $this->db->delete(self::LM_ADMIN, $ary);
        return ($this->db->affected_rows()>0) ? TRUE : FALSE;
    }
    
    /**
     * 根据ID返回 表中的所有DATA
     * admin_id- 管理员ID
     */
     function get_admin_by_id($admin_id){
        
        $data = array();
        
        $this->db->where('admin_id', $admin_id);
        $query = $this->db->get(self::LM_ADMIN);
        
        if($query->num_rows() == 1 ){ //如果查询到1条记录,返回数组
            $data = $query->row_array();
        }
        return $data;
        
     }
    
    
    /** 检查用户名密码  并返回DATA 数据
     * $lm_admin-用户名
     * $lm_password-密码
     */
    
    function validation_admin($admin_name,$admin_password){
        
        $data = FALSE;
        
        $this->db->where('admin_name', $admin_name);
        $query = $this->db->get(self::LM_ADMIN);
        
        if($query->num_rows() == 1){  //如果有1条记录值则
            $data = $query->row_array();
        }
		
        if(!empty($data)){  //判断 DATA 存在
            $data = ($data['admin_password'] == md5($admin_password)) ? $data : FALSE; 
        }
        
        $query->free_result();
        return $data;
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
    
    function update_admin($admin_id, $data, $hashed = TRUE){
        
        if(!$hashed){
            $data['lm_password'] = md5($data['lm_password']);
        }
        $this->db->where('admin_id', $admin_id);
        $this->db->update(self::LM_ADMIN, $data);
        
        return ($this->db->affected_rows()>0) ? TRUE : FALSE;
    } 
    
    
    //返回所有记录
    function a_list(){

        $this->db->select('admin_id, admin_name, admin_nickname, create_time, group');
        return $this->db->get(self::LM_ADMIN)->result();
        
    }
    
    //回调 检查用户名
    function admin_name_checked($admin_name = ''){
        
        $this->db->where('admin_name', $admin_name);
        $query = $this->db->get(self::LM_ADMIN);
        return ($query->num_rows()>0) ? FALSE : TRUE;
        return FALSE;
        
    }
    
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row()) ? $query->row() : FALSE;
    }
	
    /** 选择性字段  返回 row_array*/
    function select_where($sql, $ary='')
    {
        $this->db->select($sql);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row()) ? $query->row_array() : FALSE;
    }
	
    /** 选择性字段  返回 row*/
    function select_where_row($sql, $ary='')
    {
        $this->db->select($sql);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row()) ? $query->row() : FALSE;
    }
	
	
	
    
    function query_row($sql){
        
        $query  =   $this->db->query($sql);
        return $query->row() ? $query->row() : FALSE;
    }
    
	
    /** 返回某个组记录 */
    function select_result($ary=''){
        
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->result()) ? $query->result() : FALSE;
    }
	
    /** 修改 */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_ADMIN, $data);
        
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
	
	
    /** 返回某个行记录--array */
    function select_row_array($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row_array()) ? $query->row_array() : FALSE;
    }
	
	
	
    
    
}

?>