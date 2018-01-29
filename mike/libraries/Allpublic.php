<?php   if(!defined('BASEPATH')) exit('不可以直接访问！');


/**
 * 前台公共数据
 */
class Allpublic{
    
   public  $_data  	=   array();//所有数据	
	
    
   function __construct()
   {
        /** 获取CI句柄 */
		$this->_CI 			= & get_instance();
        
   }
	
   function get_data()
   {
		$this->_CI->load->model('lm_index_mdl');
		$index_row           		=   $this->_CI->lm_index_mdl->select(array('index_id' => 1)); //头部广告
		$foot_row           		=   $this->_CI->lm_index_mdl->select(array('index_id' => 8)); //顶部数据
		$this->_data['index_top']	=	$index_row ? $index_row->index_value	:	false;
		$this->_data['index_foot']	=	$this->_foreach_news($foot_row->index_value);
		
        return $this->_data;
   }
	
	
	
    /** 遍历资讯 返回array */
    function _foreach_news($data)
    {
        $this->_CI->load->model('lm_news_mdl');
		$data   =   $data	?	explode(',' , $data)	:	false;
		if(!$data)	return false;
		
        $_data  =   array(); //存储 供返回
        foreach($data as $news_id)
        {
            $news_id   =   (!empty($news_id) && is_numeric($news_id)) ? substr(intval($news_id), 0, 8) : 0;
            $row       =   $this->_CI->lm_news_mdl->select_where(
                                                'news_id, newstitle, newsimg', 
                                                array('news_id' => $news_id)
                                                    );
            $row    ?   $_data[] = $row : '';
        }
        
        return $_data;
        
    }
	
	/** 资讯分类数据  **/
	
	function get_news_class($news_cla_id = 0)
	{
        
        $this->_CI->load->model('lm_news_class_mdl');
		$news_cla_id   		=   (!empty($news_cla_id)) ? substr(intval($news_cla_id), 0, 8) : 0;
		return $this->_CI->lm_news_class_mdl->select_result(array('news_cla_id' => $news_cla_id), 'news_class_id, news_class_title');
	}
	
    /** 资讯数据 **/
	function get_news($news_class_id = 0)
	{
		$this->_CI->load->model('lm_news_mdl');
		$news_class_id   		=   (!empty($news_class_id)) ? substr(intval($news_class_id), 0, 8) : 0;
		return $this->_CI->lm_news_mdl->select_result(array('news_class_id' => $news_class_id), 'news_id, newstitle');
	}
	
	
	

    
}
?>