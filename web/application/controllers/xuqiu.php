<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 资讯
 * 
 */
 
 class Xuqiu extends Lm_Controller{
    
    function __construct(){
        
        parent::__construct();        
        $this->load->model('lm_fabu_x_mdl');
    }
    
    /** 分类list */
    function xuqiu_list()
	{
		$limit           =  10; //每页10条
        $per_page        =  intval($this->input->get('per_page'));
        $user_id   		 =  $this->lmauth->_user['user_id'];
        $sql             =  'select fabuid, title, ver, content, fabutime from lm_fabu_x ';        
        $sql             =  $sql.' where ver = 1';
        $sql             =  $sql.' limit '.$per_page.', '.$limit;
        
        $result        	 =   $this->lm_fabu_x_mdl->query_result_ary($sql);//得到  查询条件 
		
        $data['xuqiu_result']=   $result;
		$num_rows		 	 =   $this->lm_fabu_x_mdl->count_all_results(array('ver = ' => 1));
        
		$data['num_rows']    =   $num_rows;
        $data['cur']         =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/xuqiu/xuqiu_list/?';
        $this->load->library('pagination');                //加载分页类           
        $config['base_url']             =   $url;          
        $config['total_rows']           =   $num_rows;     //总记录数
        $config['per_page']             =   $limit;        //每页数
        $config['page_query_string']    =   TRUE;          //get形式
       
        $config['prev_link']            =   '上一页';
        $config['next_link']            =   '下一页';
        $config['first_link']           =   '第一页';
        $config['last_link']            =   '最后页';  
        $config['cur_tag_open']         =   '<b>';
        $config['cur_tag_close']        =   '</b>';       
        $config['num_links']            =   4;
        $this->pagination->initialize($config);
        $data['pagination'] =   $this->pagination->create_links();
        $this->load->view('lm_xuqiu_list', $data);
	}
	
	
    
    /**  详细页面  */
    function xuqiu_detail($fabuid = 0){
        
        $data['xuqiu_row']	=	$this->_xuqiu_id($fabuid);//验证该条信息并返回数据
		
		$pre_next			=	$this->_get_pre_next($fabuid);
		$data['next_page']	=	$pre_next['next_page'];//下一篇
		$data['pre_page']	=	$pre_next['pre_page'];//上一篇
		
        $this->load->view('lm_xuqiu_detail', $data);
    }
	
	
	
	
	/** 验证需求id  **/
	function _xuqiu_id($fabuid)
	{
		$fabuid = (!empty($fabuid) && is_numeric($fabuid)) ? substr(intval($fabuid), 0, 8) : 0;
		$data = $this->lm_fabu_x_mdl->select_row_array(array('fabuid' => $fabuid, 'ver' => 1));		
		
		if(!$data)
		{
			show_error('该条信息不存在，请核实！');
			exit();
		}
		return $data;
	}
	
	

	/** 获取上一篇和下一篇  **/
	function _get_pre_next($fabuid)
	{
		$next_page			=	$this->lm_fabu_x_mdl->query_row('select fabuid,title,ver from lm_fabu_x where fabuid = (select max(fabuid) from lm_fabu_x where fabuid < '.$fabuid.' and ver = 1)');//下一篇
		$pre_page			=	$this->lm_fabu_x_mdl->query_row('select fabuid,title,ver from lm_fabu_x where fabuid = (select min(fabuid) from lm_fabu_x where fabuid > '.$fabuid.' and ver = 1)');//上一篇
		
		$data['next_page']	=	$next_page	?	'<a href="'.site_url('xuqiu/xuqiu_detail'.'/'.$next_page->fabuid).'">'.$next_page->title.'</a>'	:	'没有了';
		$data['pre_page']	=	$pre_page	?	'<a href="'.site_url('xuqiu/xuqiu_detail'.'/'.$pre_page->fabuid).'">'.$pre_page->title.'</a>'	:	'没有了';
		
		return $data;
	}


  
    
    
 }



?>