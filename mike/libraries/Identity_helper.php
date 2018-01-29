<?php

/**
 * 实名认证(使用鹏元征信公司接口)
 * $this->load->library('identity_helper');
 * $result=$this->identity_helper->check_useridentity(array('name'=>'姓名', 'documentNo'=>'身份证号'));
 */
class identity_helper {
	
	//用户id
	private $user_id='';
	
	//加密方式MD5
	private $password='';
	
	//post请求的url
	private $posturl='http://www.pycredit.com:8001';
	
	/**
	 * 实名认证
	 * @param unknown $identitydata
	 * @return boolean(true表示实名认证通过;否则失败)
	 */
	public function check_useridentity($identitydata){
		if(!is_array($identitydata)){return false;}
		//进行实名认证
		$requestBody = $this->PY_PrepareQuery("25160", "10602", "1",
			array(
				'name'			=>$identitydata['name'],
				'documentNo'	=>$identitydata['documentNo']
			)
		);

		//发送webservice请求
		$result = $this->PY_SendQuery($requestBody);
		$key = $this->xmltoarray($result);
		$status = 0;
		foreach($key as $k=>$v){
			if($k=='status'){
				$status = $v;
			}
			if($k=='returnValue'){
				$returnValue = $v;
			}
		}
		if($status == 1 && !empty($returnValue)){
			return $this->PY_getidentity($returnValue);
		}else {
			return false;
		}
	}
	
	/**
	 * 发送webservice请求
	 * @param xml $queryCondition(发送webservice请求所需要的xml数据)
	 * @return xml
	 */
	public function PY_SendQuery($queryCondition)
	{	
		$url_wsdl=$this->posturl.'/services/WebServiceSingleQueryOfUnzip?wsdl';//wsdl
		
		$client = new SoapClient($url_wsdl, array(
				'encoding'=>'GBK'
		));
	
		$result = $client->queryReport($this->user_id, $this->password, $queryCondition);//查询结果集		
		$result = iconv('GBK', 'UTF-8', $result);		
		return $result;
	}
	
	/**
	 * 拼接发送webservice请求所需求的xml数据
	 * @param string $queryType
	 * @param string $subreportIDs
	 * @param string $refID
	 * @param array $map(真实姓名、身份证号)
	 * @return xml
	 */
	public function PY_PrepareQuery($queryType, $subreportIDs, $refID, $map)
	{
		$xml =  '<?xml version="1.0" encoding="GBK"?>';
		$xml .= '<conditions>';		 
		$xml .= '<condition queryType="'.$queryType.'">';		 
		foreach($map as $key=>$value)
		{
			$xml .= '<item><name>'.$key.'</name><value>'.$value.'</value></item>';
		}
		//$subreportIDs
		$xml .= '<item><name>subreportIDs</name><value>'.$subreportIDs.'</value></item>';
		//refID
		$xml .= '<item><name>refID</name><value>'.$refID.'</value></item>';		 
		$xml .= '</condition>';		 
		$xml .= '</conditions>';
		//将xml数据转码成GBK
		$xml = iconv('UTF-8', 'GBK', $xml);	
		return $xml;
	}
	
	/**
	 * 获得xml中第一级节点value值
	 * @param xml $xml
	 * @return string
	 */
	public function xmltoarray($xml){
		$arr = $this->xml_to_array($xml);
		$key = array_keys($arr);
		return $arr[$key[0]];
	}
	
	/**
	 * 将xml数据转换成array
	 * @param xml $xml
	 * @return array
	 */
	public function xml_to_array($xml){
		$reg = "/<(\w+)[^>]*>([\\x00-\\xFF]*)<\\/\\1>/";
		if(preg_match_all($reg, $xml, $matches))
		{
			$count = count($matches[0]);
			for($i = 0; $i < $count; $i++)
			{
				$subxml= $matches[2][$i];
				$key = $matches[1][$i];
	
				if(preg_match( $reg, $subxml ))
				{
					$arr[$key] = $this->xml_to_array( $subxml );
				}else{
					$arr[$key] = $subxml;
				}
			}
		}
		return $arr;
	}
	
	/**
	 * 处理实名认证结果
	 * @param array $pyarray
	 * @return boolean(true表示实名认证成功;否则失败)
	 */
	public function PY_getidentity($pyarray){
		if(!is_array($pyarray)){
			return false;
		}else{
			
			foreach($pyarray as $k=>$v){
				foreach ($v as $myk=>$myv){
					foreach ($myv as $sk=>$sv){
						if($sk=='policeCheckInfo'){
							$pciresult=$sv;
							break;
						}
					}
				}
			}
	
			$bkresult=0;
			if(!empty($pciresult)){
				foreach ($pciresult as $k=>$v){
					foreach($v as $sk=>$sv){
						if($sk=='result'){
							$bkresult = $sv;
							break;
						}
					}
				}
			}
			return $bkresult==1?true:false;
		}
	}
}

?>