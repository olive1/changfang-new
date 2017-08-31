<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 用户会员模型   */
class Lm_auth_class_mdl extends CI_Model{
    
    const   LM_AUTH_CLASS =   'lm_auth_class';   
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $query      =   $this->db->insert(self::LM_AUTH_CLASS,    $data);
        return ($this->db->affected_rows() > 0) ? TRUE : FALSE;   
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::LM_AUTH_CLASS, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_AUTH_CLASS, $data);
        
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }

    
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_AUTH_CLASS);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    
    /** 返回某个行记录--array */
    function select_row_array($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_AUTH_CLASS);   
        return ($query->row_array()) ? $query->row_array() : FALSE;
    }
    
    /** 返回单个字段记录 */
    function select_row($str, $ary){
        
        $this->db->select($str);
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_AUTH_CLASS);
        return($query->row()) ? $query->row() : FALSE;
    }
    
    /** 返回某个组记录 */
    function select_result($ary, $order=''){
        
        $this->db->where($ary);
		if($order) $this->db->order_by($order);
        $query  =   $this->db->get(self::LM_AUTH_CLASS);   
        return ($query->result()) ? $query->result() : FALSE;
    }
	
    function select_result_array($ary, $order=''){
        
        $this->db->where($ary);
		if($order) $this->db->order_by($order);
        $query  =   $this->db->get(self::LM_AUTH_CLASS);   
        return ($query->result_array()) ? $query->result_array() : FALSE;
    }
    
    /** query */
    function query($sql){
        
        $query  =   $this->db->query($sql);
        return ($query->result()) ? $query->result() : FALSE;
    }
    
    function query_row($sql){
        
        $query  =   $this->db->query($sql);
        return $query->row() ? $query->row() : FALSE;
    }
    
    /** query  result_array */
    function query_result_ary($sql){
        
        $query  =   $this->db->query($sql);
        return ($query->result_array()) ? $query->result_array() : FALSE;
    }
    
    /** 返回 记录数 */
    function select_num_rows(){
        $query  =   $this->db->get(self::LM_AUTH_CLASS);   
        return ($query->num_rows() > 0 ) ? $query->num_rows() : 0;
    }
    
    
}

?>