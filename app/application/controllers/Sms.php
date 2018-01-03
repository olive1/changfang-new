<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * 短信验证码
 * @author Mike lu
 */
class Sms extends MK_App_Controller {
    
    function __construct()
    {
        $this->is_test    = TRUE;//调试
        parent::__construct();
        $this->load->model("Yuangong_mdl");
        $this->load->model("Sms_mdl");
    }
    
    
    /**
     * 发送验证码
     * @param $mobile 手机号
     * @param $tmpcode模板类型
     * @return Boolean
     */
    public function send()
    {
        
        //基本参数
        $mobile         = $this->input->post('mobile');
        $TemplateCode   = $this->input->post('templateCode');
        $code           = rand(100000, 999999);
        $TemplateParam  = array('code'=>$code);
        
        if(!is_numeric($mobile) || !$this->Yuangong_mdl->get_row(array('shouji'=>$mobile)) )
        {
        	response_json(0, '手机号不正确');
        }
        
        if($TemplateCode != 'SMS_118140009')
        {
            response_json(0, '模板类型不正确');
        }
                
        //验证合法性（发送次数验证/天，同IP限制/天）
        $sms_list_mobile    = $this->Sms_mdl->get_result(array('mobile'=>$mobile, 'created'=>date("Y-m-d")));
        $sms_list_ip        = $this->Sms_mdl->get_result(array('ip'=>$this->input->ip_address(), 'created'=>date("Y-m-d")));
        if((count($sms_list_mobile) > LM_SMS_MAX_MOBILE_SEND) || (count($sms_list_ip) > LM_SMS_MAX_IP_SEND) )
        {
            response_json(0, '发送次数超出当天范围限制');
        }
        
        
        //发送
        $this->load->library('sms/sms');
        $return = $this->sms->sendSms($mobile, $TemplateCode, $TemplateParam);
        print_r(f);
        
        //发送后做的事情
        if(!$return)
        {
            //可记入日志
            response_json(0, '5001', '发送失败');
        }
                
        //保存到数据表
        $data = array(
            'ip'        => $this->input->ip_address(),
            'mobile'    => $mobile,
            'code'      => $code,
            'templatecode'=> $TemplateCode,
            'created'   => date("Y-m-d"),
            'created_time' => time(),
        );
        $this->Sms_mdl->create($data);
        
        response_json(1, array(), '发送成功');
    }

    /**
     * 验证码校验,查询该验证码是否有效
     * @param $mobile 手机号
     * @param $code   短信码
     * @param $tmpcode模板类型
     * @return  Boolean
     */
    public function verify()
    {
        //基本参数
        $mobile         = $this->input->post('mobile');
        $TemplateCode   = $this->input->post('templateCode');
        $code           = (int)$this->input->post('code');
        
        if(!is_numeric($mobile) )
        {
        	response_json(0, '手机号不正确');
        }
        
        if($TemplateCode != 'SMS_118140009')
        {
            response_json(0, '模板类型不正确');
        }
        
        $row = $this->Sms_mdl->get_row(array('mobile'=>$mobile, 'code'=>$code));
        if($row && ((time() - $row['created_time']) < LM_SMS_MAX_TIME))
        {
            response_json(1, array(), '验证通过');
        }
        
        response_json(0, '验证码不正确或已失效');        
    }
    
    
    
    
    
    
   
}
