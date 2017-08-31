<?php
class Meeting extends LM_Controller
{
    
    function __construct(){
        parent::__construct();  
		$this->load->model('lm_goods_mdl');
    }
    
    function index()
	{        
        $this->g_list();
    }
	
	
	function g_list()
	{        
		$sql_url	=	$this->_list_sql();//获取sql
		
        $goods      =   $this->lm_goods_mdl->query($sql_url['sql']);  //获取商品数据
		$goods		=	$this->_add_meeting_score($goods);//加入会议室和score数据
		$sql_count  =   $this->lm_goods_mdl->query_row($sql_url['sql_count']);
		$num_rows	=   $sql_count ? $sql_count->counts : 0;//总记录数        
        
		//echo($sql_count.'<br>'.$sql_url['url'].'<br><br>'.$num_rows);		
		$url		=	$sql_url['url'];
		
        $this->load->library('pagination');                //加载分页类           
        $config['base_url']             =   $url;          
        $config['total_rows']           =   $num_rows;     //总记录数
        $config['per_page']             =   $sql_url['limit'];        //每页数
        $config['page_query_string']    =   TRUE;          //get形式
        $config['query_string_segment'] =   'page';        //分页名
        $config['prev_link']            =   '上一页';
        $config['next_link']            =   '下一页';
        $config['first_link']           =   '第一页';
        $config['last_link']            =   '最后页';  
        $config['cur_tag_open']         =   '&nbsp;<a class="current">';
        $config['cur_tag_close']        =   '</a>';       
        $config['num_links']            =   4;
        $this->pagination->initialize($config);
        
       

		
		$data['tiaojian']	=	$this->_tiaojian(); //搜索条件数据;
		
		$data['all']		=	$sql_url;  //所有变量数据
        $data['goods']      =   $goods;//所有商品数据结果
        $data['category']   =   $this->area->_data;//分类数据
        $this->load->model('lm_admin_mdl');
        $data['admin']      =   $this->lm_admin_mdl->select_result(array());//信息发布人员数据
        $data['num_rows']   =   $num_rows;//记录数
        $data['pagination'] =   $this->pagination->create_links(); //分页 条  
        
        $this->load->view('lm_meeting_list', $data);
    } 
	
	
	
    function detailcontent($goods_id = 0)
	{
		$goods_id        =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        $goods_row       =   $this->lm_goods_mdl->select(array('goods_id' => $goods_id));
        if(!$goods_row){
            show_error('该酒店不存在！');
            exit();
        }
		
		$this->load->model('lm_images_mdl');
		$this->load->model('lm_menu_mdl');
		$this->load->model('lm_category_mdl');
		$cid_a_row		   		=$this->lm_category_mdl->select(array('cat_id' => $goods_row->cid_a));//加入城市名
		$goods_row->cid_a		=	$cid_a_row	?	$cid_a_row->cat_name	:	$goods_row->cid_a;
		
        $data['goods_row']     	=   $goods_row;        
        //相册
        $images_result         	=   $this->lm_images_mdl->select_result(array('goods_id' => $goods_id));        
        $data['images_result']	=   $images_result;        
        //会议室
        $data['menu_result']   	=   $this->_add_menu_result($goods_id);
		//星级
		$score					=	$this->area->select_row($goods_row->score);
        $data['goods_row']->score=  $score	?	intval($score->keywords)	:	0;
		
		$this->load->view('lm_meeting_detail', $data);
    }
	
