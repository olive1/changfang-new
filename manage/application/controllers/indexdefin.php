<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 


/** 商品类 */
class Indexdefin extends Lm_Admin_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_index_mdl');

    }
    
    /** 添加 */
    function add(){
        
        $this->_form_validation();  //验证
        $success    =   $this->_insert();// 入库
        $success    =   $success ? '添加成功！' : '添加失败';
        $this->session->set_flashdata('success', $success);
        go_back();
        //$this->load->view(LUMN_ADMIN_PATH.'/goods_add', $data);
    }
    
    /** 删除 */
    function del($goods_id = 0){        
        
        $this->auth->exceed('manage');//管理员才有的权限
        $goods_id       =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
        $goods_id_list  =   $this->input->post('goods_id',  TRUE);//ID列表        
        $goods_id       =   $goods_id   ?   $goods_id   :   $goods_id_list;

        go_back(); 
    }
    
    /** 编辑 键值列表  */
    function update(){
        $id=$this->input->post('index_id', TRUE);

        $data   =   array(
                            'index_id'      =>  $this->input->post('index_id', TRUE),
                            'index_value'   =>  $this->input->post('index_value', TRUE),
                            'index_content' =>  $this->input->post('index_content', TRUE),
							'index_sort'    =>  $this->input->post('index_sort', TRUE),
                        );
        
        $success    =   $this->_update($data);
        if($success) $this->session->set_flashdata('success', '更新成功');
        
        go_back();
    }
        
    /** 列表 */
    function i_list(){
        
		$orderby = 'index_sort asc';
        $data['index_row']  =   $this->lm_index_mdl->select_result(array(), $orderby);
        
        $this->load->view(LUMN_ADMIN_PATH.'/index_list', $data);
    } 
    
    
    /** 上传图片 */
    function upload(){

          $config['upload_path']    = getcwd().'\lm_uploads';
          $config['allowed_types']  = 'gif|jpg|png';
          $config['max_size']       = '1000';
          $config['max_width']      = '1024';
          $config['max_height']     = '768';
          $config['file_name']      = time();

        $this->load->library('upload', $config);
        

          if ( ! $this->upload->do_upload())
          {
            $error = array('error' => $this->upload->display_errors());
            $this->session->set_flashdata('upload_success', '上传失败！');
           
          } 
          else
          {
            $data = array('upload_data' => $this->upload->data());
            $this->session->set_flashdata('upload_success', '上传成功！图片地址：'.base_url().substr(LUMN_IMAGE_PATH,1).$data['upload_data']['file_name']);
            
          }
            
           go_back();
        
    }
    
    
    
    
    ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
    /** 验证 */
    function _form_validation(){
        
        $this->form_validation->set_rules('index_content', '名称', 'max_length[80]|xss_clean');
        $this->form_validation->set_rules('index_value', '值', '|xss_clean');        
        $this->form_validation->set_rules('index_sort', '序号', 'max_length[5]|xss_clean');   
    }
    
    /** 入库  */
    function _insert(){
        $index_sort = $this->input->post('index_sort', TRUE);
		$index_sort =   is_numeric($index_sort) ? $index_sort : 0; //sort必须为数字
        $data   =   array(
                            'index_content' =>  $this->input->post('index_content', TRUE),
                            'index_value'   =>  $this->input->post('index_value', TRUE),
							'index_sort'    =>  $this->input->post('index_sort', TRUE),
                            );
        return $this->lm_index_mdl->add($data);
        
    }
    
    /**  更新IDLIST */
    function _update($data){        

        $data['index_id']   =   is_array($data['index_id']) ? $data['index_id'] : (array)$data['index_id'];
        foreach($data['index_id'] as $key => $value)
        {
            
            $index_id   =   is_numeric($data['index_id'][$key]) ? $data['index_id'][$key] : 0; //id必须为数字
			$index_sort =   is_numeric($data['index_sort'][$key]) ? $data['index_sort'][$key] : 0; //sort必须为数字
            $_data      =   array(
                                    'index_value'   =>  $data['index_value'][$key],
                                    'index_content' =>  $data['index_content'][$key],
									'index_sort'    =>  $index_sort,
                                );

            $this->lm_index_mdl->update($_data, array('index_id' => $index_id));
        }
        return TRUE;
        
    }

    
    
}

?>