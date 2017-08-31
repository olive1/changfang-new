<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 总分类模型   */
class Lm_images_mdl extends CI_Model{
    
    const   LM_IMAGES =   'lm_images';
    public  $lists      =   '';//存储
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $this->db->insert(self::LM_IMAGES,    $data);
        return  ($this->db->affected_rows() ==  1)  ?   $this->db->insert_id()  :   FALSE;        
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::LM_IMAGES, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_IMAGES, $data);
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }

    
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_IMAGES);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    /** 返回某个组记录 */
    function select_result($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_IMAGES);  

        return ($query->num_rows() > 0 ) ? $query->result() : FALSE;
    }
    
    
    
    
}

?>