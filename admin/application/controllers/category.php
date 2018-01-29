<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 总分类-无限分类
 * 
 */
 
 class Category extends Lm_Admin_Controller{
    
    private $_data  =   array();//所有数据
    private $_list  =   '';     //存储内容
    
    function __construct(){
        
        parent::__construct();
        $this->auth->exceed('admin');//超级管理员的极限
        $this->load->model('lm_category_mdl');
        $this->_data =   $this->lm_category_mdl->a_list();  //获取所有数据
        
    }
    
    /** 增加分类  */
    function add(){        
        
        $this->_data_list();//递归 获取分类        
        $data['_list']   =   $this->_list;
        //$this->lm_category_mdl->all_list();//执行递归
        
        $this->_form_validation();//表单验证        
        if( $this->form_validation->run()   ==  FALSE ){
            
            $this->load->view(LUMN_ADMIN_PATH.'/category_add', $data);    
        }else{
            
            $this->_insert();
            $this->session->set_flashdata('success', '添加分类成功！');
            go_back();
        }         
        
    }
    
    /** 删除分类 */
    function del($cat_id = 0){
        
        $state  =   $this->_del(intval($cat_id)) ?   '删除成功！' :   '删除失败！';
        $this->session->set_flashdata('success', $state);
        go_back();
    }
    
    
    /** 编辑分类  */    
    function update($cat_id =   0){
        
        $category           =   $this->lm_category_mdl->select_id(intval($cat_id));//返回ID行记录
        if(empty($category))
        {
            show_error('不存在的ID，或记录已被删除！');
            exit();
        }
        $data['category']   =   $category;
        
        $this->_data_list(0, 0, '', intval($cat_id));//递归 获取分类        
        $data['_list']   =   $this->_list;
        
        $this->_form_validation();
        if($this->form_validation->run()   ==  FALSE)
        {
            $this->load->view(LUMN_ADMIN_PATH.'/category_update', $data);
        }else
        {
            $this->_update(intval($cat_id)); //更新
            $this->session->set_flashdata('success', '修改成功！');
            go_back();
        }
        
        
    }
    
    /** 分类list */
    function c_list(){
        
        $this->_a_list();//递归
        $data['_list'] =  $this->_list;
        $this->load->view(LUMN_ADMIN_PATH.'/category_list', $data);
        
    }
    
    
    /////////////以下函数供调用/////////////////////////////////////////////////////////////
    
    /** 验证 */
    function _form_validation(){
        
        $this->form_validation->set_rules('cat_name', '名称', 'required|trim|max_length[80]');        
        $this->form_validation->set_rules('parent_id', '分类', 'required|trim|min_length[1]|max_length[7]|is_natural');
        $this->form_validation->set_rules('order_id', '排序号', 'required|trim|min_length[1]|max_length[7]|is_natural');
        $this->form_validation->set_rules('keywords', '关键词', 'max_length[25]');
        $this->form_validation->set_rules('description', '描述', 'max_length[120]');
        
    }
    
    /** 入库 */
    function _insert(){
        $parent_id	=	$this->input->post('parent_id', TRUE);
        $data   =   array(
                        'cat_name'      =>  $this->input->post('cat_name',  TRUE),
                        'parent_id'     =>  $parent_id,
                        'order_id'      =>  $this->input->post('order_id',  TRUE),
                        'keywords'      =>  $this->input->post('keywords',  TRUE),
                        'description'   =>  $this->input->post('description',TRUE),
                        
                    );
        
        //名称中带有双逗号【,,】 分隔符的则批量添加
        $cat_name_ary  =   explode(',,', $data['cat_name']);
        
        foreach($cat_name_ary as $ary){            

            $data['cat_name']   =   $ary;
            $this->lm_category_mdl->add($data);

        }
        $this->session->set_flashdata('parent_id_ss', $parent_id); //设置上次父ID
    }
    
    /** 更新入库    */
    function _update($cat_id)
    {
        $parent_id	=	$this->input->post('parent_id', TRUE);		
		$data   =   array(
                        'cat_name'      =>  $this->input->post('cat_name',  TRUE),
                        'parent_id'     =>  $this->input->post('parent_id', TRUE),// 父类ID
                        'order_id'      =>  $this->input->post('order_id',  TRUE),
                        'keywords'      =>  $this->input->post('keywords',  TRUE),
                        'description'   =>  $this->input->post('description',TRUE),
                        
                    );
        if($parent_id == $cat_id)//默认父ID 等于自身
		{
			unset($data['parent_id']);
		}
		
        $update =   $this->lm_category_mdl->update($data, $cat_id);
        if(!$update){
            show_error('更新失败！！');
            exit();
        }

    }
    
    
    /** 
     * 递归所有-用于add 增加时调用
     * $id      遍历的父ID
     * $b       分隔符数字
     * $bb      分隔符
     * $select  选中ID则SELECTED
     * 
        */
        
    function _data_list($parent_id = 0, $b = 0, $bb = '', $select = 0)
    {
        
        if($bb == '')
        {
            $bb = '├';
        }
        if($b == 0)
        {
           $bb = '';  
        }
        
        //生成 $b个 符号($bb))
        $space  =   str_repeat($bb,$b);
        $b++;
        
        //每次都要在  整个_data数组中查询parent_id
        foreach($this->_data as $row)
        {
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->parent_id == $parent_id)
            {
                
                $this->_list =  $this->_list.
                                '
                                <option value="'.$row->cat_id.'"';
                
                //更新的ID  与当前数组ID吻合  则SELECTED
                if($select>0 && $select == $row->cat_id)
                {
                    $this->_list =  $this->_list.' selected ';
                } 
				
				//非更新时,并且有上级父ID缓存
                if($select == 0)
				{
					$parent_id_ss = $this->session->flashdata('parent_id_ss');
					if($parent_id_ss ==  $row->cat_id)$this->_list =  $this->_list.' selected ';				
				}
                $this->_list =  $this->_list.
                                '>
                                    '.$space.$row->cat_name.'                                
                                </option>
                                '; 
                                  
                $this->_data_list($row->cat_id, $b, '', $select);
            }
        }
        
    }
    
    
    
    /** 
     * 递归所有-用于list 增加时调用
     * $id      遍历的父ID
     * $b       分隔符数字
     * $bb      分隔符
     * $select  选中ID则SELECTED
     * 
        */
        
    function _a_list($parent_id = 0, $b = 0, $bb = '&nbsp;&nbsp;')
    {
                
        if($b == 0)
        {
           $bb = '';  
        }
        
        //生成 $b个 符号($bb))
        $space  =   str_repeat($bb,$b);
        $b++;
        
        //每次都要在  整个_data数组中查询parent_id
        foreach($this->_data as $row)
        {
            // 查询整个数组中  是否有这个父ID，有的话则递归
            if($row->parent_id == $parent_id)
            {
			     $this->_list =  $this->_list.
                                '                 
                    			<div id='.$row->cat_id.'>
                        			<div class="list_fenlei" onMouseMove="this.style.backgroundColor=\'#ffffd4\'" onmouseout="this.style.backgroundColor=\'#f1f5fa\'" >
                                    '.$space.'
                                    <img id="img'.$row->cat_id.'" ';
                            			
                                        if($this->_array_search($row->cat_id, $this->_data))//检索  是否还有父ID，有就可以click
                                        {
                            			     $this->_list =  $this->_list.
                                                            '
                                                             style="cursor:pointer"  onclick="jj('.$row->cat_id.');" 
                                                             src="'.base_url().'admin/images/lm_x.jpg" 
                                                            ' ;
                            			}else{
                            			     $this->_list =  $this->_list.
                                                            '
                                                             src="'.base_url().'admin/images/lm_z.jpg" 
                                                            ' ;
                            			}
                        			$this->_list =   $this->_list.
                                    ' /> 
                                    排序 <input type=text value='.$row->order_id.' size=3 name="options[]">
                                         <input type=hidden value='.$row->cat_id.' name="cat_id[]">'.$row->cat_name.'
                                    </div>
                                    
                        			<div class="list_bianji">
                                        <a href="'.site_url().'/'.LUMN_ADMIN_PATH.'/category/update/'.$row->cat_id.'">
                                            <img src="'.base_url().'admin/images/icon_edit.gif" border=\"0\">
                                        </a>
                                    </div>
                                    
                        			<div class="list_bianji">
                                        <a href="'.site_url().'/'.LUMN_ADMIN_PATH.'/category/del/'.$row->cat_id.'" onclick="return confirm(\'确定删除吗！\')">
                                            <img src="'.base_url().'admin/images/icon_drop.gif" border=\"0\">
                                        </a>
                                    </div>

                        			<div id="abd'.$row->cat_id.'" style="display:none;">
                                    
                    			';                    			
            
                $this->_a_list($row->cat_id, $b);
                
                $this->_list =   $this->_list.'
                                    </div>
                                </div>
                                ';
                
            }
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
     * 删除分类
     * 有了类则 遍历
     */
    function _del($cat_id){
        
        if($this->_array_search($cat_id, $this->_data))//如果有子类,先删除子类
        {
            
            $this->session->set_flashdata('failure', '请先删除子分类！');  
            go_back();          
            //遍历删除
            //$this->_del_id_list($cat_id, $this->_data);
        }else
        {
            return $this->lm_category_mdl->del($cat_id);
        }
        return false;
    }
    
    /** 删除列表  */
    function _del_id_list($cat_id, $data)
    {
        foreach($data as $row)
        {
            if($row->parent_id == $cat_id)
            {
                
                $this->_del_id_list($row->cat_id);
            }
        }
    }
    
    
    
 }



?>