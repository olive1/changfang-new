<?php   if(!defined('BASEPATH')) exit('不可以直接访问！');


/**
 * 这个类他妈的  主要是判断区域
 * 根据区域进行筛选出  子地区及 相关服务项目
 */
class Area{
    
    public  $_data  	=   array();//所有数据	
	public  $_data_ary 	=   array();//所有数据	
    public  $_list  	=   '';//存储数据
    public  $area_ary 	=   array();//默认  是上海的ID行 area_ary['cat_id']
    public  $cat_id_ary =   array();  //存储子ID数组
    
    private $cat_ary    =   array('cat_a', 'cat_b', 'cat_c', 'cat_d');//各分类对应 选择名称 $cat_ary[0]
    private $dep        =   0;  //递归层次
    
    
    
   function __construct(){
        /** 获取CI句柄 */
		$this->_CI 			= & get_instance();
		$this->_CI->load->model('lm_category_mdl');
        $this->_data 		=   $this->_CI->lm_category_mdl->a_list();  //获取所有数据
		//$this->_data_ary 	=   $this->_CI->lm_category_mdl->select_result_array();  //获取所有数据
		        
        //根据二级域名返回 area信息
        $this->area_ary =   $this->_area_ary();
   }
   
   /**
    * 返回地区 array
    * 域名参数
    */
   function _area_ary(){
        
        $keywords=  $this->get_url();//获取二级域名段
        $ary    =   $this->_CI->lm_category_mdl->select(array('keywords' => $keywords));
        if(!$ary )//没记录就 用上海的
        {
            $ary    =   $this->_CI->lm_category_mdl->select(array('keywords' => 'shanghai'));
        }
       
        return $ary;
   }
   
   function get_url(){
    
        $url    =   $_SERVER['HTTP_HOST'];
        $url    =   explode('.', $url);
        return $url[0] ? $url[0] : 'shanghai';
        
   }
   
   
       /** 
     * 递归所有城市
     * $parent_id      遍历的父ID
     * $leval          层级
     * $bb      分隔符
     * $select  选中ID则SELECTED,用于查询
     * 
        */
        
    function all_city($parent_id = 0, $leval = 0)
    {
        
        //每次都要在  整个_data数组中查询parent_id
        foreach($this->_data as $row)
        {
            if($this->dep == $leval) break;
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->parent_id == $parent_id)
            {       
                if($this->dep == 0)
                {
                    $this->_list =  $this->_list.
                                    '<li>                            
                                    <span class="t_label"><em>'.$row->cat_name.'</em></span>
                                    ';  
                }
                
                if($this->dep == 1)
                {
                    $this->_list =  $this->_list.
                                    '
                                    <a href="<?php echo(site_url()); ?>" >'.$row->cat_name.'</a>
                                    ';  
                }
                
                if($this->dep == 0)
                {
                    $this->_list =  $this->_list.'</li>';  
                }
                 
                
                //判断   当前的 城市ID    是否等于某个城市，则选中。
                if($this->area_ary->cat_id == $row->parent_id)
                {
                    $this->_list =  $this->_list.
                                    '
                                    select;
                                    ';
                }      
               $this->all_city($row->cat_id, $leval);

            }
        }
        
