<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 用户登陆、注册、找回密码
 * 
 */
 
 class User extends LM_Controller{
    private $_ref   =   '/Usercenter/center/'; //登录成功后跳转
    function __construct(){
        
        parent::__construct();        
        $this->load->model('captcha_mdl'); //验证码 模型
        $ref           =   $this->input->get('ref');
        $this->_ref    =  $ref ? $ref : $this->_ref;

        if($this->lmauth->is_login())//已经登陆 则 回REF
        {
            redirect($this->_ref);
        }
        
    }
    
    /** 登录 */
    function login(){
        
        $data['yzm'] = $this->yzm_get();//获取验证码
        $this->_form_validation_login(); //表单验证        
        if($this->form_validation->run() == FALSE)
        {
            $this->load->view('lm_user_login', $data);

        }
        else
        {            

            $row    =   $this->_select_row_array();//获取用户名密码数据
            if($row)
            {   
                $this->lmauth->process_login($row);//成功则登录 设置session
                redirect($this->_ref);
            }else
            {
                $this->lm_session->set_flashdata('success', '用户名或密码错误！');
                go_back();
            }
            redirect($ref);
        }
        
    }    
   
    /** reg注册 */
    function reg(){
        
        $data['yzm'] = $this->yzm_get();//获取验证码
        $this->_form_validation_reg(); //表单验证        
        if($this->form_validation->run() == FALSE)
        {
            $this->load->view('lm_user_reg', $data);
        }else
        {
            $row    =   $this->_insert();//入库
            if($row)
            {   
                $this->lmauth->process_login($row);//注册成功则登录 设置session
                redirect($this->_ref);
            }else
            {
                $this->lm_session->set_flashdata('success', '注册失败！');
                go_back();
            }
            
        }
        
        
    }    
    
    /** forget找回密码 */
    function forget(){
        
        $data['yzm'] = $this->yzm_get();//获取验证码
        $this->_form_validation_forget();//验证邮箱 找回        
        if($this->form_validation->run() == FALSE)
        {
            $this->load->view('lm_user_forget', $data);
        }
        else
        {
            $this->_email();//email发送
            redirect('/lmuser/login/');
        }
        
        
        
    }    
      
      

    ///////////////以下函数私有，供上面调用////////////////////
    
    //注册验证
    function _form_validation_reg(){
        $this->form_validation->set_error_delimiters('<span>', '</span>');
        $this->form_validation->set_rules('user_mail', '邮箱', 'required|trim|valid_email|min_length[5]|max_length[50]|xss_clean|callback_user_mail_check');
        $this->form_validation->set_rules('user_password', '密码', 'required|trim|min_length[5]|max_length[30]|alpha_dash|matches[user_passwordf]|md5');
        $this->form_validation->set_rules('user_passwordf', '确认密码', 'required|trim');
        $this->form_validation->set_rules('yzm','验证码不正确','callback_yzmback|xss_clean');
    }
    
    //登录验证
    function _form_validation_login(){
        $this->form_validation->set_error_delimiters('<span>', '</span>');
        $this->form_validation->set_rules('user_mail', '邮箱或手机号', 'required|trim|min_length[5]|max_length[50]|callback_user_phone_check|xss_clean');
        $this->form_validation->set_rules('user_password', '密码', 'required|trim|min_length[5]|max_length[30]|md5');
        $this->form_validation->set_rules('yzm','验证码不正确','callback_yzmback|xss_clean');
    }
    
    //验证 密码找回
    function _form_validation_forget(){
        $this->form_validation->set_error_delimiters('<span>', '</span>');
        $this->form_validation->set_rules('user_mail', '邮箱', 'required|trim|valid_email|min_length[5]|max_length[50]|xss_clean|callback_forget_mail_check');
        $this->form_validation->set_rules('yzm','验证码不正确','callback_yzmback|xss_clean');
    }
    
    
    //注册验证 回调邮箱
    function user_mail_check($str){
        
        $row    =   $this->lm_user_mdl->select_row('user_mail', array('user_mail' => $str));
        if($row && $row->user_mail == $str)//库中已存在
        {
            $this->form_validation->set_message('user_mail_check', '该邮箱已被注册!');
            return false;
        }else
        {
            return true;
        }
        
    }
    
    //登陆回调邮箱 和 手机号码
    function user_phone_check($str){
        
        if(strlen($str) == "11" && is_numeric($str)) //如果是 手机
        { 
            $n = preg_match_all("/13[123456789]{1}\d{8}|15[01235689]\d{8}|188\d{8}/",$str,$array); 
            if($n)
            {
                return true;
            }else{
                $this->form_validation->set_message('user_phone_check', '请输入正确的邮箱或手机号!');
                return false;
            }
        }
        else//判断邮箱
        {
            $n = preg_match_all("/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/",$str,$array);
            if($n)
            {
                return true;
            }else{
                $this->form_validation->set_message('user_phone_check', '请输入正确的邮箱或手机号!');
                return false;
            }
        }
        
        return false;
    }
    
    
    //找回密码  回调
    function forget_mail_check($str){
        
        $row    =   $this->lm_user_mdl->select_row('user_mail, update_time', array('user_mail' => $str));
        
        if($row && $row->user_mail == $str)//库中已存在
        {            
            
            if(($row->update_time - now()) < 10000)
            {
                $this->form_validation->set_message('forget_mail_check', '不要过快提交!');
                return false;
            }
            return true;
        }else
        {
            $this->form_validation->set_message('forget_mail_check', '邮箱不正确!');
            return false;
        }
    }
    

    
    
    //数据入库
    function _insert(){
        
        $data   =   array(
                        'user_mail'     =>  $this->input->post('user_mail', TRUE),
                        'user_password' =>  $this->input->post('user_password', TRUE),
                        'cat_id'        =>  $this->area->area_ary->cat_id,
                        'ip'            =>  $this->input->ip_address(),
                        'token'         =>  md5(now().rand()),
                        'create_time'   =>  now(),
                        'update_time'   =>  now(),
                        
                    );
        $row    =   $this->lm_user_mdl->add($data);
        return $row;
    }
    
    /** 检查数据库 登录    更新*/
    function _select_row_array(){
        
        $user_mail      =   $this->input->post('user_mail', TRUE);
        $user_password  =   $this->input->post('user_password', TRUE);//上面的验证已经加了密
        
        if(is_numeric($user_mail) && strlen($user_mail) == 11)//是数字则检查 手机
        {
            $user_phone =   intval($user_mail);
            $data       =   array('user_phone' =>  $user_phone,'user_password' =>  $user_password,);
            
        }
        else
        {
            $data       =   array('user_mail'  =>  $user_mail,'user_password'  =>  $user_password,);
            
        }
        
        $row            =   $this->lm_user_mdl->select_row_array($data);
        return $row;
    }
    
    
    
    function _email(){
        $user_password  =   '123456';
        $user_mail      =   $this->input->post('user_mail', TRUE);
        $user_password  =   $this->_rand_password();//随机密码 
        //更新密码        
        $this->lm_user_mdl->update(
                                    array('user_password'  => md5($user_password)), 
                                    array('user_mail'      => $user_mail)
                                    );
        
        //mail  发送
        $this->load->library('email');   
        $this->email->clear();     
        $config['useragent']    =   'CodeIgniter';//用户代理
        $config['protocol']     =   'smtp';//邮件发送协议mail, sendmail, or smtp
        $config['smtp_host']    =   'smtp.163.com';
        $config['smtp_user']    =   'webnoties';
        $config['smtp_pass']    =   'lumeng___';
        $config['smtp_port']    =   25;
        $config['smtp_timeout'] =   5;
        $config['wordwrap']     =   TRUE;
        $config['mailtype']     =   'html';
        $config['charset']      =   'utf-8';
        $config['validate']     =   FALSE; 
        
        $this->email->initialize($config);
        
        $this->email->from('webnoties@163.com', '欢欢喜-酒店预订网');
        $this->email->to($user_mail);
        
        
        $this->email->subject(LUMN_WEB_NAME.' 会员密码找回-本邮件为系统发送，请勿回复。');//主题
        $this->email->message('<div>
                                <b>尊敬的会员您好！</b>
                                <br>
                                <p style="padding:20px;">
                                    您的新密码：'.$user_password.'<br>
                                    请立即登陆网址<a href="'.base_url().'">'.LUMN_WEB_NAME.'</a>进行修改<br>
                                </p>
                                
                                <p>本邮件为系统发送，请勿回复。</p>
                                </div>
                                ');
        
        
        $success    =   $this->email->send();
        
        $success    =   $success ? '新密码已发至您的邮箱，请尽快登录修改密码！' : '密码找回失败！';
        $this->lm_session->set_flashdata('success', $success);
        echo $this->email->print_debugger();
        exit();

    }
    
    
    
    

	/** 验证码获取 */
	function yzm_get(){
	    $this->load->helper('captcha');
        $expiration = time()-LUMN_TIME_YZM; // 时间限制 
		$this->del_old_yzm($expiration);//先删除旧验证码        
        
        $vals = array(
            'img_path' => './captcha/',
            'img_url'  => base_url().'/captcha/'
            );
        
        $cap = create_captcha($vals);
        
        $data = array(
            'captcha_time' => $cap['time'],
            'ip_address'   => $this->input->ip_address(),
            'word'         => $cap['word']
            );
        
        $add = $this->captcha_mdl->add($data); //入库验证码
        return $cap['image'] ? $cap['image'] : FALSE;
	}	
    
    //回调验证码
	function yzmback($str){				
        $expiration = time()-LUMN_TIME_YZM; // 时间限制 
        $this->del_old_yzm($expiration);//先删除旧验证码
        // 然后再看是否有验证码存在:
        $select = "SELECT COUNT(*) AS count FROM captcha WHERE word = ? AND ip_address = ? AND captcha_time > ?";
        $binds  = array($str, $this->input->ip_address(), $expiration);
        $row    = $this->captcha_mdl->querys($select, $binds);        
        
        if ($row->count == 0)
        {
            
            $this->form_validation->set_message('yzmback', '验证码不正确！');
            return false;
        }
        else
        {
            return true;
        }
	}
    
    
    /**  删除旧(超时)的验证码  $expiration 时间  **/
    function del_old_yzm($expiration){
        
        //删除超过这个时间的  过去旧验证码
        $sql        = "DELETE FROM captcha WHERE captcha_time < ".$expiration; 
        $this->captcha_mdl->del_query($sql);
        
        $this->del_old_yzm_pic($expiration); //删除图片        
    }
    
    /**  承上，删除验证码 图片**/
    function del_old_yzm_pic($expiration){
        
        //同时删除图片
        $this->load->helper('file');
        $file_name_ary = get_filenames('captcha/');  //获取文件夹内所有文件名
        foreach($file_name_ary as $file_name)
        {
            $str      = explode('.',$file_name); // 以点分割  得到UNIX 时间戳  
            $old_time = (int)$str[0];
            if($old_time == 0)  //是字符的话，直接删除
            {
                @unlink('./captcha/'.$file_name);      
            }
            else{
                if($old_time < $expiration) //旧图片时间  小于限制时间就KILL
                {
                    @unlink('./captcha/'.$file_name);
                }
            }
            
        }
    }
    
    
    
    
    function loging(){
        $this->load->view('login');
    }
    
    /** 随机密码  */

    function _rand_password($length = 8) {
        
        $returnStr='';
        $pattern = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ';
        
        for($i = 0; $i < $length; $i ++) {
            $returnStr .= $pattern {mt_rand ( 0, 61 )}; //生成php随机数
        }
        
            return $returnStr;
     }
     
     
     
     
     

     
        
}
     



     
     





?>