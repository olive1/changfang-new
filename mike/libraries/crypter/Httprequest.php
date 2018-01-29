<?php

/**
 * curl请求
 * 
 * @author		MIKE lumeng
 * @since		Version 1.0
 */
class Httprequest
{
	/**
         * http静默请求
         * @param type $url
         * @param type $data
         * @param type $timeout
         * @param type $contentType
         * @return type
         */
	public function dopost($url, $postData, $timeout = 10)
	{
                $data           = http_build_query($postData);
		$ch = curl_init();
		$userAgent      = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9';
		
		$options = array(
				CURLOPT_URL             => $url,
				CURLOPT_SSL_VERIFYPEER  => false,
				CURLOPT_SSL_VERIFYHOST  => false,
				CURLOPT_AUTOREFERER     => true,
				CURLOPT_POST            => false,
				CURLOPT_HEADER          => false,
				CURLOPT_COOKIEJAR       => null,
				CURLOPT_COOKIEFILE      => null,
				CURLOPT_FOLLOWLOCATION  => true,
				CURLOPT_RETURNTRANSFER  => true,
				CURLOPT_TIMEOUT         => $timeout,
				CURLOPT_USERAGENT       => $userAgent
				);

                $options[CURLOPT_POST]          = true;
                $options[CURLOPT_POSTFIELDS]    = $data;

		curl_setopt_array($ch, $options);
		$content        = curl_exec($ch);//返回的数据
		$info           = curl_getinfo($ch);
		if (curl_errno($ch) != 0) {
			return array(false, curl_error($ch));
		}   

		curl_close($ch);
                
		return array($info['http_code'], $content);
	}


	public function doget($url, $data='', $timeout = 10)
	{
		//初始化
		$curl = curl_init();
		//设置抓取的url
		curl_setopt($curl, CURLOPT_URL, $url);
		//设置头文件的信息作为数据流输出
		//curl_setopt($curl, CURLOPT_HEADER, 1);

		//设置获取的信息以文件流的形式返回，而不是直接输出。
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		//执行命令
		$data = curl_exec($curl);
		//关闭URL请求
		curl_close($curl);
		return $data;
	}

}