	//会议室详情
	function s($menu_id = 0)
	{
		$this->load->model('lm_menu_mdl');
		$menu_id   			=  (!empty($menu_id) && is_numeric($menu_id)) ? substr(intval($menu_id), 0, 8) : 0;
        $m_row       			=   $this->lm_menu_mdl->select(array('menu_id' => $menu_id));
        if(!$m_row){
            show_error('该会议室不存在！');
            exit();
        }
		$goods_row				=	$this->lm_goods_mdl->select(array('goods_id' => $m_row->goods_id), 'goods_id, goods_name');
		$data['goods_row']     	=   $goods_row;
        //会议室
        $data['menu_result']   	=   $this->_add_menu_result($m_row->goods_id);
		$data['m_row']			=	$m_row;		
		$this->load->view('lm_meeting_s', $data);
	}
	
	
   
   
   
   
   
   ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
   
   
   	/** 获取列表SQL
	 *  根据子表条件 获取所有父表 ID
	 *  获取父表数据后。
	 *  每个父表数据中  查询该子表的所有数据。
	*/
	function _list_sql()
	{
		
		$page   	=   $this->input->get('page'    ,   TRUE);//页码
        $cid_a  	=   $this->input->get('cid_a'   ,   TRUE);//区域a
        $cid_b  	=   $this->input->get('cid_b'   ,   TRUE);//区域b
		$area_id	=   $this->input->get('area_id'   ,   TRUE);//区域c
        $l_price	=   $this->input->get('l_price' ,   TRUE);//面积
        $score		=   $this->input->get('score' ,   TRUE);//星级	
		$goods_name	=   $this->input->get('goods_name' ,   TRUE);		
		/*
        $pricea 	=   $this->input->get('pricea'  ,   TRUE);//价格-小时
		$priceb 	=   $this->input->get('priceb'  ,   TRUE);//价格-半天
		$pricec 	=   $this->input->get('pricec'  ,   TRUE);//价格-全天
		$priced 	=   $this->input->get('priced'  ,   TRUE);//价格-晚上
		$pricee 	=   $this->input->get('pricee'  ,   TRUE);//价格-全天d
		$pricef 	=   $this->input->get('pricef'  ,   TRUE);//价格-晚上d	
		*/
		$price_a  	=   $this->input->get('price_a'  ,   TRUE);//价格 类型
		$price_b  	=   $this->input->get('price_b'  ,   TRUE);//价格 数目
		$put_id 	=   $this->input->get('put_id'  ,   TRUE);//布局
        $menu_table =   $this->input->get('menu_table'  ,   TRUE);//人数
        $menu_l_price =   $this->input->get('menu_l_price'  ,   TRUE);//面积
		
		//处理数据
        $page   =   (!empty($page)      &&  is_numeric($page))      ? substr(intval($page), 0, 8)   : 0;
        $cid_a  =   (!empty($cid_a)     &&  is_numeric($cid_a))     ? substr(intval($cid_a), 0, 5)  : 0;
        $cid_b  =   (!empty($cid_b)     &&  is_numeric($cid_b))     ? substr(intval($cid_b), 0, 5)  : 0;
		$area_id=   (!empty($area_id)   &&  is_numeric($area_id))   ? substr(intval($area_id), 0, 5)  : 0;
        $l_price=   (!empty($l_price)   &&  is_numeric($l_price))   ? substr(intval($l_price), 0, 5): 0;
        $score	=   (!empty($score)     &&  is_numeric($score))     ? substr(intval($score), 0, 5): 0;
        $goods_name=(!empty($goods_name))? mb_substr($goods_name, 0, 50) : 0; 
		$goods_name=str_replace('酒店名称！', '', $goods_name);
		$goods_name=addslashes($goods_name);
		/*
		$pricea	=   (!empty($pricea)     &&  is_numeric($pricea))     ? substr(intval($pricea), 0, 5): 0;
		$priceb	=   (!empty($priceb)     &&  is_numeric($priceb))     ? substr(intval($priceb), 0, 5): 0;
		$pricec	=   (!empty($pricec)     &&  is_numeric($pricec))     ? substr(intval($pricec), 0, 5): 0;
		$priced	=   (!empty($priced)     &&  is_numeric($priced))     ? substr(intval($priced), 0, 5): 0;
		$pricee	=   (!empty($pricee)     &&  is_numeric($pricee))     ? substr(intval($pricee), 0, 5): 0;
		$pricef	=   (!empty($pricef)     &&  is_numeric($pricef))     ? substr(intval($pricef), 0, 5): 0;
		*/
		$price_a=   (!empty($price_a)    &&  is_numeric($price_a))    ? substr(intval($price_a), 0, 5): 0;
		$price_b=   (!empty($price_b)    &&  is_numeric($price_b))    ? substr(intval($price_b), 0, 5): 0;		
		$l_pricem=  (!empty($l_pricem)   &&  is_numeric($l_pricem))   ? substr(intval($l_pricem), 0, 5): 0;
		$h_pricem=  (!empty($h_pricem)   &&  is_numeric($h_pricem))   ? substr(intval($h_pricem), 0, 5): 0;
		$put_id	=   (!empty($put_id)     &&  is_numeric($put_id))     ? substr(intval($put_id), 0, 5): 0;
		$menu_table=(!empty($menu_table)&&  is_numeric($menu_table))  ? substr(intval($menu_table), 0, 5): 0;
		$menu_l_price=(!empty($menu_l_price) && is_numeric($menu_l_price)) ? substr(intval($menu_l_price), 0, 5): 0;
		
		
		$l_pricem			=	0;
		$h_pricem			=	0;
		if($price_b)
		{
			$price_row		=	$this->area->select_row($price_b);  //通过价格ID取得数据0-500			
			if($price_row)
			{
				$p_row 		= 	explode('-', $price_row->keywords);
				$l_pricem	=	isset($p_row[0]) ? substr(intval($p_row[0]), 0, 5) : 0;
				$h_pricem	=	isset($p_row[1]) ? substr(intval($p_row[1]), 0, 5) : 0;
			}
		}

		//处理ooo
		
		//属性表搜索  lm_menu_att  取得符合条件的menu_id 12.20 add
		$menu_att_sql		=	'';
		if($put_id)
		{
			$menu_att_sql	=	'select distinct menu_id from lm_menu_att where menu_id>0 ';
		}
		
		if($put_id)
		{
			$menu_att_sql	=	$menu_att_sql.' and att_id = '.$put_id;
		}
		
		
		//menu_sql   会议室数据不为空时
		$menu_sql = '';
		
		if(($price_a && $price_b) || $menu_table || $menu_l_price || $menu_att_sql)
		{
			$menu_sql = 'select distinct goods_id from lm_menu where goods_id>0 ';  //有满足会议搜索条件就成立
		}
		
		if($price_a == 228 && ($l_pricem || $h_pricem))  //有价格条件时，并且有 最低价或最高价
		{
			$menu_sql = $menu_sql.' and pricea >'.$l_pricem;  
			if($h_pricem)$menu_sql = $menu_sql.' and pricea <'.$h_pricem;
		}
		elseif($price_a == 229 && ($l_pricem || $h_pricem))
		{
			$menu_sql = $menu_sql.' and priceb >'.$l_pricem;  
			if($h_pricem)$menu_sql = $menu_sql.' and priceb <'.$h_pricem;
		}
		elseif($price_a == 230 && ($l_pricem || $h_pricem))
		{
			$menu_sql = $menu_sql.' and pricec >'.$l_pricem;  
			if($h_pricem)$menu_sql = $menu_sql.' and pricec <'.$h_pricem;
		}
		elseif($price_a == 231  && ($l_pricem || $h_pricem))
		{
			$menu_sql = $menu_sql.' and priced >'.$l_pricem;  
			if($h_pricem)$menu_sql = $menu_sql.' and priced <'.$h_pricem;
		}
		elseif($price_a == 232 && ($l_pricem || $h_pricem))
		{
			$menu_sql = $menu_sql.' and pricee >'.$l_pricem;  
			if($h_pricem)$menu_sql = $menu_sql.' and pricee <'.$h_pricem;
		}
		elseif($price_a == 233 && ($l_pricem || $h_pricem))
		{
			$menu_sql = $menu_sql.' and pricef >'.$l_pricem;  
			if($h_pricem)$menu_sql = $menu_sql.' and pricef <'.$h_pricem;
		}
		
		/**  put_id多项选择修改
		if($put_id)  //布局
		{
			$menu_sql = $menu_sql.' and put_id ='.$put_id; 
		}
		*/
		
		if($menu_table)  //人数
		{
			$menu_table_row		=	$this->area->select_row($menu_table);  //通过人数ID取得数据 0-500
			if($menu_table_row)
			{
				$m_t_row 		= 	explode('-', $menu_table_row->keywords);//分隔得到 min 与 max
				$m_t_row_a		=	isset($m_t_row[0]) ? substr(intval($m_t_row[0]), 0, 5) : 0;
				$m_t_row_b		=	isset($m_t_row[1]) ? substr(intval($m_t_row[1]), 0, 5) : 0;
				
				$menu_sql = $menu_sql.' and menu_table >'.$m_t_row_a;  
				if($m_t_row_b)$menu_sql = $menu_sql.' and menu_table <'.$m_t_row_b;
			}			
		}
		if($menu_l_price)  //面积
		{
			$menu_l_price_row	=	$this->area->select_row($menu_l_price);
			if($menu_l_price_row)
			{
				$m_l_p_row 		= 	explode('-', $menu_l_price_row->keywords);
				$m_l_p_row_a	=	isset($m_l_p_row[0]) ? substr(intval($m_l_p_row[0]), 0, 5) : 0;
				$m_l_p_row_b	=	isset($m_l_p_row[1]) ? substr(intval($m_l_p_row[1]), 0, 5) : 0;
				
				$menu_sql = $menu_sql.' and menu_l_price >'.$m_l_p_row_a;  
				if($m_l_p_row_b)$menu_sql = $menu_sql.' and menu_l_price <'.$m_l_p_row_b;
			}
		}
		
		// 属性表 查出符合条件的  会议室id
		if($menu_att_sql)
		{
			$menu_sql = $menu_sql.' and menu_id in ('.$menu_att_sql.')'; 
		}
		//menu_sql over oo
		
		
		//goods_sql 
		
		$goods_sql		=	'';
		$select_goods 	=	'select goods_id, goods_name, cid_a, cid_b, area_id, l_price, score, img_path, address, description, subway, bus, tables, create_time from lm_goods where goods_id>0 ';
		$select_count	=	'select count(*) as counts from lm_goods where goods_id>0';
		
		if($area_id)//地区
		{
			$goods_sql 	=	$goods_sql.' and area_id='.$area_id;
		}
		elseif($cid_b)
		{
			$goods_sql 	=	$goods_sql.' and cid_b='.$cid_b;
		}
		elseif($cid_a)
		{
			$goods_sql 	=	$goods_sql.' and cid_a='.$cid_a;
		}
		
		if($score)//星级
		{
			$goods_sql 	=	$goods_sql.' and score='.$score;
		}
		if($goods_name)//星级
		{
			$goods_sql 	=	$goods_sql." and goods_name like '%".$goods_name."%' ";
		}
		if(!empty($menu_sql))  //加入会议室搜索
		{
			$goods_sql 	=	$goods_sql.' and goods_id in ('.$menu_sql.')';
		}
		
		//goods_sql oo
		
		
		
        $limit  	=   intval(5);  //页面显示数目 		
        $sql		=   $select_goods.$goods_sql.' limit '.$page.' , '.$limit;  
        $sql_count	=	$select_count.$goods_sql;  //总记录数sql
		
		$url        =   site_url('meeting/?cid_a='.$cid_a.'&cid_b='.$cid_b.'&area_id='.$area_id.'&score='.$score.'&price_a='.$price_a.'&price_b='.$price_b.'&put_id='.$put_id.'&menu_table='.$menu_table.'&menu_l_price='.$menu_l_price.'&goods_name='.$goods_name.'&page='.$page);
		
		
		
		$data['all']=	array(	'cid_a' 		=>	$cid_a,
								'cid_b'			=>	$cid_b,
								'area_id'		=>	$area_id,
								'score'			=>	$score,								
								'price_a'		=>	$price_a,
								'price_b'		=>	$price_b,
								'put_id'		=>	$put_id,
								'menu_table'	=>	$menu_table,
								'menu_l_price'	=>	$menu_l_price,
								'goods_name'	=>	$goods_name,
								'page'			=>	$page-1,
								);
		$data['sql']	=	$sql;
		$data['url']	=	$url;
		$data['limit']	=	$limit;
		$data['sql_count']	=	$sql_count;
		return $data;
		
	}
	
	
	
