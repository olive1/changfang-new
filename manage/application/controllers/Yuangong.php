<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 
 * 包括常用类的调用方法：生成PDF，发送邮箱PHPmail，汉字转拼音
 * 员工信息 控制器
 */
class Yuangong extends MK_Admin_Controller {
	
	/** 
     * 传递到对应视图的数据
     *
     * @access private
     * @var array
     */
	private $_data = array();

	/**
     * 解析函数
     *
     * @access public
     * @var array
     */
	public function __construct()
	{
		parent::__construct();
		parse_str($_SERVER['QUERY_STRING'],$_GET); //链接参数用问号形式
		/** 权限确认 */
		$this->load->model("zidian_mdl");
        $this->load->model("yuangong_mdl");        
        
	}

    
    /**
     * 创建OFFER
     * 
     * 2、保存字段到数据库（get_offer_tmp SESSION）
     * 3、发送（保存数据库，关联字段值在MODEL里生成，如账号、工号）
     * 4、生存PDF
     * 5、发送邮箱
     */
    function add()
    {
        
        $fields = $this->yuangong_mdl->requireds();
        //var_export($fields);exit;
        
        $this->load->view('admin/yuangong/add');
    }
    
    function add_save()
    {
        $msg = '保存失败';
        $return_data = array('success'=>0, 'msg'=>'保存失败');
        $offer_tmp = $this->get_offer_tmp();
        if(!$offer_tmp || !is_array($offer_tmp)) 
        {
            json_encode_lm($return_data);
        }
        
        $post_filed = array(
            "xingming","danweimingchen_zidian","bumen_id","gangweimingchen_gz_zidian","ruzhishijian","youxiang","beizhu",
        );
        
        
        $add_data = array(
            "uid"=>$this->user->uid,
            "status_zidian" => 28, 
            "created"       => date("Y-m-d H:i:s")
        );
        //过滤不需要的字段
        foreach($post_filed as $k)
        {
            if(!array_key_exists($k,$offer_tmp)) 
            {
                continue;//这里应该写入日志 并返回失败信息
            }
            $add_data[$k] = $offer_tmp[$k];
        }
        
        
        
        //3、发送邮箱(这里修改为先发送邮箱。如果失败就不保存数据库了)
        $is_send    = $this->send_mail($offer_tmp);
        
        if(!$is_send)
        {
            $return_data = array('success'=>0, 'msg'=>'发送邮件失败');
            json_encode_lm($return_data);
        }
        
        
        //2、保存字段到数据库
        $insert_id    = $this->yuangong_mdl->create($add_data) ? 1 : 0;
        //echo $this->db->last_query();exit;
        
        if($insert_id) 
        {
            $success = 1;
            $msg = '成功';
        }
        $return_data  = array('success'=>$success, 'msg'=>$msg);
        
        //2-1 生成 账号和工号信息，并更新数据表
        $this->add_save_2($this->db->insert_id());
        
        json_encode_lm($return_data);
    }
    
    function add_save_2($id)
    {
        $row = $this->yuangong_mdl->get_row(array('id'=>$id));
        if(!$row) return false;
        
        $yuzhanghao     = $this->_get_yuzhanghao($row['xingming']);        
        if(!$yuzhanghao) return false;
        
        $row = $this->yuangong_mdl->get_row(array('yuzhanghao'=>$yuzhanghao));
        if($row) 
        {
            $yuzhanghao = $yuzhanghao.$id;
        }
        
        $update_data = array(
            'yuzhanghao' => $yuzhanghao,
            'gonghao' => 'PC'.str_pad($id,3,"0",STR_PAD_LEFT),
        );
        return $this->yuangong_mdl->update($id, $update_data);
    }
    
    function _get_yuzhanghao($name)
    {
        $this->load->library("han2pin2");
        $name1     = $this->han2pin2->name(mb_substr($name, 0, 1, 'utf-8'));
        $name2     = $this->han2pin2->abbr(mb_substr($name, 1,10, 'utf-8')); 
        $yuzhanghao     = implode("",$name1).$name2;
        return $yuzhanghao;
    }
    
