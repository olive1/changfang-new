<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 用户会员模型   */
class Lm_user_mdl extends CI_Model{
    
    const   LM_USER =   'lm_user';   
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $query      =   $this->db->insert(self::LM_USER,    $data);
        $insert_id  =   ($this->db->affected_rows() ==  1) ? $this->db->insert_id() : 0;
        
        $this->db->where('user_id', $insert_id);
        $row        =   $this->db->get(self::LM_USER);
        return  ($row->num_rows() == 1)  ?   $row->row_array()  :   FALSE;        
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::LM_USER, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $ary)
	{
        
        $this->db->where($ary);
        $this->db->update(self::LM_USER, $data);
        
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }

    
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_USER);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    
    /** 返回某个行记录--array */
    function select_row_array($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_USER);   
        return ($query->row_array()) ? $query->row_array() : FALSE;
    }
    
    /** 返回单个字段记录 */
    function select_row($str, $ary){
        
        $this->db->select($str);
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_USER);
        return($query->row()) ? $query->row() : FALSE;
    }
    
    /** 返回某个组记录 */
    function select_result($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_USER);   
        return ($query->result()) ? $query->result() : FALSE;
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
    
    
    /** 返回 记录数 */
    function select_num_rows(){
        $query  =   $this->db->get(self::LM_USER);   
        return ($query->num_rows() > 0 ) ? $query->num_rows() : 0;
    }
    
    
}

?>