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

$config['postdata'] = array(
            'version'   => array(
                            'ios'=> array('1.0', '1.0'),//每次升级只需要增加一个值即可
                            'andriod'=> array('1.0', )
                            ),
            'apptype'   => array('ios', 'andriod'),
			'time'		=> '',
			'sign'		=> '',
        );  