	//获取搜索条件数据。
	function _tiaojian()
	{		
		$cid_a  =   $this->input->get('cid_a'  ,   TRUE);
		$cid_b  =   $this->input->get('cid_b'  ,   TRUE);
        $cid_a  =   (!empty($cid_a)    &&  is_numeric($cid_a))  ? substr(intval($cid_a), 0, 5)   : 0;
		$cid_b  =   (!empty($cid_b)    &&  is_numeric($cid_b))  ? substr(intval($cid_b), 0, 5)   : 0;
		$data['cid_b_list']			=	array();
		$data['area_id_list']		=	array();
		$data['cid_a_list'] 						=   $this->area->select_result(1);    	//省市
		if($cid_a)$data['cid_b_list']				=	$this->area->select_result($cid_a);
		if($cid_b && $cid_a)$data['area_id_list']	=	$this->area->select_result($cid_b);
		
        $data['price_a_list']    	=   $this->area->select_result(226); 	//价格分配- (小时，天。。)		
        $data['price_b_list']    	=   $this->area->select_result(227);    //价格数值		
        $data['put_id_list']    	=   $this->area->select_result(2);      //布局		
        $data['menu_table_list']    =   $this->area->select_result(234);  	//人数		
        $data['menu_l_price_list']  =   $this->area->select_result(235); 	//面积		
        $data['score_list']    		=   $this->area->select_result(211);    //星级
		
		return $data;		
	}
   
   
    //加入 score和 会议室数据
	function _add_meeting_score($data)
	{
		if(!$data) return false;
		$this->load->model('lm_menu_mdl');
		$i	=	0;
		foreach($data as $row)
		{
			$score	=$this->area->select_row($row->score) ? $this->area->select_row($row->score)->keywords :0;
			$data[$i]->score	=	$score;  //加入星级值
			$data[$i]->meeting	=	$this->lm_menu_mdl->select_result(array('goods_id' => $row->goods_id), '', 'menu_id, menu_title');
			$i++;
		}
		
		return $data;
	}
	
	
	//加入menu数据
	function _add_menu_result($goods_id)
	{
		$data           	=   $this->lm_menu_mdl->select_result(array('goods_id' => $goods_id));
		if(!$data)	return false;
		
		$i	=	0;
		foreach($data as $row)
		{
			$cat_row	=	$this->lm_category_mdl->select(array('cat_id' => $row->put_id), 'cat_name');
			$data[$i]->put_id	=	$cat_row	?	$cat_row->cat_name	:	$row->put_id;//摆放形式
			
			$i++;
		}
		return $data;
	}
		
	
	/** ajax cat
	* 根据父ID取得  所有子id数据
	**/
	function get_cat($id = 0)
	{
		if($id == 0) return false;
		$result	=	$this->area->select_result($id);
		echo(json_encode($result));
	}

	
   
   
   
   
   
}

?>