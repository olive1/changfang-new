<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Goodsmenu extends Lm_Admin_Controller{
    
    function __construct(){
        
        parent::__construct();
        $this->load->model('lm_menu_mdl');
        $this->load->model('lm_goods_mdl');
    }

	
    
    /** 增加  */
    function add($goods_id = 0)
	{
        $row = $this->_is_goods($goods_id); //酒店有效性
        $this->area->_cat_id_ary(2);//获取摆放形式
		$put_ary			=	$this->area->cat_id_ary;
		$data['put_ary']	=	$put_ary;
		
		$data['goods_name']	=	$row->goods_name;
		$data['goods_id']	=	$goods_id;		
        $this->_form_validation(); //验证表单
        if($this->form_validation->run() == FALSE){
            $this->load->view(LUMN_ADMIN_PATH.'/goodsmenu_add', $data);            
        }
        else{
            $this->_insert($goods_id);//入库
        }
        
    }
    
    /** 删除  */
    function del($menu_id = 0)
	{
        if($menu_id == 0) $menu_id = $this->input->post('menu_id');
        
        $this->_foreach_del($menu_id);
        go_back();
    }
    
    /** 修改 */
    function update($menu_id = 0)
	{
        
		//获取表单数据
		$menu_id      =   (!empty($menu_id) && is_numeric($menu_id)) ? substr(intval($menu_id), 0, 5) : 0;
        $row          =   $this->lm_menu_mdl->select_row_array(array('menu_id' => $menu_id));
        if(!$row)
		{
			show_error('未找到该会议室！');
			exit();
		}
		
		$goods_id	=	$row['goods_id']; 
		$row_g = $this->_is_goods($goods_id); //酒店有效性		
        
		$this->area->_cat_id_ary(2);//获取摆放形式
		$put_ary			 =	$this->area->cat_id_ary;
		$data['put_ary']	 =	$put_ary;
		$data['goods_id']  	 =	$row_g->goods_id;
		$data['goods_name']  =	$row_g->goods_name;
        $data['row']  		 =	$row;
        
        $this->_form_validation();
        if($this->form_validation->run() == FALSE)
		{            
            $this->load->view(LUMN_ADMIN_PATH.'/goodsmenu_add', $data);            
        }else
		{
            //更新
            $this->_update($menu_id);
        }
        
        
    }
    
    
    /** 列表  */
    function n_list($goods_id = 0)
	{        
        
        $limit           =  10; //每页10条       
        $per_page        =  intval($this->input->get('per_page'));
        
		if($goods_id == 0)$goods_id   	 =  intval($this->input->get('goods_id'));
		$goods_id		 =	(!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
		$row_g 			 =  $this->_is_goods($goods_id); //酒店有效性
        $sql             =  'select menu_id, menu_title, goods_id, menu_time from lm_menu ';
        if($goods_id > 0)//有分类 
        {
			$sql         =  $sql.' where goods_id = '.$goods_id;
        }
        $sql             =  $sql.' limit '.$per_page.', '.$limit;
        
        $result        		=   $this->lm_menu_mdl->query_result_ary($sql);//得到  查询条件
		
        $data['result']		=   $result;
		
		$num_rows			=   $this->lm_menu_mdl->count_all_results(array('goods_id'=> $goods_id));		
        $data['num_rows']   =   $num_rows;
        $data['cur']        =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/'.LUMN_ADMIN_PATH.'/goodsmenu/n_list/?goods_id='.$goods_id;
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
		
		$data['goods_id']	=	$row_g->goods_id;
		$data['goods_name']	=	$row_g->goods_name;
        $this->load->view(LUMN_ADMIN_PATH.'/goodsmenu_list', $data);
    }    
    
    
    
    
    
    /////////////以下函数  供上面的方法调用///////////////////////////
    
	
	
	
	
    
    /** 表单验证 */
    function _form_validation($id = 0){
        
        $this->form_validation->set_rules('menu_title', '会议名称', 'required|trim|min_length[1]|max_length[80]|xss_clean');
		
		
		
		$this->form_validation->set_rules('pricea', '小时', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('priceb', '半天', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('pricec', '全天', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('priced', '晚上', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('pricee', '全天搭建', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('pricef', '晚上搭建', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		
		
		$this->form_validation->set_rules('menu_l_price', '面积', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('menu_table', '人数', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		//$this->form_validation->set_rules('put_id', '摆放形式', 'trim|min_length[1]|max_length[5]|is_natural|xss_clean');
		$this->form_validation->set_rules('menu_content', '备注', 'max_length[80]|xss_clean');
		$this->form_validation->set_rules('menu_contents', '内容', 'max_length[5000]|xss_clean');
    }
    
    /** 验证后入库*/
    function _insert($goods_id = 0)
	{
	    $put_id	=	$this->_get_put_id();		
		
		$data = array(
                'goods_id' 			=>  $goods_id,
                'menu_title'     	=>  $this->input->post('menu_title', TRUE),
				'menu_content' 		=>  $this->input->post('menu_content', TRUE),
				'menu_contents' 	=>  $this->input->post('menu_contents', TRUE),
				'menu_price' 		=>  intval($this->input->post('menu_price', TRUE)),
				'pricea' 			=>  intval($this->input->post('pricea', TRUE)),
				'priceb' 			=>  intval($this->input->post('priceb', TRUE)),
				'pricec' 			=>  intval($this->input->post('pricec', TRUE)),
				'priced' 			=>  intval($this->input->post('priced', TRUE)),
				'pricee' 			=>  intval($this->input->post('pricee', TRUE)),
				'pricef' 			=>  intval($this->input->post('pricef', TRUE)),				
				'menu_l_price' 		=>  intval($this->input->post('menu_l_price', TRUE)),
				'menu_table' 		=>  intval($this->input->post('menu_table', TRUE)),
				'put_id' 			=>  $put_id,
				'menu_time'			=>	time(),
                );
                
        $insert_id  =   $this->lm_menu_mdl->add($data);
		if($insert_id)$this->_insert_menu_att($insert_id, $put_id);  //属性表  
		
        $success    =   $insert_id ? '添加成功' : '添加失败';
        $this->session->set_flashdata('success', $success); 
		//$this->session->set_flashdata('sess_put_id', $put_id); 
        go_back();
        
    }
    
    /** 更新 入库 */
    function _update( $menu_id = 0 ){
	
        $put_id	=	$this->_get_put_id();		
		
		$data = array(                
                'menu_title'     	=>  $this->input->post('menu_title', TRUE),
				'menu_content' 		=>  $this->input->post('menu_content', TRUE),
				'menu_contents' 	=>  $this->input->post('menu_contents', TRUE),
				'menu_price' 		=>  intval($this->input->post('menu_price', TRUE)),
				'pricea' 			=>  intval($this->input->post('pricea', TRUE)),
				'priceb' 			=>  intval($this->input->post('priceb', TRUE)),
				'pricec' 			=>  intval($this->input->post('pricec', TRUE)),
				'priced' 			=>  intval($this->input->post('priced', TRUE)),
				'pricee' 			=>  intval($this->input->post('pricee', TRUE)),
				'pricef' 			=>  intval($this->input->post('pricef', TRUE)),	
				'menu_l_price' 		=>  intval($this->input->post('menu_l_price', TRUE)),
				'menu_table' 		=>  intval($this->input->post('menu_table', TRUE)),
				'put_id' 			=>  $put_id,
				
                );
        $yuan_put_id=	$this->lm_menu_mdl->select(array('menu_id' => $menu_id))->put_id;//取得原put_id
		
        $update_id  =   $this->lm_menu_mdl->update($data, array('menu_id' => $menu_id));
		if($update_id) $this->_update_menu_att($menu_id, $yuan_put_id);  //属性表  
		
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
    

    
    /** 遍历删除  */
    function _foreach_del($menu_id)
    {
        $menu_id = is_array($menu_id) ? $menu_id : (array)$menu_id;
        
        foreach($menu_id as $id)
        {
            $del    =   $this->lm_menu_mdl->del(array('menu_id = ' => $id));
            
        }
        
        
    }
    
    
    /** 验证是否有酒店  */
	function _is_goods($goods_id)
	{
	    $goods_id	=	(!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
		
        $row        =   $this->lm_goods_mdl->select(array('goods_id' => $goods_id));
		if(!$row)
		{
			show_error('没有该酒店！');
			exit();
		}
        return $row;
	}
	
	/** 更新 属性表 
		$menu_id   更新的id
		yuan_put_id 原来的put_id数据
		取得属性表中 该menu_id 的所有属性id  $att_id_all
		更新后的属性id $att_id_ary 
	    比较这2个ID  （$att_id_all， $att_id_ary
		原id中包含更新的ID，则 不需要增加。否则增加没有的ID
	**/
	function _update_menu_att($menu_id=0, $yuan_put_id = 0)
	{
		$att_id_yuan	= 	(array)unserialize($yuan_put_id);  //原来的put_id
		
		$xing_put_id	=	$this->lm_menu_mdl->select(array('menu_id' => $menu_id))->put_id;
		$att_id_xing	= 	(array)unserialize($xing_put_id);   //更新后的put_id
		
		$this->load->model('lm_menu_att_mdl');
		
		//$arr1 = array('1','2','3','7','8','9');
		//$arr2 = array('1','2','8','4');
		//先删除，后增加 原则
		$jiaoji 		=	array_intersect($att_id_yuan, $att_id_xing); //交集
		
		$del			=	array_diff($att_id_yuan, $jiaoji);//删除所有 交集之外的数据。新数据没有的东东
		
		//增加的数据
		$add			=	array_diff($att_id_xing, $att_id_yuan);//需要增加的  是差集。原数据 没有的东东
		
		if($del)  //有删除的数据，则删除之
		{
			$is_del	=	$this->_del_menu_att($menu_id, serialize($del));
		}
		
		if($add)  //有新数据，则insert_
		{
			$is_add	=	$this->_insert_menu_att($menu_id, serialize($add));
		}
		
		return TRUE;
	}
	
	
	/** menu_att 属性表 增加menu_id 和att_id **/
	function _insert_menu_att($menu_id=0, $att_id_list = 0)
	{
		$this->load->model('lm_menu_att_mdl');
		
		$att_id_ary	=	unserialize($att_id_list);
		foreach($att_id_ary as $att_id)
		{
			$id	=	0;
			$id	=	intval($att_id);
			
			if($id)$this->lm_menu_att_mdl->add(array('menu_id' => $menu_id, 'att_id' => $id));
		}
		return TRUE;
	}
	
	/** menu_att 属性表 删除menu_id 和att_id **/
	function _del_menu_att($menu_id=0, $att_id_list = 0)
	{
		$this->load->model('lm_menu_att_mdl');
		
		$att_id_ary	=	(array)unserialize($att_id_list);
		foreach($att_id_ary as $att_id)
		{
			$id	=	0;
			$id	=	intval($att_id);
			
			if($id)$this->lm_menu_att_mdl->del(array('menu_id' => $menu_id, 'att_id' => $id));
		}
		return TRUE;
	}
	
	
	
	function _get_put_id()
	{
		$put_id	=	$this->input->post('put_id', TRUE);

		if(empty($put_id) || !is_array($put_id))
		{
			show_error('请选择会议布局');
			exit();
		}
		
		if(strlen(serialize($put_id)) > 250)
		{
			$put_id	=	serialize('');
		}
		else
		{
			$put_id	=	serialize($put_id);
		}
		
		return $put_id;
	}
	
	
	
	
	
	
	
	
	
	
	
/**  参考用  。。。。。举例 。。。。。 */
	
	function _update_menu_attyy($menu_id=0, $att_id_list = 0)
	{
		$att_id_all= array();  //原表中所有id
		$att_id_ary= array();  //当前所有id
		
		$this->load->model('lm_menu_att_mdl');		
		
		$result = $this->lm_menu_att_mdl->select_result_array(array('menu_id' => $menu_id, ), 'att_id');
		foreach($result as $row)
		{
			$att_id_all[]	=	$row['att_id'];			
		}
		
		$att_id_ary	=	(array)unserialize($att_id_list);
		
		
		$arr_jiaoji	=	array_intersect($att_id_all, $att_id_ary);  //取得2个数组中的交集
		$arr_chaji	=	array_diff($att_id_ary, $arr_jiaoji);  //取差集(从新数组中 剃除 交集数据)
		
		if($arr_chaji)  //有新数据，则insert_
		{
			$this->_insert_menu_att($menu_id, serialize($arr_chaji));
		}
		
		return FALSE;
	}
	
	//解释 。。。。  旧数据指 更新之前的数据
	function example()
	{
		$arr1 = array('1','2','3','7','8','9');
		$arr2 = array('1','2','8','4');

		//先删除，后增加 原则
		$jiaoji = array_intersect($arr1, $arr2); //交集
		$del	=	array_diff($arr1, $jiaoji);//删除所有 交集之外的数据。新数据没有的东东
		//print_r($del);
		$add	=	array_diff($arr2, $arr1);
		print_r($add);  //需要增加的  是差集。旧数据 没有的东东
	}
	
	
}

?>