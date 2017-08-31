<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class News_class extends Lm_Admin_Controller
{
    private $_list=''; //存储递归数据
	
    function __construct(){
        parent::__construct();
		$this->load->model('lm_news_class_mdl');
    }
    
    function add($news_class_id = 0)
	{
        
		$row	=	$this->_is_news_class($news_class_id); //父ID有效性		
		$data['news_class_title']	=	$row	?	$row['news_class_title']	:	'顶级栏目';  
		$data['news_cla_id']		=	$news_class_id; 		
		
		$this->_form_validation(); 	//验证	
		if($this->form_validation->run() == FALSE)
		{
            $this->load->view(LUMN_ADMIN_PATH.'/news_class_add', $data);
        } 
        else{
            $success=	$this->_insert($news_class_id);
        }
        
		
    }
    
    function del($news_class_id = 0)
	{                
        
        $row	=	$this->_is_news_class($news_class_id); //ID有效性	
		if(!$row)
		{
			show_error('ID不正确！');
			exit();
		}
		$result =	$this->lm_news_class_mdl->select_result(array('news_cla_id' => $news_class_id));//有子类?
		
		if($result)
		{
			show_error('该栏目下有子类，请先删除子类！');
			exit();
		}
		
		$success         		 =   $this->_del($news_class_id);
		if($success) 			 $this->session->set_flashdata('success', '删除成功');
        go_back(); 
    }
	
	
    function update($news_class_id = 0)
	{
		$row_class		 			=	$this->lm_news_class_mdl->select_row_array(
										array('news_class_id'=>intval($news_class_id))
										);
		if(!$row_class)
		{
			show_error('该记录不存在！');
			exit();
		}
		
		$row			 			=	$this->_is_news_class($row_class['news_cla_id']); //父ID有效性		
		$data['news_class_title']	=	$row	?	$row['news_class_title']	:	'顶级栏目';  
		$data['news_cla_id']		=	$row['news_cla_id']; 
		$data['news_row']			=	$row_class; 
		
		$this->_form_validation();
		if($this->form_validation->run() == FALSE)
		{
            $this->load->view(LUMN_ADMIN_PATH.'/news_class_add', $data);
        } 
        else{
            $success=	$this->_update($news_class_id);
        }
       

    }
	
	
	
    function n_list($news_class_id = 0)
	{
        $result 	=   $this->lm_news_class_mdl->select_result(array());	//所有数据	
		$this->_get_news_class_list(0, $result);
		$data['list']	=	$this->_list;
        $this->load->view(LUMN_ADMIN_PATH.'/news_class_list', $data);
    }     

	
	
	
	//****以下方法供调用   ***/
	
	
    function _form_validation()
	{
        $this->form_validation->set_rules('news_class_title', '标题', 'required|min_length[1]|max_length[80]|xss_clean'); 
		$this->form_validation->set_rules('news_class_title', '标题', 'max_length[80]|xss_clean'); 
		$this->form_validation->set_rules('keywords', 'keywords', 'max_length[80]|xss_clean'); 
		$this->form_validation->set_rules('description', 'description', 'max_length[1000]|xss_clean'); 
		$this->form_validation->set_rules('news_class_content', '内容', 'max_length[3000]|xss_clean'); 
    }
	
	
    function _insert($news_class_id)
	{
        	
        $data   =   array(
                            'news_class_title' 	=>  $this->input->post('news_class_title', TRUE),
							'keywords' 			=>  $this->input->post('keywords', TRUE),
							'description' 		=>  $this->input->post('description', TRUE),
							'news_class_content'=>  $this->input->post('news_class_content', TRUE),
							
                            'news_cla_id'   	=>  $news_class_id,							
                            );
        $success	=	$this->lm_news_class_mdl->add($data);
        $success    =   $success ? '添加成功！' : '添加失败';
        $this->session->set_flashdata('success', $success);
        go_back();   
        
    }
	
	
    function _update($news_class_id)
	{
        	
        $data   =   array(
                            'news_class_title' 	=>  $this->input->post('news_class_title', TRUE),
							'keywords' 			=>  $this->input->post('keywords', TRUE),
							'description' 		=>  $this->input->post('description', TRUE),
							'news_class_content'=>  $this->input->post('news_class_content', TRUE),
							
                            );
        $success	=	$this->lm_news_class_mdl->update($data, array('news_class_id' => $news_class_id));
        $success    =   $success ? '更新成功！' : '更新失败';
        $this->session->set_flashdata('success', $success);
        go_back();   
        
    }
	
	
	
	
    function _updateyyy($data){        

        $data['news_class_id']   =   is_array($data['news_class_id']) ? $data['news_class_id'] : (array)$data['news_class_id'];
        foreach($data['news_class_id'] as $key => $value)
        {
            
            $news_class_id   =   is_numeric($data['news_class_id'][$key]) ? substr(intval($data['news_class_id'][$key]), 0, 8) : 0; //id必须为数字
			$news_class_title =	$data['news_class_title'][$key] ? $data['news_class_title'][$key] : 0;
			
            $_data      =   array(
                                    'news_class_title'   =>  $news_class_title,
                                );

            $this->lm_news_class_mdl->update($_data, array('news_class_id' => $news_class_id));
        }
        return TRUE;
        
    }
	
	
     function _del($news_class_id)
     {
        
		$result =   $this->lm_news_class_mdl->del(array('news_class_id'=>intval($news_class_id)));
        
        return $result;
     }

	 
	 
	function _is_news_class($news_class_id)
	{
		$news_class_id = (!empty($news_class_id) && is_numeric($news_class_id)) ? substr(intval($news_class_id), 0, 8) : 0;
		if($news_class_id == 0)	return false;
		
		$data = $this->lm_news_class_mdl->select_row_array(array('news_class_id' => $news_class_id));
			
		if(!$data)
		{
			show_error('该栏目不存在，请核实后添加！');
			exit();
		}
		return $data;
	}
	
	
	
	
	
	
	/** 
	*	分类列表
	*	递归所有子类。根据父类ID 和数据，news_cla_id父类ID 	
	*	$bb 分隔符
	*/
	
	function _get_news_class_list($news_cla_id = 0, $data='',$b = 0, $bb = '├')
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
			  $this->_list =  $this->_list.'<tr>';
			  $this->_list =  $this->_list.'<td class="bbc">';
			  $this->_list =  $this->_list.'<input type="checkbox" name="del_id[]" value="'.$row->news_class_id.'" />';
			  $this->_list =  $this->_list.$row->news_class_id;
			  $this->_list =  $this->_list.'</td>';
			  $this->_list =  $this->_list.'<td class="first-cell bbc" align="left"';
			  $this->_list =  $this->_list.' style="padding-left:'.$pl.'px;" ';
			  $this->_list =  $this->_list.'>';
			  $this->_list =  $this->_list.$space;
			  $this->_list =  $this->_list.'<a href="'.site_url(LUMN_ADMIN_PATH.'/news/n_list/?news_class_id='.$row->news_class_id).'">';
			  $this->_list =  $this->_list.$row->news_class_title;
			  $this->_list =  $this->_list.'</a>';
			  $this->_list =  $this->_list.'</td>';
			  $this->_list =  $this->_list.'<td align="left" class="bbc">';
			  $this->_list =  $this->_list.'<span>';
			  $this->_list =  $this->_list.'<a href="'.site_url(LUMN_ADMIN_PATH.'/news_class/add/'.$row->news_class_id).'">';
			  $this->_list =  $this->_list.'增加子类';
			  $this->_list =  $this->_list.'</a>';	
			  $this->_list =  $this->_list.' | ';	
			  $this->_list =  $this->_list.'<a href="'.site_url(LUMN_ADMIN_PATH.'/news_class/update/'.$row->news_class_id).'"  style="margin-left:30px;">';
			  $this->_list =  $this->_list.' 修改';
			  $this->_list =  $this->_list.'</a>';	
			  $this->_list =  $this->_list.' | ';	
			  $this->_list =  $this->_list.'<a onclick="return confirm("确定？")" href="'.site_url(LUMN_ADMIN_PATH.'/news_class/del/'.$row->news_class_id).'">';
			  $this->_list =  $this->_list.' - 删除';
			  $this->_list =  $this->_list.'</a>';				  
			  $this->_list =  $this->_list.'</span>';
			  
			  
			  $this->_list =  $this->_list.'</td>';
			  $this->_list =  $this->_list.'</tr>';
			  	
              $this->_get_news_class_list($row->news_class_id, $data, $b);
            }
        }
        
       
    }
	
	

	
	
	
	
	
    
}


?>