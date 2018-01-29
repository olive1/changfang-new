<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class News extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        $this->load->model('lm_news_mdl');
        $this->load->model('lm_news_class_mdl');
        
    }
    
    /** 增加  */
    function add()
	{		
		$news_class_id_ss				=	$this->session->flashdata('news_class_id');
        if($news_class_id_ss)//已经添加过数据  则取刚添加的缓冲news_class_id
		{
			$data['news_class_list']	=	$this->_news_class_list(0, $news_class_id_ss);
		}
		else
		{
			$data['news_class_list']	=	$this->_news_class_list(0);
		}
		
        $this->_form_validation(); //验证表单
        if($this->form_validation->run() == FALSE)
		{
            $this->load->view(LUMN_ADMIN_PATH.'/news_add', $data);            
        }
        else{
            $this->_insert();//入库
        }
        
    }
    
    /** 删除  */
    function del($news_id = 0)
	{        
        if($news_id == 0) $news_id = $this->input->post('news_id');        
		
        $this->_foreach_del($news_id);
        go_back();
    }
    
    /** 修改 */
    function update($news_id = 0)
	{
        $news_id    =   (!empty($news_id) && is_numeric($news_id)) ? substr(intval($news_id), 0, 5) : 0;        
		$news_row   = $this->lm_news_mdl->select_row_array(array('news_id' => $news_id));
		if(!$news_row)
		{
			show_error('该数据不存在！');
			exit();
		}
		$this->auth->is_me(array('news_id'=>$news_id), 'lm_news_mdl');//操作自己的信息
		$data['news_class_list']	=	$this->_news_class_list(0, $news_row['news_class_id']);
		$data['news_row']   = $news_row;
        
        $this->_form_validation();
        if($this->form_validation->run() == FALSE){
            
            $this->load->view(LUMN_ADMIN_PATH.'/news_add', $data);
            
        }else{
            
            //更新
            $this->_update($news_id);
        }
        
        
    }
    
    
    /** 列表  */
    function n_list(){
        
        $limit           =  10; //每页10条
        
        $per_page        =  intval($this->input->get('per_page'));
        $news_class_id   =  intval($this->input->get('news_class_id'));
        $sql             =  'select news_id, newstitle, news_class_id, admin_id, newstime from lm_news ';
        if($news_class_id > 0)//有分类 
        {
        $sql             =  $sql.' where news_class_id = '.$news_class_id;
        }
        $sql             =  $sql.' limit '.$per_page.', '.$limit;
        
        $news_result        =   $this->lm_news_mdl->query_result_ary($sql);//得到  查询条件
        $news_result        =   $news_result ? $this->_result_news_class($news_result) : FALSE;
        $data['news_result']=   $news_result;		
		
		$ary	=	array(); //条件
		if($news_class_id > 0) $ary = array('news_class_id = ' => $news_class_id);
		$num_rows			=   $this->lm_news_mdl->count_all_results($ary);
        
		$data['num_rows']   =   $num_rows;
        $data['cur']        =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/'.LUMN_ADMIN_PATH.'/news/n_list/?news_class_id='.$news_class_id;
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
        $this->load->view(LUMN_ADMIN_PATH.'/news_list', $data);
    }    
    
    
    
    
    
    /////////////以下函数  供上面的方法调用///////////////////////////
    
    
    /** 表单验证 */
    function _form_validation($id = 0){
        $this->form_validation->set_rules('news_class_id', '分类', 'required|trim|max_length[5]|is_natural_no_zero|xss_clean');
        $this->form_validation->set_rules('newstitle', '标题', 'required|trim|min_length[1]|max_length[80]|xss_clean');
        $this->form_validation->set_rules('keywords', '关键词', 'max_length[80]|xss_clean');
        $this->form_validation->set_rules('keywords', '关键词', 'max_length[80]|xss_clean');
        $this->form_validation->set_rules('newscontent', '内容', 'max_length[50000]|xss_clean');
        $this->form_validation->set_rules('newsimg', '图片', 'max_length[240]|xss_clean');
        
    }
    
    /** 验证后入库*/
    function _insert(){
        
        $newsimg    =   $this->_upload();  //获取上传图片地址
        $data = array(
                'news_class_id' =>  $this->input->post('news_class_id', TRUE),
                'newstitle'     =>  $this->input->post('newstitle', TRUE),
                'keywords'      =>  $this->input->post('keywords', TRUE),
                'description'   =>  $this->input->post('description', TRUE),
                'newsimg'       =>  $newsimg,
                'newscontent'   =>  $this->input->post('newscontent', TRUE),
                'admin_id'      =>  $this->auth->_user['admin_id'],
                'newstime'      =>  time(),
                );
                
        $insert_id  =   $this->lm_news_mdl->add($data);
        $success    =   $insert_id ? '添加成功' : '添加失败';
        $this->session->set_flashdata('success', $success);  
		$this->session->set_flashdata('news_class_id', $this->input->post('news_class_id', TRUE)); 
        go_back();
        
    }
    
    /** 更新 入库 */
    function _update( $news_id = 0 ){
        $newsimg    =   $this->_upload();  //获取上传图片地址
        $data = array(
                'news_class_id' =>  $this->input->post('news_class_id', TRUE),
                'newstitle'     =>  $this->input->post('newstitle', TRUE),
                'keywords'      =>  $this->input->post('keywords', TRUE),
                'description'   =>  $this->input->post('description', TRUE),
                'newsimg'       =>  $newsimg,
                'newscontent'   =>  $this->input->post('newscontent', TRUE),
                'admin_id'      =>  $this->auth->_user['admin_id'],
                'update_time'      =>  time(),
                );
        //未上传图片，则unset 出图片
        if(!$newsimg) unset($data['newsimg']);
          
        $update_id  =   $this->lm_news_mdl->update($data, array('news_id' => $news_id));
        $success    =   $update_id ? '更新成功' : '更新失败';
        $this->session->set_flashdata('success', $success);        
        go_back();
        
    }

    
    /** 获取图片地址   */
    function _upload()
    {
          $config['upload_path']    = getcwd().'\lm_uploads';
          $config['allowed_types']  = 'gif|jpg|png';
          $config['max_size']       = '1000';
          $config['max_width']      = '1024';
          $config['max_height']     = '768';
          $config['file_name']      = time();

        $this->load->library('upload', $config);
        

          if ( $this->upload->do_upload())
          {
             $data = $this->upload->data();
             return $data['file_name'];
          } 
          
          return FALSE;
    }
    
    /** 列表结果  加入 分类名 */
    function _result_news_class($data)
    {
        $this->load->model('lm_news_class_mdl');
        $i      =   0;
        foreach($data as $row)
        {            
            $news_class_row               =   $this->lm_news_class_mdl->query_row('select news_class_title from lm_news_class where news_class_id ='.intval($row['news_class_id']));
            $data[$i]['news_class_title'] =   $news_class_row ? $news_class_row->news_class_title : '';  //数组加入 news_class_title
            
            $admin_row              =   $this->lm_admin_mdl->query_row('select admin_name from lm_admin where admin_id ='.intval($row['admin_id']));
            $data[$i]['admin_name'] =   $admin_row ? $admin_row->admin_name : '';  //数组加入 admin_name
            
            $i++;
        }
        return $data;
    }
    
    
    /** 遍历删除  */
    function _foreach_del($news_id)
    {
        $news_id = is_array($news_id) ? $news_id : (array)$news_id;
        
        foreach($news_id as $id)
        {
            
			$nid	=	0;
			$nid	=	$id ? substr(intval($id), 0, 5) : 0;
			
			$this->auth->is_me(array('news_id'=>$nid), 'lm_news_mdl');//只能操作自己的信息
			$del    =   $this->lm_news_mdl->del(array('news_id = ' => $nid));
            
        }
        
        
    }
	
	
	/**分类数据 **/
	function _news_class_list($cla_id = 0, $class_id = 0)
	{
        $news_class_result          =   $this->lm_news_class_mdl->select_result(array());
		$this->load->library('recur');  //通过该类取得所有分类		
		$this->recur->_get_news_class_add($cla_id, $news_class_result, $class_id);
		return $this->recur->_list;
	}
	
	

    
    
}

?>