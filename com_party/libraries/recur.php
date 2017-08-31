<?php   if(!defined('BASEPATH')) exit('你大爷！');


/**
 * 递归.............................
 */
class Recur
{
    
   public  $_data  		=   array();//所有数据
   public  $_list    	=   '';		//存放数据
   public  $_leval  	=   0;		//几层？
   private $_CI;
    
   function __construct()
   {
        /** 获取CI句柄 */
		$this->_CI 			= & get_instance();
   }
   
   
   
   
   
   
	/** 
	*	添加时分类列表。
	*/
	
	function _get_news_class_add($news_cla_id = 0, $data='', $class_id = 0, $b = 0, $bb = '├')
    {
        $space  =   str_repeat($bb,$b);
		$pl		=	$b*10;//paddingleft
        $b++;		
		
        //每次都要在  整个_data数组中查询news_cla_id
        foreach($data as $row)
        {
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->news_cla_id == $news_cla_id)
            {   
			  $this->_list =  $this->_list.'<option value="'.$row->news_class_id.'"';
			  if($class_id && $class_id==$row->news_class_id)  //相同时
			  {
				$this->_list =  $this->_list.' selected ';
			  }
			  
			  $this->_list =  $this->_list.'>';			  
			  $this->_list =  $this->_list.$space.$row->news_class_title;
			  $this->_list =  $this->_list.'</option>';
              $this->_get_news_class_add($row->news_class_id, $data, $class_id, $b);
            }
        }
        
       
    }
   
   
   
   
   
   
   
   
    
	/**根据父类ID 和数据，递归所有子类。news_cla_id父类ID 
	
	*	$bb 分隔符
	*/
	
	function get_news_class($news_cla_id = 0, $data='',$b = 0, $bb = '├')
    {
        $space  =   str_repeat($bb,$b);
        $b++;
		$this->_data = $data;
        //每次都要在  整个_data数组中查询news_cla_id
        foreach($this->_data as $row)
        {
			$this->_leval = 0;
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->news_cla_id == $news_cla_id)
            {   
				$this->_list =  $this->_list.$space.$row->news_class_title.'<br>';  
                
                $this->get_news_class($row->news_class_id, $this->_data, $b);
            }
        }
        
       
    }
	
	
	
	
	function get_news_classxx($news_cla_id = 0, $data='')
    {
        $this->_data = $data;
        //每次都要在  整个_data数组中查询news_cla_id
        foreach($this->_data as $row)
        {
			
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->news_cla_id == $news_cla_id)
            {   
				$this->_list =  $this->_list.'[['.$row->news_class_title.']]<br>';  
                
                $this->get_news_class($row->news_class_id, $this->_data);

            }
        }
        
       
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
   
  
	
	
    

    
}
?>