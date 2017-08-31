<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 


/** 商品类 */
class Goods extends Lm_Admin_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_goods_mdl');
        $this->load->model('lm_menu_mdl');
        $this->load->model('lm_images_mdl');         
        
        $this->load->library('lm_upload');
    }
    
    /** 添加 */
    function add()
	{		
        
		$this->area->cat_id_ary='';
		$this->area->_cat_id_ary(1);//取得区域
		$cat_id_ary			=	$this->area->cat_id_ary;
		$data['cat_id_ary']	=	$cat_id_ary;
		
		$this->area->cat_id_ary='';
		$this->area->_cat_id_ary(211);//获取星级
		$score_ary			=	$this->area->cat_id_ary;
		$data['score_ary']	=	$score_ary;
		
		
        $this->load->view(LUMN_ADMIN_PATH.'/goods_add', $data);
    }
    
    /** 删除 */
    function del($goods_id = 0)
	{        
        
        $goods_id       =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        $goods_id_list  =   $this->input->post('goods_id',  TRUE);//ID列表        
        $goods_id       =   $goods_id   ?   $goods_id   :   $goods_id_list;
        
        $result         =   $this->_del($goods_id);
        go_back(); 
    }
    
    /** 编辑商品  */
    function update($goods_id = 0)
	{
        
        $goods_id       =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;$this->auth->is_me(array('goods_id'=>$goods_id), 'lm_goods_mdl');//只能更新自己的信息?		   
        
        //获取内容数组
        $data_goods    =   $this->lm_goods_mdl->select(array('goods_id' => $goods_id));//基本信息        
        $data_images   =   $this->lm_images_mdl->select_result(array('goods_id' => $goods_id));//相册
        if($data_goods)
        {
            $data['goods_name']    =   $data_goods->goods_name;
            //$data['cid_a']         =   $data_goods->cid_a;
            //$data['cid_b']         =   $data_goods->cid_b;
            $data['area_id']       =   $data_goods->area_id;
            $data['goods_name']    =   $data_goods->goods_name;
            $data['keywords']      =   $data_goods->keywords;
            $data['description']   =   $data_goods->description;
            $data['address']       =   $data_goods->address;
            $data['l_price']       =   $data_goods->l_price;
            $data['h_price']       =   $data_goods->h_price;
            $data['tables']        =   $data_goods->tables;
            $data['score']         =   $data_goods->score;
            $data['contents']      =   $data_goods->contents;
            $data['contentsa']     =   $data_goods->contentsa;
            $data['preferential']  =   $data_goods->preferential;
            $data['subway']        =   $data_goods->subway;
            $data['bus']           =   $data_goods->bus;
            $data['map']           =   $data_goods->map;
            $data['order_id']      =   $data_goods->order_id;
            $data['admin_id']      =   $data_goods->admin_id;
        }

        // over
		$this->area->cat_id_ary='';
		$this->area->_cat_id_ary(1);//获取区域
        $data['cat_id_ary']  =	$this->area->cat_id_ary;		
		$data['cid_b']		 =	$this->_area_parent_id($data['area_id'], $data['cat_id_ary']); //市区
		$data['cid_a']		 =	$this->_area_parent_id($data['cid_b'], $data['cat_id_ary']);  //省市
		
		$this->area->cat_id_ary='';
		$this->area->_cat_id_ary(211);//获取星级
		$score_ary			 =	$this->area->cat_id_ary;
		$data['score_ary']	 =	$score_ary;
		
        $data['data_images'] =   $data_images;
        $data['goods_id']    =   $goods_id; //此参数 是更新
        $this->load->view(LUMN_ADMIN_PATH.'/goods_add', $data);
    }
        
    /** 商品列表 */
    function g_list()
	{        
		$sql_url	=	$this->_list_sql();//获取sql
		
        $goods      =   $this->lm_goods_mdl->query($sql_url['sql']);  //获取商品数据	
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
        
        $this->load->view(LUMN_ADMIN_PATH.'/goods_list', $data);
    } 
    
    
    
    
    
    ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
    /** 验证  */
    function _form_validation(){
        
        $this->form_validation->set_rules('');
    }
    
    function add_save($goods_id = 0){
        
        $goods_id       =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        $this->_insert($goods_id);  //判断入库
        $success    =   ($goods_id > 0) ? '更新成功！' : '添加成功！';
        $this->session->set_flashdata('success', $success);
        go_back();
    }
    
    /** POST入库 信息*/
    function _insert($goods_id)
	{        
		/**area_id
		$cid_a = $this->input->post('cid_a', TRUE);
		if($cid_a) $area_id	=	$cid_a;
		$cid_b = $this->input->post('cid_b', TRUE);
		if($cid_b) $area_id	=	$cid_b;
		$ai_d   = $this->input->post('area_id', TRUE);
		if($ai_d) $area_id	=	$ai_d;		
		$area_id	=	(!empty($area_id)) ? substr(intval($area_id), 0, 5) : 0;
		/**area_id*/		
		
		//基本信息
        $data_a   =   array(                       
                        'cid_a'      	=>   $this->input->post('cid_a', TRUE),
						'cid_b'      	=>   $this->input->post('cid_b', TRUE),
						'area_id'       =>   $this->input->post('area_id', TRUE),
                        'goods_name'    =>   $this->input->post('goods_name', TRUE),
                        'keywords'      =>   $this->input->post('keywords', TRUE),
                        'description'   =>   $this->input->post('description', TRUE),
                        'address'       =>   $this->input->post('address', TRUE),
                        'l_price'       =>   $this->input->post('l_price', TRUE),
                        'h_price'       =>   $this->input->post('h_price', TRUE),
                        'tables'        =>   $this->input->post('tables', TRUE),
                        'score'         =>   $this->input->post('score', TRUE),
                        'contents'      =>   $this->input->post('contents'),
                        'contentsa'     =>   $this->input->post('contentsa'),
                        'preferential'  =>   $this->input->post('preferential', TRUE),
                        'subway'        =>   $this->input->post('subway', TRUE),
                        'bus'           =>   $this->input->post('bus', TRUE),
                        'map'           =>   $this->input->post('map', TRUE),
                        'order_id'      =>   $this->input->post('order_id', TRUE),
                        'admin_id'      =>   $this->auth->_user['admin_id'],
                        'create_time'   =>   time(),
                        'update_time'   =>   time(),
                    );  

        $data_a =   $this->_post_validation_a($data_a); //基本信息 处理
        if(!$data_a['goods_name'] || !$data_a['area_id']){
            show_error('地区 及 名称不可为空');
            go_back();
        }
        
        if($goods_id > 0)  //有更新 ID
        {
            //不需要更新的字段
            //unset($data_a['area_id']);
            unset($data_a['create_time']);
            
            $row_true   =   $this->lm_goods_mdl->update($data_a, array('goods_id' => $goods_id));//更新 的时候也有goods_id
            if(!$row_true){
                show_error('信息更新失败！');
                go_back();
            }
        }else
        {
            $goods_id  =   $this->lm_goods_mdl->add($data_a);//入库 获取good_ID
            if(!$goods_id){
                show_error('信息插入失败！');
                go_back();
            }
        }
        
        
        //基本信息OVER
        
        
        
        //菜单
        $data_b =   array(
                        'menu_title'    =>   $this->input->post('menu_title', TRUE),
                        'menu_price'    =>   $this->input->post('menu_price', TRUE),
                        'menu_name'     =>   $this->input->post('menu_name', TRUE),
                        'menu_content'  =>   $this->input->post('menu_content', TRUE),
                    );

        //菜单 old 数据
        $data_b_old =   array(
                        'menu_title'    =>   $this->input->post('menu_title_old', TRUE),
                        'menu_price'    =>   $this->input->post('menu_price_old', TRUE),
                        'menu_name'     =>   $this->input->post('menu_name_old', TRUE),
                        'menu_content'  =>   $this->input->post('menu_content_old', TRUE),
                    );
        
        
        
        
        //相册
        $userfile_data  =   $_FILES['img_path'];
        $lm_uploads     =   LUMN_IMAGE_PATH; 
        $lm_tem_uploads =   LUMN_IMAGE_PATH_TEM;
        $img_path       =   $this->lm_upload->do_upload_ex("img_path", $userfile_data, true, $lm_uploads, $lm_tem_uploads, true);//图片数组
        
        $data_c =   array(
                        'img_path'      =>   $img_path,
                        'img_name'      =>   $this->input->post('img_name', TRUE),
                        'img_height'    =>   $this->input->post('img_height', TRUE),
                        'img_tables'    =>   $this->input->post('img_tables', TRUE),
                        'img_hall'      =>   $this->input->post('img_hall', TRUE),
                        'img_hot'       =>   $this->input->post('img_hot', TRUE),
                     );
        $data_c['img_hall']     =   (array)$data_c['img_hall']; //强转为数组型,因为check 未选中传不过来
        $data_c['img_hot']      =   (array)$data_c['img_hot'];
        
        //相册老数据
        $data_c_old=array(
                        
                        'img_name'      =>   $this->input->post('img_name_old', TRUE),
                        'img_height'    =>   $this->input->post('img_height_old', TRUE),
                        'img_tables'    =>   $this->input->post('img_tables_old', TRUE),
                        'img_hall'      =>   $this->input->post('img_hall_old', TRUE),
                        'img_hot'       =>   $this->input->post('img_hot_old', TRUE),
                     );  
        $data_c_old['img_hall'] =   (array)$data_c_old['img_hall']; //强转为数组型 
        $data_c_old['img_hot']  =   (array)$data_c_old['img_hot'];

        $data_b =   $this->_post_validation_b($data_b); //菜单 处理
        $data_c =   $this->_post_validation_c($data_c); //相册 处理    

        $this->_foreach_menu_mdl($data_b, $goods_id); //FOREACH 入菜单库   新菜单 加进去 没第3个参数的是 insert
        $this->_foreach_images_mdl($data_c, $goods_id); //FOREACH 入图片库 新图片 加进去

        $this->_foreach_menu_mdl($data_b_old, $goods_id, $goods_id); //老菜单更新  有第3个参数的是 update
        $this->_foreach_images_mdl($data_c_old, $goods_id, $goods_id); //老图片更新
    }
    
    /** 数据处理 */
    function _post_validation_a($data)
    {
        //基本信息
        $data['cid_a']      =    (!empty($data['cid_a'])) ? substr(intval($data['cid_a']), 0, 5) : 0;
        $data['cid_b']      =    (!empty($data['cid_b'])) ? substr(intval($data['cid_b']), 0, 5) : 0;
		$data['area_id']    =    (!empty($data['area_id'])) ? substr(intval($data['area_id']), 0, 5) : 0;
        $data['goods_name'] =    mb_substr($data['goods_name'], 0, 120);        
        $data['keywords']   =    mb_substr($data['keywords'], 0, 120);
        $data['description']=    mb_substr($data['description'], 0, 120);
        $data['address']    =    mb_substr($data['address'], 0, 120);        
        $data['l_price']    =    substr(intval($data['l_price']), 0, 8);
        $data['h_price']    =    substr(intval($data['h_price']), 0, 8);
        $data['tables']     =    substr(intval($data['tables']), 0, 4);
        $data['score']      =    substr($data['score'], 0, 5);        
        $data['contents']   =    mb_substr($data['contents'], 0, 2800);
        $data['contentsa']  =    mb_substr($data['contentsa'], 0, 2800);
        $data['preferential']=   substr($data['preferential'], 0, 1);
        $data['subway']     =    mb_substr($data['subway'], 0, 40);
        $data['bus']        =    mb_substr($data['bus'], 0, 40);
        $data['map']        =    mb_substr($data['map'], 0, 1500);
        $data['order_id']   =    substr(intval($data['order_id']), 0, 8);
      
        return $data;
    }
    
    function _post_validation_b($data)
    {        
        //菜单
        $data['menu_title'] =    $this->_ary_substr($data['menu_title'], 250);//1维数组 截取函数_ary_substr
        $data['menu_price'] =    $this->_ary_substr($data['menu_price'], 5, 1);
        $data['menu_name']  =    $this->_ary_substr($data['menu_name'], 1000);
        $data['menu_content']=   $this->_ary_substr($data['menu_content'], 250);   
        
        return $data;        
    }
    
    function _post_validation_c($data)
    { 
        //相册 
        $data['img_path']   =    $this->_ary_substr($data['img_path'], 250);
        $data['img_name']   =    $this->_ary_substr($data['img_name'], 250);
        $data['img_height'] =    $this->_ary_substr($data['img_height'], 2, 1);
        $data['img_tables'] =    $this->_ary_substr($data['img_tables'], 5, 1);  
        $data['img_hall']   =    $this->_ary_substr($data['img_hall'], 1, 1); 
        
        return $data;          
    }    
    
    
    
    /** 
     * 遍历入 菜单库
     * $data    数据
     * $goods_id
     * $update  大于0则更新
     * 
     */
    function _foreach_menu_mdl($data, $goods_id, $update = 0){  
        return TRUE;
		//判断是否空		
        $data['menu_title']   =   (array)$data['menu_title'];
        $data['menu_title']   =   array_filter($data['menu_title']); //过滤一下
        if(empty($data['menu_title'])) return FALSE;

        foreach($data['menu_title'] as $key => $value)
        {
            $_data  =   array(
                            'menu_title'    =>  $data['menu_title'][$key],
                            'menu_price'    =>  array_key_exists($key, $data['menu_price'])  ? $data['menu_price'][$key]   : intval(0),
                            'menu_name'     =>  array_key_exists($key, $data['menu_name'])   ? $data['menu_name'][$key]    : '',
                            'menu_content'  =>  array_key_exists($key, $data['menu_content'])? $data['menu_content'][$key] : '',
                            'goods_id'      =>  $goods_id,                          
                            );
            
            if($data['menu_title'][$key] == '' || !is_numeric($key))continue;  //判断空或不是数字的

            if($update > 0)//检查是 update  还是  insert
            {
                $this->lm_menu_mdl->update($_data, array('menu_id' => $key)); //更新
            }else
            {
                $this->lm_menu_mdl->add($_data);//入库 
            }
                       
            $_data  =   array();
            
        }
        
        return TRUE;
    }
    
    /** 
     * 遍历入 图片库
     * $data    数据
     * $goods_id
     * $update  大于0则更新
     * 
     */
    function _foreach_images_mdl($data, $goods_id, $update = 0){        
        
        $i  =   0;  //记录第1次 入库的图片
        
        //判断是否空
        $data['img_name']   =   (array)$data['img_name'];//强转数组        
        if(!array_key_exists('img_path', $data))//没有图片 键时,增加键
        {
            $data['img_path']   =   array();
        }
       
        $data['img_name']   =   array_filter($data['img_name']); //过滤一下
        if(empty($data['img_name'])) return FALSE;
        
        //循环入库
        foreach($data['img_name'] as $key => $value)
        {
            $_data  =   array(
                            'img_path'    =>  array_key_exists($key, $data['img_path'])   ? $data['img_path'][$key]   : 0,
                            'img_name'    =>  array_key_exists($key, $data['img_name'])   ? $data['img_name'][$key]   : 0,
                            'img_height'  =>  array_key_exists($key, $data['img_height']) ? $data['img_height'][$key] : 0,
                            'img_tables'  =>  array_key_exists($key, $data['img_tables']) ? $data['img_tables'][$key] : 0,
                            'img_hall'    =>  array_key_exists($key, $data['img_hall'])   ? $data['img_hall'][$key]   : '0',
                            'img_hot'     =>  array_key_exists($key, $data['img_hot'])    ? $data['img_hot'][$key]    : '0',
                            'create_time' =>  time(),
                            'goods_id'    =>  $goods_id,                          
                            );
                            
            if($data['img_name'][$key] == '' || !is_numeric($key))continue;  //判断空
            if($update > 0)//检查是 update  还是  insert
            {
                //不需要更新的数据
                unset($_data['img_path']);
                unset($_data['create_time']);   
                    
                    //选中图片  更新至商品库。
                    if($key == $data['img_hot'][0])
                    {
                      
                       $img_row    =   $this->lm_images_mdl->select(array('img_id' => $key));
                       $img_path   =   $img_row ?   $img_row->img_path  :   '';
                       $this->lm_goods_mdl->update(array('img_path'  =>  $img_path), 
                                                   array('goods_id'  =>  $goods_id)
                                                   );
                       $_data['img_hot']    =   1;
                    }
                
                
                $this->lm_images_mdl->update($_data, array('img_id' => $key)); //更新
            }else
            {
                $i++;//记录次数                
                //新增的时候要 判断数据库是否已经有推荐了，有推荐则不更新
                $img_hot_row    =   $this->_img_hot_row(array('goods_id' => $goods_id));
                
                //第1 张图片 并且无推荐  入商品库  
                if($i == 1  &&  !$img_hot_row)
                {
                   
                   $this->lm_goods_mdl->update(
                                                array('img_path'  =>  $_data['img_path']), 
                                                array('goods_id'  =>  $goods_id)
                                               );
                   $_data['img_hot']    =   1;
                }
                
                $this->lm_images_mdl->add($_data);//入库

            }
            
            //商品推荐图片。如果选中推荐  则 更新图片路径至 商品库   或者插入 第1张的时候

            
            
            $_data  =   array();//放空
           
  
        }
        
        return TRUE;
    }    
    
    
    /**
     * 
     * 截取 1维 数组长度
     * $data  数组
     * length  长度
     * str_int  默认是0  字符串，否则是1执行 intval
     * 
     * 
     */
     function _ary_substr($data, $length = 0, $str_int = 0)
     {
        $_data = array();        
        if(!$data)return FALSE;
        
        foreach($data as $key => $value)
        {
            if(!$value)continue;
            if($str_int == 0)
            {                
                if(!$value)$value = '';
                $_data[] = mb_substr($value, 0, $length);
                
            }else
            {
                if(!$value)$value = 0;
                $_data[] = substr(intval($value), 0, $length);
                
            }
            
        }
        
        return $_data;
        
     }
     
     
     /** 删除商品 */
     function _del($goods_id)
     {
        $goods_id = is_array($goods_id) ? $goods_id : (array)$goods_id;
            foreach($goods_id as $id)
            {
                $this->_goods_del_menu(intval($id)); //检测是否有 子会议室。
				$nid	=	0;
				$nid	=	$id ? substr(intval($id), 0, 5) : 0;			
				$this->auth->is_me(array('goods_id'=>$nid), 'lm_goods_mdl');//只能操作自己的信息
				
				$result =   $this->lm_goods_mdl->del(array('goods_id'=>intval($id)));   
                            $this->lm_images_mdl->del(array('goods_id'=>intval($id))); //同时删除图片
                            $this->lm_menu_mdl->del(array('goods_id'=>intval($id))); //同时删除菜单
            }
        
		
     }
     
    
    /** 删除 图片 images ajax */
    function del_img($img_id = 0, $admin_id = 0)
    {
        
        $img_id =   (!empty($img_id) && is_numeric($img_id)) ? substr(intval($img_id), 0, 8) : 0;
        
        //检查编辑员 只能删除自己的img
        if($this->auth->_user['group'] == 'edit')
        {
            $row    =   $this->lm_images_mdl->select(array('img_id' => $img_id));
            if($row)
            {
                $row_goods   =   $this->lm_goods_mdl->select(array('goods_id = ' => $row->goods_id));
                if($row_goods)
                {
                    if($row_goods->admin_id !== $this->auth->_user['admin_id'])
                    {
                        show_error('您的权限只能删除属于自己的图片！');
                        go_back();
                    }else
                    {
                        return $this->lm_images_mdl->del(array('img_id' => $img_id)); 
                    }
                }
            }
        }
        
        if($this->auth->_user['group'] == 'manage')  //管理员有删除权限
        {            
            return $this->lm_images_mdl->del(array('img_id' => $img_id)); 
        }
        
        return $this->lm_images_mdl->del(array('img_id' => $img_id));        
    }
    
    /** 删除 菜单 menu ajax */
    function del_menu($menu_id = 0)
    {

        $menu_id =   (!empty($menu_id) && is_numeric($menu_id)) ? substr(intval($menu_id), 0, 8) : 0;
        
        //检查编辑员 只能删除自己的img
        if($this->auth->_user['group'] == 'edit')
        {
            $row    =   $this->lm_menu_mdl->select(array('menu_id' => $menu_id));
            if($row)
            {
                $row_goods   =   $this->lm_goods_mdl->select(array('goods_id = ' => $row->goods_id));
                if($row_goods)
                {
                    if($row_goods->admin_id !== $this->auth->_user['admin_id'])
                    {
                        show_error('您的权限只能删除属于自己的图片！');
                        go_back();
                    }else
                    {
                        return $this->lm_menu_mdl->del(array('menu_id' => $menu_id));   
                    }
                }
            }
        }
        
        if($this->auth->_user['group'] == 'manage')  //管理员有删除权限
        {            
            return $this->lm_menu_mdl->del(array('menu_id' => $menu_id));   
        }
        
        return $this->lm_menu_mdl->del(array('menu_id' => $menu_id));        
    }
    
    
    /** 检测图片库 该商品 推荐唯一  */
    function _img_hot_row($ary)
    {
        $img_hot_row    =   $this->lm_images_mdl->select_result($ary);

        if($img_hot_row){
            foreach($img_hot_row as $row)
            {
                if($row->img_hot    ==  1)
                {
                    return TRUE;
                }
            }
        }

        return FALSE;
       
    }
	
	/** 是否有子会议室   */
	function _goods_del_menu($goods_id = 0)
	{
		$row = $this->lm_menu_mdl->select_result(array('goods_id' => $goods_id));
		if($row)
		{
			show_error("请先删除酒店下的会议室！");
			exit();
		}
		return TRUE;
	}
	
	

	/** 根据子id 获取父ID **/
	function _area_parent_id($area_id, $ary)
	{
		foreach($ary as $row)
		{
			if($row->cat_id == $area_id)
			{
				return $row->parent_id;
			}
			
		}
		return false;
	}
	
	
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
		
		
		//属性表搜索  lm_menu_att  取得符合条件的menu_id  12.20 add
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
		$select_goods 	=	'select goods_id, goods_name, cid_a, cid_b, area_id, l_price, score, img_path, address, create_time, admin_id from lm_goods where goods_id>0 ';
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
		
		
		
        $limit  	=   intval(15);  //页面显示数目 		
        $sql		=   $select_goods.$goods_sql.' limit '.$page.' , '.$limit;  
        $sql_count	=	$select_count.$goods_sql;  //总记录数sql
		
		//echo($sql);
		
		$url        =   site_url(LUMN_ADMIN_PATH.'/goods/g_list/?cid_a='.$cid_a.'&cid_b='.$cid_b.'&area_id='.$area_id.'&score='.$score.'&price_a='.$price_a.'&price_b='.$price_b.'&put_id='.$put_id.'&menu_table='.$menu_table.'&menu_l_price='.$menu_l_price.'&goods_name='.$goods_name.'&page='.$page);
		
		
		
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
	
	
    
    
}

?>