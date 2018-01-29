<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 汉字转拼音
        $name1     = $this->han2pin2->name(mb_substr($name, 0, 1, 'utf-8')); //全拼
		$name1     = implode("",$name1);
        $name2     = $this->han2pin2->abbr(mb_substr($name, 1,10, 'utf-8')); //首字母
		调用时。一定要注意文件编码为utf-8，否则是空白
		
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