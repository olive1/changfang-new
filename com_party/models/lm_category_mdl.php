<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 总分类模型   */
class Lm_category_mdl extends CI_Model{
    
    const   LM_CATEGORY =   'lm_category';
    public  $lists      =   '';//存储
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $this->db->insert(self::LM_CATEGORY,    $data);
        return  ($this->db->affected_rows() ==  1)  ?   $this->db->insert_id()  :   FALSE;        
    }
    
    /** 删除  */
    function del($cat_id){
        
        $this->db->delete(self::LM_CATEGORY, array('cat_id' => $cat_id));
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $cat_id){
        
        $this->db->where('cat_id', $cat_id);
        $this->db->update(self::LM_CATEGORY, $data);
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
        
    /** 返回所有 */
    function a_list(){        
        
        $this->db->order_by('order_id', 'asc');
        return $this->db->get(self::LM_CATEGORY)->result();
    }
    
    /** 返回某个ID行记录 */
    function select_id($cat_id){
        
        $this->db->where('cat_id', $cat_id);
        $query  =   $this->db->get(self::LM_CATEGORY);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    /** 返回某个组记录 */
    function select_result($ary = '' ){
        
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_CATEGORY);   
        return ($query->result()) ? $query->result() : FALSE;
    }
	
    /** 返回某个组记录 */
    function select_result_array($ary = '' ){
        
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_CATEGORY);   
        return ($query->result_array()) ? $query->result_array() : FALSE;
    }
    
    /** 
     * 递归所有
     * $id      遍历的父ID
     * $b       分隔符数字
     * $bb      分隔符
     * $select  选中ID则SELECTED
     * 
        */
	function all_list($parent_id=0, $b=0, $bb='├', $select=0){
	   
		$space=str_repeat($bb,$b);
		$b++;
		if($b==1)$this->lists =   '';
        
        $this->db->select('cat_id,  parent_id,  cat_name');
        $this->db->where('parent_id', $parent_id);        
        $query  =   $this->db->get(self::LM_CATEGORY);

		foreach($query->result() as $row){
		  
			$this->lists =   $this->lists.'<option value='.$row->cat_id;
				if($row->cat_id == $select)$this->lists = $this->lists.' selected ';
			$this->lists =   $this->lists.'>'.$space.$row->cat_name.'</option>';
			$this->all_list($row->cat_id, $b);
            
		}
        
	}  
    
    
    /** 返回某个行记录 */
    function select($ary='', $str='')
	{        
        if($ary)$this->db->where($ary);
		if($str)$this->db->select($str);
        $query  =   $this->db->get(self::LM_CATEGORY);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    












    //垃圾
    function all(){
        
        $this->db->select('cat_id,  parent_id,  cat_name');
        $query  =   $this->db->get(self::LM_CATEGORY);

        foreach($query->result() as $row){
            //$this->arr[]    =   array($row->cat_id, $row->parent_id, $row->cat_name);
        }
        
       //$this->fenlei(0, $this->arr);
    }
    
      function fenlei($f_id = 0, $arr){   
      
          for($i=0; $i< count($arr); $i++){   
            
            if($this->arr[$i][1] == $f_id){ 
                
                //echo $this->arr[$i][2]."< br>"; 
                //$this->fenlei($this->arr[$i][0], $this->arr[$i]); 
             
             }  
             
          }
          
       }
     //垃圾over
    
}

?>