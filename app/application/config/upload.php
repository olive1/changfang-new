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

$config['image_local'] = array(
		'upload_path'	=> 'third_party/uploads/',
        'allowed_types' => 'gif|jpg|png',
        'max_size'		=> 50000,//KB
        'max_width'		=> 20240,//ÏñËØ
        'max_height'	=> 20240,//ÏñËØ
        'file_name'     => date("ymdHis"),
    );

$config['image_Qniu'] = array(
		'accessKey'		=> 'OUkP1rS79FMoIi4lVAR9icNgJRk8N7wmXkyOxywhYY',
        'secretKey'		=> 'FWdfKCUTsqvCFpQlIfv7ub2wFyHVSgRvrkU9vtMIYY',
        'bucket'		=> 'changfang',
    );
