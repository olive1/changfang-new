<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 汉字转拼音
 *	
 */
require "Overtrue/Pinyin/Pinyin.php";
class Han2pin2 extends Pinyin
{
    
    public function __construct()
    {
        parent::__construct();
    }
   
}

/* End of file Common.php */
/* Location: ./application/libraries/Common.php */