        if($this->_array_search($parent_id, $this->_data)){
            $this->dep++;//递归层次
        }

    }
   
   
   
   /** 写个垃圾
    * 根据父ID 所有子记录数组
    * 
    */
   function _cat_id_ary($parent_id, $b=0)
   {    
		$b++;
		foreach($this->_data as $row)
		{
			   if($row->parent_id == $parent_id)
			   {
				$this->cat_id_ary[]    = $row;
				
				$this->_cat_id_ary($row->cat_id, $b);
			   } 
		}
    
   }
   
   function _cat_id_ary_ary($parent_id, $b=0)
   {    
		$b++;
		foreach($this->_data_ary as $row)
		{
			   if($row['parent_id'] == $parent_id)
			   {
				$this->cat_id_ary[]    = $row;
				
				$this->_cat_id_ary($row['cat_id'], $b);
			   } 
		}
    
   }
   
   
   
   /**
    * 返回子ID
    * 一维数组
    */
    function _down_id_ary($parent_id){
        
        $ary =  array();
        foreach($this->_data as $row)
        {
               if($row->parent_id == $parent_id)
               {            
                    $ary[]    = $row->cat_id;
               } 
        }
        return $ary;
        
    }
   
   
   
   
   
       /** 
     * 后台商品添加时的分类
     * 递归所有-用于add 增加时调用
     * $id      遍历的父ID
     * $b       分隔符数字
     * $bb      分隔符
     * $select  选中ID则SELECTED,用于查询
     * 
        */
        
    function lm_goods_add($parent_id = 0, $b = 0, $bb = '', $select = 0)
    {
        
        //每次都要在  整个_data数组中查询parent_id
        foreach($this->_data as $row)
        {
            
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->parent_id == $parent_id)
            {               
                
               if($this->_array_search($row->cat_id, $this->_data))//检索  是否还有父ID，有就可以click
               {
                    
                    if($this->dep  >  0) $this->_list =  $this->_list.'<br>';
                    $this->_list =  $this->_list.$row->cat_name.'：';
               }
               else{                    
                    $this->_list =  $this->_list.
                                    '
                                    <input type="radio" value="'.$row->cat_id.'" name="'.$this->cat_ary[$this->dep].'">						        
                                    '
                                    .$row->cat_name.$b; 
                       
                    //if(fmod($b, 9)) $this->_list =  $this->_list.'<br>';                                
                    $b++;
               }
               $this->lm_goods_add($row->cat_id, $b, '', $select);

            }
        }
        
        
        
        if($this->_array_search($parent_id, $this->_data)){
            $this->dep++;//递归层次
        }
        
        
    }
   
    /** 
     * 检索数组中是否存在某个值
     * return BOLUN    
    */
    function _array_search($value, $data)
    {
        foreach($data as $row)
        {
           if($row->parent_id == $value)
           {
            return TRUE;
           } 
        }
        return FALSE;
    }
   


    /** 
     * 核心方法
     * 递归所有-用于add 增加时调用
     * $id      遍历的父ID
     * $b       分隔符数字
     * $bb      分隔符
     * $select  选中ID则SELECTED,用于查询
     * 
        */
        
    function _data_list($parent_id = 0, $b = 0, $bb = '', $select = 0)
    {

        //生成 $b个 符号($bb))
        $space  =   str_repeat($bb,$b);
        $b++;
        
        //每次都要在  整个_data数组中查询parent_id
        foreach($this->_data as $row)
        {
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->parent_id == $parent_id)
            {
                /**
                $this->_list =  $this->_list.
                                '
                                <option value="'.$row->cat_id.'"
                                '.$space.$row->cat_name.eval($bb).'                                
                                </option>
                                '; 
                */
                    $this->_list =  $this->_list.eval($bb);
                           
                $this->_data_list($row->cat_id, $b, '', $select);
            }
        }
        
    }
    
    
    
    /**
     * 根据 ID 返回这行
     * $cat_id
     * return array;
     */
    function select_row($cat_id = 0)
    {
        foreach($this->_data as $row)
        {
            if($row->cat_id ==  $cat_id)
            {
                return  $row;
            }
        }
        
        return FALSE;
    }
    
    /**
     * 根据 父ID 返回所有下一级数据。
     * $cat_id
     * return array;
     */
    function select_result($cat_id = 0)
    {
        $data	=	array();
		foreach($this->_data as $row)
        {
            if($row->parent_id ==  $cat_id)
            {
                $data[] = $row;
            }
        }
        
        return $data;
    }
	
	
	
	
    

    
}
?>