    function send_mail($offer_tmp='')
    {  
        date_default_timezone_set('PRC'); 
        //1.生成PDF文件 加载PDF类 
        $html_content = $this->get_offer_tmp_html($offer_tmp);
        
        $file_path_name = $this->createPDF($html_content);    
        if(!$file_path_name) 
        {
            return false;
        }
        
        //2.发送email
        $this->config->load('phpmailer', TRUE);
        $config  = $this->config->item('phpmailer', 'phpmailer');
        $config['file_path_name']   = $file_path_name;
        $config['AddAddress']       = $offer_tmp['youxiang'];
        $config['Body']             = str_replace("{xingming}", $offer_tmp["xingming"], $config['Body']);       
        
        //print_r($config);exit;  
        
        $this->load->library('phpmailer/phpmailer');
        $mail   = $this->phpmailer;   
        
    	try { 
    		$mail->IsSMTP(); 
    		$mail->CharSet        ='UTF-8'; //设置邮件的字符编码，这很重要，不然中文乱码 
    		$mail->SMTPAuth       = true; //开启认证 
    		$mail->Port           = $config['Port']; 
    		$mail->Host           = $config['Host']; 
    		$mail->Username       = $config['Username']; 
    		$mail->Password       = $config['Password']; 
    		//$mail->IsSendmail(); //如果没有sendmail组件就注释掉，否则出现“Could not execute: /var/qmail/bin/sendmail ”的错误提示 
    		$mail->AddReplyTo($config['AddReplyTo'],"");//回复地址 
    		//$mail->AddCC($config['AddCC'],"");//抄送地址 
    				
    		$mail->From           = $config['From']; 
    		$mail->FromName       = $config['FromName']; 
    		$mail->AddAddress($config['AddAddress']); //员工邮箱
    		$mail->Subject        = $config['Subject']; 
    		$mail->Body           = $config['Body']; 
    		$mail->AltBody        = $config['AltBody']; //当邮件不支持html时备用显示，可以省略 
    		$mail->WordWrap       = $config['WordWrap'];  // 设置每行字符串的长度 
    		$mail->AddAttachment($config['file_path_name'],'录用通知.pdf');
    		$mail->IsHTML(true); 
    		$mail->Send(); 
    		return true;
    	} catch (phpmailerException $e) {
            $this->error_msg = $e;
    		return false;
    	} 
    }
    
    
function createPDF($content)
    {
        $offer_tmp = $this->get_offer_tmp();
        
        $this->load->library("tcpdf/Tcpdf");
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->SetCreator(PDF_CREATOR);
        
        $pdf->SetHeaderData("logo.png", 70, '' . '', '');

        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
        $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);


        $pdf->AddPage();
        $pdf->setPageMark();
        $pdf->SetFont('stsongstdlight', '', 13);
        $title = <<<EOD
<h2>普超控股</h2>
EOD;

        $pdf->writeHTML($content, true, false, false, false, '');
        $pdf->lastPage();

		$file_name = time();
        $file_path_name     = LM_UPLOAD_PATH."{$file_name}.pdf";
        
        $is_pdf = $pdf->Output($file_path_name, 'F');
        
