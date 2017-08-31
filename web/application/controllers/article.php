<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 资讯
 * 
 */
 
 class Article extends Lm_Controller{
    
    function __construct(){
        
        parent::__construct();        
        $this->load->model('lm_news_mdl');
        $this->load->model('lm_news_class_mdl');
    }
    
    /** 分类list */
    function n_list($news_cla_id = 0)
	{
        
        $limit           =  6; //每页6条
        $per_page        =  intval($this->uri->segment(3));
        
        $sql             =  'select news_id, newstitle, newsimg, news_class_id, description, newstime from lm_news ';
		
		$news_cla_id	 =	intval($news_cla_id);
		$data['news_class_row']	=	$this->lm_news_class_mdl->select(array('news_class_id' => $news_cla_id));
		$news_class_id	 =  $this->_get_news_class_id($news_cla_id);
		
        if($news_class_id)//有分类 
        {
        $sql             =  $sql.' where news_class_id in('.$news_class_id.') ';
            $news_class_row =   $this->lm_news_class_mdl->select(array('news_class_id' => $news_class_id));
            $data['news_class_row'] = $news_class_row;
        }
        
        $num_rows        =  $this->lm_news_mdl->query_result_ary($sql); //记录数
        $num_rows        =  $num_rows ? count($num_rows) : 0;
        $sql             =  $sql.' limit '.$per_page.', '.$limit;
		
        $news_result     =   $this->lm_news_mdl->query_result_ary($sql);//得到  查询结果
        
        $data['news_result']=   $news_result;
        $data['num_rows']   =   $num_rows;
        
        $data['cur']        =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url($this->uri->segment(1).'/'.$news_cla_id);
        $this->load->library('pagination');                //加载分页类           
        $config['base_url']             =   $url;          
        $config['total_rows']           =   $num_rows;     //总记录数
        $config['per_page']             =   $limit;        //每页数
        $config['page_query_string']    =   FALSE;         //get形式
       
        $config['prev_link']            =   '上一页';
        $config['next_link']            =   '下一页';
        $config['first_link']           =   '第一页';
        $config['last_link']            =   '最后页';  
        $config['cur_tag_open']         =   '&nbsp;<a class="current">';
        $config['cur_tag_close']        =   '</a>';       
        $config['num_links']            =   4;
        $this->pagination->initialize($config);
        $data['pagination'] =   $this->pagination->create_links();
		$data['detail_link']=	$this->uri->segment(1) ? $this->uri->segment(1).'/detail/' : 'article/detail/';
        $this->load->view('lm_article_list', $data);
        
    }
    
    /**  详细页面  */
    function detail($news_id = 0){
        
        $news_id            =   (!empty($news_id) && is_numeric($news_id)) ? substr(intval($news_id), 0, 5) : 0;
        $news_row           =   $this->lm_news_mdl->select_row_array(array('news_id' => $news_id));//获取数据
		if(!$news_row)
		{
			show_error('该数据不存在！');
			exit();
		}
		
        $data['news_row']   =   $news_row;        
        $news_class_row     =   $this->lm_news_class_mdl->select(array('news_class_id' => $news_row['news_class_id']));
		
		$pre_next			=	$this->_get_pre_next($news_id, $news_row['news_class_id']);
		$data['next_page']	=	$pre_next['next_page'];//下一篇
		$data['pre_page']	=	$pre_next['pre_page'];//上一篇
		
        $data['news_row']['news_class_title'] = $news_class_row ? $news_class_row->news_class_title : '';
		$data['news_row']['news_class_link']  = $this->uri->segment(1).'/'.$news_row['news_class_id'];
        $this->load->view('lm_article_detail', $data);
    }
    
	function _get_news_class_id($news_cla_id)
	{
		$result	 		 =	$this->lm_news_class_mdl->select_result(array('news_cla_id' => $news_cla_id));  //是否有子类
		$news_class_id	 =	$news_cla_id;
		if($result)
		{
			foreach($result as $row)
			{
				$news_class_id	=	 $news_class_id.','. $row->news_class_id;
			}
		}
		
		
		return $news_class_id;
		
	}
    
  
	/** 获取新的url**/
	function _get_url_detail()
	{	
		$uri	=	$this->uri->segment_array();//所有段数 数组
		if(!$uri) return false;
		array_pop($uri); //最后一段弹出
		$url	=	'';  //记录 新的url
		foreach($uri as $value)
		{
			$url=	$url.$value.'/';
		}
		return $url;
	}

	/** 获取上一篇和下一篇  **/
	function _get_pre_next($news_id, $news_class_id)
	{
		$next_page			=	$this->lm_news_mdl->query_row('select news_id,newstitle from lm_news where news_id = (select max(news_id) from lm_news where news_id < '.$news_id.' and news_class_id = '.$news_class_id.')');//下一篇
		$pre_page			=	$this->lm_news_mdl->query_row('select news_id,newstitle from lm_news where news_id = (select min(news_id) from lm_news where news_id > '.$news_id.' and news_class_id = '.$news_class_id.')');//上一篇
		
		$url				=	$this->_get_url_detail();		
		$data['next_page']	=	$next_page	?	'<a href="'.site_url($url.$next_page->news_id).'">'.$next_page->newstitle.'</a>'	:	'没有了';
		$data['pre_page']	=	$pre_page	?	'<a href="'.site_url($url.$pre_page->news_id).'">'.$pre_page->newstitle.'</a>'	:	'没有了';
		
		return $data;
	}


  
    
    
 }



?>