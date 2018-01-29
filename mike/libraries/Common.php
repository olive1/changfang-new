<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * 常用公共类库
 *	
 */
class Common
{

    
    /** 
     * 判断hash值是否相等
     * 
     * @access public
     * @param string $source 源字符串
     * @param string $target 目标字符串
     * @return boolean
     */
    public static function hash_Validate($source, $target)
    {
        return (self::do_hash($source)== $target);
    }
    
    
    public static function do_hash($password)
    {
        return md5(md5($password));
    }
    
}

/* End of file Common.php */
/* Location: ./application/libraries/Common.php */