        return $file_path_name;
    }
    
    
    /**
     * 保存offer数据为临时信息
     * 1、验证字段范围和必填字段
     */
    function set_offer_tmp()
    {
        $success    = 0;
        $msg        = '保存失败';
        $post_filed = array(
            "xingming","danweimingchen_zidian","bumen_id","gangweimingchen_gz_zidian","ruzhishijian","youxiang","xinzi","beizhu",
        );
        
        $offer_tmp  = $this->input->post($post_filed);
        
        //备注textarea换行显示
        $offer_tmp["beizhu"] = nl2br($offer_tmp["beizhu"]);
        //得到中文名称，便于预览时显示
        $offer_tmp['danweimingchen_zidian_name']        = zidian_valuename($offer_tmp['danweimingchen_zidian'], true);
        $offer_tmp['gangweimingchen_gz_zidian_name']    = zidian_valuename($offer_tmp['gangweimingchen_gz_zidian'], true);
        $offer_tmp['bumen_id_name']                     = bumen_name($offer_tmp['bumen_id'], true);
        
        
        $this->session->offer_tmp = $offer_tmp;
        
        if($this->get_offer_tmp()) 
        {
            $success = 1;
            $msg = "成功";
        }               
        
        $return_data = array('success' => $success, 'msg'=>$msg, 'offer_tmp'=>$offer_tmp);
        json_encode_lm($return_data);
        
        
    }
    
    
    /**
     * 获取offer数据临时信息
     */
    function get_offer_tmp()
    {
        return $this->session->offer_tmp;
    }   
    
    function get_offer_tmp_html($offer_tmp)
    {       
        $date   = date("Y-m-d");
        $a = <<<EOD
            <div style=" padding:20px; margin:20px;">    
                <div style="margin:20px; padding:20px; ">
                    <p style="font-size:18px;text-align:center;"><span style="color:#666666;">录用通知</span></p><p style="font-size:13px;text-align:left;"><span style="color:#666666;"><br></span></p>
        			
        			<p style="font-size:13px;"><span id="xingming_yl" style="font-weight:bold; margin-right:10px; ">{$offer_tmp["xingming"]}</span>    <span style="color:#666666;"> 先生／小姐： </span></p><p style="font-size:13px;"><span style="color:#666666;"><br></span></p>
        			
        			<p style="font-size:13px;"><span style="color:#666666;">很高兴通知您，您已被公司录用，详情如下：</span></p>
        			<p style="font-size:13px;"><span style="color:#666666;"><br></span></p><p style="font-size:13px;"><span style="color:#666666;">职位概况 </span></p>
        			
        			<p style="font-size:13px;"><span style="color:#666666;">1. 公司名称：</span><span style="" id="danweimingchen_zidian_yl">{$offer_tmp["danweimingchen_zidian_name"]}</span></p>
        			<p style="font-size:13px;"><span style="color:#666666;">2. 入职部门：</span><span style="" id="bumen_id_yl">{$offer_tmp["bumen_id_name"]}</span></p
        			><p style="font-size:13px;"><span style="color:#666666;">3. 入职岗位：</span><span style="" id="gangweimingchen_gz_zidian_yl">{$offer_tmp["gangweimingchen_gz_zidian_name"]}</span></p>
        			<p style="font-size:13px;"><span style="color:#666666;">4. 入职报到时间：</span><span style="" id="ruzhishijian_yl">{$offer_tmp["ruzhishijian"]}</span></p>
        			<p style="font-size:13px;"><span style="color:#666666;">5. 薪资情况：</span><span style="" id="xinzi_yl">{$offer_tmp["xinzi"]}</span></p>
        			<p style="font-size:13px;"><span style="color:#666666;"><br></span></p>    			
            			
            			<div id="beizhu_yl">{$offer_tmp["beizhu"]}
            			</div>		
                        
                        
                        <div style="text-align:right;margin-top:100px;">
                            <p>人力资源部</p>
                            <p>{$date}</p>
                        </div>
            	  </div>
            </div>
EOD;
    return $a;
    }

