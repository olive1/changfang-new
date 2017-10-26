<?php
class Welcome extends LM_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_index_mdl');
    }

    function index()
	{        
		
        //��ҳ ��������
        $index_result           =   $this->lm_index_mdl->select_result_ary(array(), 'index_sort asc');  
        
        //������Ʒ����  index_result[0]Ϊ�����-1
        $data['index_result_0'] =   $index_result[0]['index_value'];//�������
        $data['index_result_1'] =   $index_result[1]['index_value'];//����л�
        $data['index_result_2'] =   $this->_foreach($index_result[2]['index_value']);//���žƵ�Ԥ��
        $data['index_result_3'] =   $this->_foreach($index_result[3]['index_value']);//�ؼ۾Ƶ�Ԥ��
        $data['index_result_4'] =   $this->_foreach($index_result[4]['index_value']);//��ѡ�Ƶ�
        $data['index_result_5'] =   $this->_foreach($index_result[5]['index_value']);//ÿ�ܾƵ�
        $data['index_result_6'] =   $index_result[6]['index_value'];//���GD1
        $data['index_result_7'] =   $index_result[7]['index_value'];//���GD2
        $data['index_result_8'] =   $index_result[8]['index_value'];//���GD3
        
        $data['index_result_9'] =   $this->_foreach_xuqiu($index_result[9]['index_value']);//��������
        $data['index_result_10']=   $this->_foreach_news($index_result[10]['index_value']);//�Żݻ
        $data['index_result_11']=   $this->_foreach_news($index_result[11]['index_value']);//������Ѷ
		$data['index_result_12']=   $this->_foreach_news($index_result[12]['index_value']);//����֪ʶ
		$data['index_result_14'] =  $index_result[14]['index_value'];//��������
		
        $this->load->view('lm_index', $data);
    }
    
    
    
    
    
    //////////////////////////���º���������   */
    
    /** ������Ʒ ID  ����array  */
    function _foreach($data)
    {
        $this->load->model('lm_goods_mdl');
        $this->load->model('lm_category_mdl');
        $data   =   explode(',' , $data);
        $_data  =   array(); //�洢 ������
        foreach($data as $goods_id)
        {
            $goods_id   =   (!empty($goods_id) && is_numeric($goods_id)) ? substr(intval($goods_id), 0, 8) : 0;
            $row        =   $this->lm_goods_mdl->select_where(
                                                'goods_id, goods_name, img_path, score, address, tables ', 
                                                array('goods_id' => $goods_id)
                                                    );
			
			if($row)//������������Ǽ�
			{
				$score_row	=	$this->lm_category_mdl->select(array('cat_id' => intval($row['score'])));
				$row['score']=	$score_row	?	intval($score_row->keywords)	:	1;//�����Ǽ�
				$row    ?   $_data[] = $row : '';
			}
			
        }
        
        return $_data;
    }
    
    
    /** ������Ѷ ����array */
    function _foreach_news($data)
    {
        $this->load->model('lm_news_mdl');
        
        $data   =   explode(',' , $data);
        $_data  =   array(); //�洢 ������
        foreach($data as $news_id)
        {
            $news_id   =   (!empty($news_id) && is_numeric($news_id)) ? substr(intval($news_id), 0, 8) : 0;
            $row       =   $this->lm_news_mdl->select_where(
                                                'news_id, newstitle, newsimg', 
                                                array('news_id' => $news_id)
                                                    );
            $row    ?   $_data[] = $row : '';
        }
        
        return $_data;
        
    }
	
	/** �������� ����array */
	function _foreach_xuqiu($data)
	{
		$this->load->model('lm_fabu_x_mdl');
        
        $data   =   explode(',' , $data);
        $_data  =   array(); //�洢 ������
        foreach($data as $fabuid)
        {
            $fabuid   =   (!empty($fabuid) && is_numeric($fabuid)) ? substr(intval($fabuid), 0, 8) : 0;
            $row       =   $this->lm_fabu_x_mdl->select_where(
                                                'fabuid, title, ver', 
                                                array('fabuid' => $fabuid, 'ver'=>1)
                                                    );
            $row    ?   $_data[] = $row : '';
        }
        
        return $_data;
        
	}
    
    
    
}

?>