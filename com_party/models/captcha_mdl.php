<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 验证码模型   */
class Captcha_mdl extends CI_Model{
    
    const   CAPTCHA =   'captcha';   
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $query      =   $this->db->insert(self::CAPTCHA,    $data);
        $insert_id  =   ($this->db->affected_rows() ==  1) ? $this->db->insert_id() : 0;
        return  $insert_id  ?   $insert_id  :   FALSE;        
    }
    
    
    /** query  */
    function del_query($sql){
        
        $query = $this->db->query($sql);
        
    }
    
    function querys($sql, $sqlb){
        
        $query = $this->db->query($sql, $sqlb);        
        return $query->row() ? $query->row() : FALSE;
        
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::CAPTCHA, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    

    
    /** 返回单个字段记录 */
    function select_row($str, $ary){
        
        $this->db->select($str);
        $this->db->where($ary);
        $query  =   $this->db->get(self::CAPTCHA);
        return($query->row()) ? $query->row() : FALSE;
    }
    
    
    
}

?>