//----------------------------------------------------edit---------------------------------------------------
    /**
     * 1、验证字段范围和必填字段（单个字段验证即可），
     * 2、通过比对上次的值和这次的值，如果不同则保存。
     * 
     */
    function edit($id)
    {
        $data   = $this->yuangong_mdl->get_row(array('id'=>$id));
        $this->set_yuangong_row($data);
        
        $this->load->view('admin/yuangong/edit', $data);
    } 
    
    
    function set_yuangong_row($data)
    {
        $this->session->yuangong_row = $data;
    }
    
    function get_yuangong_row()
    {
        return $this->session->yuangong_row;
    }  
    
    /**
     * 修改保存数据
     *
     */
    function edit_save()
    {
        $fields     = $this->yuangong_mdl->requireds();      
        
        $post_data  = $this->input->post();
        //交集
        $post_data  = array_intersect_key($post_data, $fields);
             
        //print_r($post_data);exit;
        $update_data = $post_data;
        //不可修改的字段        
        unset($update_data['id'],$update_data['yuzhanghao'],$update_data['gonghao']);
        
        //json字段: jiatingchengyuan, jiaoyuqingkuang
        if(isset($update_data['jiatingchengyuan']) && is_array($update_data['jiatingchengyuan']))
        {
            $update_data['jiatingchengyuan'] = json_encode($update_data['jiatingchengyuan'], true);
        }
        if(isset($update_data['jiaoyuqingkuang']) && is_array($update_data['jiaoyuqingkuang']))
        {
            $update_data['jiaoyuqingkuang'] = json_encode($update_data['jiaoyuqingkuang'], true);
        }
        
        //合同结束日期= 开始日期+年限
        if(isset($update_data['hetongkaishiriqi']) && isset($update_data['hetongqixian_zidian']))
        {
            $hetongqixian_row = zidian_valuename($update_data['hetongqixian_zidian']);
            $update_data['hetongjieshuriqi'] = date('Y-m-d H:i:s',strtotime("+1 year",strtotime($update_data['hetongkaishiriqi'])));
        }
        $where  = array(
            'id'=> $post_data['id'] ? (int)$post_data['id'] : 0,
        );
        $success = $this->yuangong_mdl->update_row($where, $update_data);  
         
        
        $return_data = array(
            'success' => $success ? 1 : 0,
            'msg' => $success ? '成功' : '失败',
        );
        
        json_encode_lm($return_data);
    }
//----------------------------------------------------list---------------------------------------------------
    
	/**
     * 
     * 员工列表
     */
    function lists()
    {
        $site_url   = "admin/yuangong/lists?";
        
        $per_page       = $this->input->get("per_page");
        $limit      = 0;
        $offset     = 10;//每页
        if($per_page) $limit = $per_page;
        
        //搜索参数start
        $post_filed = array(
            "xingming","gonghao","hetongbianhao","hetongleixing_zidian","gangweimingchen_gz_zidian","bumen_id","chengshi_zidian","status_zidian","hetongqiandingzhuangtai_zidian",
        );
                
        //查询数据库
        $sql_list    = "SELECT * FROM {$this->db->dbprefix}yuangong ";
        $sql_count    = "SELECT COUNT(*) AS total FROM {$this->db->dbprefix}yuangong ";
        $where  = " WHERE 1=1 ";
        
        $search_data  = $this->input->get($post_filed);    
        $site_url     .= http_build_query($search_data);    

        foreach($search_data as $field_name=>$field_value)
        {
            $field_value = sql_check_input($field_value);//SQL注入过滤
            
            if($field_value)
            {          
                if($field_name == 'xingming' || $field_name == 'gonghao' || $field_name == 'hetongbianhao')
                {
                    $where .= " AND {$field_name} LIKE '%{$field_value}%' ";
                }else
                {
                    $where .= " AND {$field_name} = '{$field_value}' ";
                }//endif                
            }//endif
        }//endforeach
        
        $orderby  = " ORDER BY id DESC ";        
        
        $sql_list    = $sql_list.$where.$orderby." LIMIT {$limit}, {$offset} ";
        $sql_count   = $sql_count.$where.$orderby;
        
        //echo $sql_list;
        $result = $this->db->query($sql_list)->result_array();
        $row    = $this->db->query($sql_count)->row_array();
        if(!$row || !isset($row['total'])) $row['total'] = 0;
        $list   = $result;
        //print_r($result);exit;
        
        //分页start
        $this->load->library('pagination');        
        $config = $this->config->item('page');
        $this->config->load('page', TRUE);
        $config  = $this->config->item('page','page');
        $config['page_query_string']=TRUE;
        $config['base_url']     = site_url($site_url);
        $config['total_rows']   = $row['total'];
        $config['per_page']     = $offset;        
        $this->pagination->initialize($config);              
		$page = $this->pagination->create_links();
        
       // print_r($config);
        
        //分页end
		
        $data = array(
            "page"=>$page,
            "list"=>$list,
        );
        
        $this->load->view('admin/yuangong/lists',$data);
    }
    
    
    



    
    
	
}

/* End of file Posts.php */
/* Location: ./application/controllers/admin/Posts.php */