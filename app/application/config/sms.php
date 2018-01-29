<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Profiler Sections
| -------------------------------------------------------------------------
| This file lets you determine whether or not various sections of Profiler
| data are displayed when the Profiler is enabled.
| Please see the user guide for info:
|
|	https://codeigniter.com/user_guide/general/profiling.html
|
*/

//短信模板code
$config['sms']['TemplateCode'] = array(
            'forgot_password'   => 'SMS_118140009',//忘记密码时 发送短信
            
        );  