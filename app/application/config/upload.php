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
		'upload_path'	=> './uploads/',
        'allowed_types' => 'gif|jpg|png',
        'max_size'		=> 300,//KB
        'max_width'		=> 1024,//ÏñËØ
        'max_height'	=> 1024,//ÏñËØ
    );

$config['image_Qniu'] = array(
		'accessKey'		=> '1',
        'secretKey'		=> '2',
        'bucket'		=> 'changfang',
    );
