<?php if (!defined('BASEPATH')) exit('No direct access allowed.');

/**
 * @description LDAP�ͻ�����
 *
 * @author 
 * @date 
 */

class Ldap{
    
    private $CI;            /*!< CodeIgniter instance */
        
    private $_conn = NULL;
    private $_sErrLog = '';
    private $_sOperLog = '';
    private $_aOptions = array();
    private $_aAllowAttrName = array(
        'objectClass',
        'objectGUID', //AD����ID
        'userPassword', //AD���벻������ֶ� ������ʱ����ͨ����������
        'unicodePwd', //AD����ר���ֶ� $unicodePwd  = mb_convert_encoding('"' . $newPassword . '"', 'utf-16le');
        'cn', //comman name �ֵܽڵ㲻����ͬ
        'ou', //organizationalUnit
        'description', //Ա�����
        'displayName', //������
        'name', //����
        'sAMAccountName', //Ӣ����(RTX�˺�,Ψһ)
        'userPrincipalName', //��½�û��� �� Ӣ����һ��
        'ProtectedFromAccidentalDeletion', //����ɾ������
        'givenName', //�� 
        'sn', //�� 
        'employeeNumber', //һ��ͨ����
        'mail',
        'mailNickname',
        'manager', //�ϼ� (�ڵ�·�� ʾ��:CN=Texas Poker9,OU=Texas Poker,OU=Dept,OU=BoyaaSZ,DC=by,DC=com)
        'title', //ͷ��
        'pager', //�Ա� 0�� 1Ů -1δ֪
        'userAccountControl', //�û��˺Ų���(��ʱ��������) ����˵����ַ:https://support.microsoft.com/en-gb/kb/305144
        'department',
        'managedBy',//���Ÿ�����
        'distinguishedName',
        'pwdLastSet', //����0ʱ �´ε�¼ʱ��Ҫ�޸�����
        'memberOf', //�û�������
        'member',//���Ա
    );
    
    public function __construct(array $aOptions = array()){
        $this->_init();
        if (!extension_loaded('ldap')){
            $this->_log('LDAP extension not be installed.',true);
        }
        $this->setOption($aOptions);
    }
    
    function _init(){
                $this->CI = & get_instance();

                $this->CI->config->load('ldap', true);
				$configs = $this->CI->config->item('ldap');
				
                $this->_aOptions = array(
                                        'host'          => $configs['ldap_host'],
                                        'port'          => $configs['ldap_port'],
                                        'dnSuffix'      => $configs['dnSuffix'],
                                        'loginUser'     => $configs['ldap_rdn'],
                                        'loginPass'     => $configs['ldap_pass'],
                                        'logDir'        => '',
                                    );
                return $this->connect();
    }
    
    
    /**
     * @return exit || true
     */
    public function connect($force = false){
        if (!$this->_conn || $force){
            $host = $this->_aOptions['host'];
            $port = $this->_aOptions['port'];
            $this->_conn = ldap_connect($host,$port);
            if ($this->_conn === false){
                $this->_log("Connect LDAP SERVER Failure.[host:{$post}:{$port}]",true);
            }
            ldap_set_option($this->_conn, LDAP_OPT_PROTOCOL_VERSION, 3);
            ldap_set_option($this->_conn, LDAP_OPT_REFERRALS, 3);
            $this->_bind();
        }
        return $this->_conn;
    }
    
    /**
     * @return exit || true
     */
    private function _bind(){
        $u = $this->_aOptions['loginUser'];
        $p = $this->_aOptions['loginPass'];
        $ret = @ldap_bind($this->_conn,$u,$p);
        if ($ret === false){
            $this->_log(__FUNCTION__.'----'.$this->_getLastExecErrLog().'----'."u:{$u},p:{$p}",true);
        }
        return $ret;
    }
    
    public function setOption(array $aOptions = array()){
        foreach($this->_aOptions as $k => $v){
            if (isset($aOptions[$k])){
                $this->_aOptions[$k] = $aOptions[$k];
            }
        }
    }
    
    public function getOption($field,$default = ''){
        return isset($this->_aOptions[$field]) ? $this->_aOptions[$field] : $default;
    }
    
    /**
     * @description ��ѯ$dn�·������������Ľڵ� ����$limit��
     *
     * @return array [count:x,[[prop:[count:xx,[],[]]],....]]
     */
    public function getEntryList($dn,$aAttrFilter,array $aField=array(),$limit = 0,$bFixedDn = true){
        if (!$dn = trim($dn)){
            return array();
        }
        if (!$this->_checkDn($dn)){
            return array();
        }
        $limit = max(0,intval($limit));
        $this->connect();
        if ($bFixedDn){
            $dn = $this->_getFullDn($dn);
        }
        $aOldTmp = $aAttrFilter;
        $this->_checkAttr($aAttrFilter);
        if (!$aAttrFilter){
            $this->_log(__FUNCTION__.'---��Ч����������---'.json_encode($aOldTmp));
            return array();
        }
        $sAttrFilter = $this->_mkAttrFilter($aAttrFilter);
        $attrOnly = 0;
        $this->_log(__FUNCTION__."---DN:{$dn}---sAttr:{$sAttrFilter}",false,'oper');
        $aRet = [];
        for($try = 1; $try <= 3; $try++){
            $rs = @ldap_search($this->_conn,$dn,$sAttrFilter,$aField,$attrOnly,$limit);
            if ($rs === false){
                $this->_log(__FUNCTION__."---dn:{$dn}--try:{$try}---sAttr:{$sAttrFilter}---" . $this->_getLastExecErrLog());
                if($this->_getLastErrNo() == -1){ //δ������LDAP��������������3��
                    $this->connect(true);
                    continue;
                } else { //�������ֱ���˳�
                    break;
                }
            }
            $aRet = @ldap_get_entries($this->_conn,$rs);
            ldap_free_result($rs);
            if ($aRet === false){
                $this->_log(__FUNCTION__.'---try:{$try}---'.$this->_getLastExecErrLog());
                if($this->_getLastErrNo() == -1){
                    $this->connect(true);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        return $aRet;
    }
    
    /**
     * @description ɾ���ڵ� ��ʱ�����ǵݹ�ɾ��
     * 
     * @return boolean
     */
    public function delEntry($dn,$bFixedDn = true,$force = 0){
        return false;
        if (!$dn = trim($dn)){
            return false;
        }
        if (!$this->_checkDn($dn)){
            return false;
        }
        if ($bFixedDn){
            $dn = $this->_getFullDn($dn);
        }
        $this->_log(__FUNCTION__."---DN:{$dn}",false,'oper');
        $this->connect();
        /*if($force){
            $aEntryList = $this->getEntryList($dn,array('objectClass'=>'*'),array('objectClass'));
            if ($aEntryList && ($aEntryList['count'] > 0)){ 
                for($i = 0; $i < $aEntryList['count']; $i++){
                    $aDel[] = $aEntryList[$i]['dn'];
                }
            }
            $aDel = array_reverse($aDel); //Ĭ��˳�� ����->���� ��Ҫ��ɾ������ڵ�
            $ret = true;
            foreach($aDel as $k => $v){
                $ret &= @ldap_delete($this->_conn,$v);
            }
            if ($ret === false){
                $this->_log(__FUNCTION__.'dn(recursive):'.$dn.'----'.$this->_getLastExecErrLog());
            }
            return $ret;
        }*/
        $ret = @ldap_delete($this->_conn,$dn);
        if ($ret === false){
            $this->_log(__FUNCTION__.'----dn:'.$dn.'-----'.$this->_getLastExecErrLog());
        }
        return $ret;
    }
    
    /**
     * @description ���½ڵ�
     * 
     * @return boolean
     */
    public function updateEntry($dn,$aAttr = array(),$bFixedDn = true){
        if (!$dn = trim($dn)){
            return false;
        }
        $this->_checkAttr($aAttr);
        if (!$aAttr){
            return false;
        }
        if (!$this->_checkDn($dn)){
            return false;
        }
        if ($bFixedDn){
            $dn = $this->_getFullDn($dn);
        }
        $this->_log(__FUNCTION__."---DN:{$dn}---aAttr:".str_replace("\n",'',var_export($aAttr,true)),false,'oper');
        $this->connect();
        $ret = false;
        for($try = 1; $try <= 3; $try++){
            $ret = @ldap_modify($this->_conn,$dn,$aAttr);
            if ($ret === false){
                $this->_log(__FUNCTION__.'---try:{$try}---'.$this->_getLastExecErrLog().'---dn:'.$dn.'---attr:'.json_encode($aAttr));
                if($this->_getLastErrNo() == -1){ //δ���Ϸ�������������3��
                    $this->connect(true);
                    continue;
                }else{
                    break;
                }
            } else {
                break;
            }
        }
        return $ret;
    }
    
    /**
     * @description ��ӽڵ�
     *
     * @return boolean
     */
    public function addEntry($dn,$aAttr = array(), $type = 'employee'/*employee,group*/){
        if (!$dn = trim($dn)){
            return false;
        }
        $this->_checkAttr($aAttr);
        if (!$aAttr){
            return false;
        }
        if (!$this->_checkDn($dn)){
            return false;
        }
        $aAttr['objectClass'] = (array)$this->_getObjectClass($type);
        $this->_log(__FUNCTION__."---DN:{$dn}---aAttr:".str_replace("\n",'',var_export($aAttr,true)),false,'oper');
        $this->connect();
        $dn = $this->_getFullDn($dn);
        $ret = false;
        for($try = 1; $try <= 3; $try++){
            $ret = @ldap_add($this->_conn,$dn,$aAttr);
            if ($ret === false){
                $this->_log(__FUNCTION__.'----dn:'.$dn.'----aAttr:'.json_encode($aAttr).'-----'.$this->_getLastExecErrLog());
                if($this->_getLastErrNo() == -1){ //δ���Ϸ�������������3��
                    $this->connect(true);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        return $ret;
    }
    
    /**
     * @description �ƶ�Ҷ�ӽڵ� v3���֧�ִ˷���
     *
     * @param $newDn �����$parentDn
     * @param $parentDn ����DN
     * @param $bMoveRecur 
     *
     * @return boolean
     */
    public function moveEntry($oldDn,$newDn,$parentDn,$bDelOld = true,$bFixDn = true,$bMoveRecur = true){
        //����AD������ �˷��������ƶ��û��ڵ��Լ���֯�ڵ�
        //$newDnֻ�ܰ���һ�� ����OU=xxx
        $oldDn = trim($oldDn);
        $newDn = trim($newDn);
        $parentDn = trim($parentDn);
        if(!$oldDn || !$newDn || ($bFixDn && !$parentDn)){
            return false;
        }
        if(!$this->_checkDn($oldDn) || !$this->_checkDn($newDn) || !$this->_checkDn($parentDn)){
            return false;
        }
        $this->connect();
        if($bFixDn){
            $oldDn = $this->_getFullDn($oldDn);
            $parentDn = $this->_getFullDn($parentDn);
        }
        $this->_log(__FUNCTION__."---DN:{$oldDn} -> {$newDn},{$parentDn}",false,'oper');
        $aTmpMove = $aDelDn = array();
        $aTmpMove[] = array('old'=>$oldDn,'new'=>$newDn);
        /*if($bMoveRecur){
            $aDelDn[] = $oldDn;
            $aTmpList = $this->getEntryList($oldDn,array('objectClass'=>'*'),array('objectClass'),0,0);
            if($aTmpList && ($aTmpList['count'] > 1)){
                for($i = 1; $i < $aTmpList['count']; $i++){
                    if(!in_array('user',$aTmpList[$i]['objectclass'])){ //$bDelOld=trueʱ,�û��ڵ��ƶ�ʱ���Զ�ɾ��
                        $aDelDn[] = $aTmpList[$i]['dn'];
                    }
                    $aTmpSep = explode($oldDn,$aTmpList[$i]['dn']);
                    $aTmpMove[] = array(
                        'old' => $aTmpList[$i]['dn'],
                        'new' => $aTmpSep[0] . $newDn,
                    );
                }
            }
        }*/
        $bFlag = true;
        foreach($aTmpMove as $k => $v){
            $bTmpFlag = ldap_rename($this->_conn,$v['old'],$v['new'],$parentDn,(boolean)$bDelOld);
            if(!$bTmpFlag){
                $this->_log(__FUNCTION__."---o:{$v['old']}-n:{$v['new']}-p:{$parentDn}-recur:{$bMoveRecur}-----".$this->_getLastExecErrLog());
            }
            $bFlag &= $bTmpFlag;
        }
        /*if(!$bFlag){
            $this->_log(__FUNCTION__."---o:{$oldDn}-n:{$newDn}-p:{$parentDn}-recur:{$bMoveRecur}-----".$this->_getLastExecErrLog());
        }*/
        /*if($bFlag && $bDelOld && $aDelDn){
            $aDelDn = array_reverse($aDelDn);
            foreach($aDelDn as $k => $v){
                $this->delEntry($v,false);
            }
        }*/
        return $bFlag;
    }
    
    public function modEntry($dn,$act = 'add',$aAttr = array()){
        //return false;
        $dn = $this->_getFullDn($dn);
        $this->_log(__FUNCTION__."---DN:{$dn}---Act:{$act}---aAttr:".str_replace("\n",'',var_export($aAttr,true)),false,'oper');
        $this->connect();
        $ret = false;
        switch($act){
            case 'add': $ret = ldap_mod_add($this->_conn,$dn,$aAttr); break;
            case 'replace': $ret = ldap_mod_replace($this->_conn,$dn,$aAttr); break;
            case 'del': $ret = ldap_mod_del($this->_conn,$dn,$aAttr); break;
        }
        if(!$ret){
            $this->_log(__FUNCTION__."---dn:{$dn}---act:{$act}---attr:".json_encode($aAttr).'---'.$this->_getLastExecErrLog());
        }
        return $ret;
    }
    
    /**
     * @description ������ӽڵ�
     * 
     * @return boolean
     */
    public function addBatchEntry($aNodeList = array()){
    }
    
    public function getAttrKv(array $aAttr = array()){
        if(!isset($aAttr['count']) || ($aAttr['count'] < 1)){
            return array();
        }
        $aRet = array();
        for($i = 0; $i < $aAttr['count']; $i++){
            $field = $aAttr[$i];
            if (!isset($aAttr[$field])){
                return array();
            }
            unset($aAttr[$field]['count']);
            $aRet[$field] = $aAttr[$field];
        }
        if(isset($aAttr['dn'])){ //dn���ַ���
            $aRet['dn'] = $aAttr['dn'];
        }
        return $aRet;
    }
    
    private function _getObjectClass($type = 'employee'){
        $aRet = array();
        switch($type){
            case 'employee' : $aRet = array('top','person','organizationalPerson','user'); break;
            case 'group' : $aRet = array('top','organizationalUnit'); break;
        }
        return $aRet;
    }
    
    public function getFullDn($partDn = ''){
        return $this->_getFullDn($partDn);
    }
    
    private function _getFullDn($partDn = ''){
        $partDn = trim($partDn);
        $partDn = rtrim($partDn,',');
        return "{$partDn},{$this->_aOptions['dnSuffix']}";
    }
    
    private function _checkDn($dn = ''){
        $dn = trim($dn,',');
        $aDn = explode(',',$dn);
        foreach($aDn as $k => $v){
            $aTmp = explode('=',$v);
            $aTmp[0] = strtolower(trim($aTmp[0]));
            $aTmp[1] = trim($aTmp[1]);
            $flag = false;
            switch($aTmp[0]){ //distingushed name ��ʱֻ������3��field
                case 'dc': $flag = $this->_checkDc($aTmp[1]); break;
                case 'ou': $flag = $this->_checkOu($aTmp[1]); break;
                case 'cn': $flag = $this->_checkCn($aTmp[1]); break;
            }
            if (!$flag){
                $this->_log(__FUNCTION__.'----��Ч�Ľڵ�·��----dn:'.$dn);
                return false;
            }
        }
        return true;
    }
    
    private function _checkOu($ou = ''){
        if (!$ou){
            return false;
        }
        if (preg_match('/[^a-zA-Z\s\d\.&\'\d]/',$ou)){
            $this->_log(__FUNCTION__.'----OUֻ�ܰ�����ĸ���ֿո��Լ���');
            return false;
        }
        return true;
    }
    
    private function _checkCn($cn = ''){
        if (!$cn){
            return false;
        }
        return true;
    }
    
    private function _checkDc($dc = ''){
        if (!$dc){
            return false;
        }
        if (preg_match('/[^a-zA-Z]/',$dc)){
            $this->_log(__FUNCTION__.'----DCֻ�ܰ���Ӣ����ĸ');
            return false;
        }
        return true;
    }
    
    private function _mkAttrFilter(array $aAttrFilter = array()){
        $sStr = '(&';
        foreach($aAttrFilter as $k => $v){
            $v = (string)$v;
            if($k === 'objectGUID'){
                $v = $this->_GUIDtoStr($v);
            }
            $v = addcslashes($v,'()=');
            $sStr .= "({$k}={$v})";
        }
        $sStr .= ')';
        return $sStr;
    }
    
    //����PHP.NET http://php.net/manual/en/function.ldap-search.php
    //http://php.net/manual/en/function.ldap-get-values-len.php
    //GUID�ؼ���
    private function _GUIDtoStr($binary_guid){
        $hex_guid = unpack("H*hex", $binary_guid); 
        $hex = $hex_guid["hex"];
        $j = 0;$str = '\\';
        for($i = 0; $i < strlen($hex); $i++){
            if($j == 2){
                $str .= '\\';
                $j = 0;
            }
            $str .= $hex[$i];
            $j++;
        }
        return $str;
        /*$hex1 = substr($hex, -26, 2) . substr($hex, -28, 2) . substr($hex, -30, 2) . substr($hex, -32, 2);
        $hex2 = substr($hex, -22, 2) . substr($hex, -24, 2);
        $hex3 = substr($hex, -18, 2) . substr($hex, -20, 2);
        $hex4 = substr($hex, -16, 4);
        $hex5 = substr($hex, -12, 12);
        $guid_str = $hex1 . "-" . $hex2 . "-" . $hex3 . "-" . $hex4 . "-" . $hex5;
        return $guid_str;*/
    }
    
    private function _checkAttr(& $aAttr = array()){
        foreach((array)$aAttr as $k => $v){
            if (!in_array($k,$this->_aAllowAttrName)){
                unset($aAttr[$k]);
            }
        }
        return true;
    }
    
    public function getErrLog(){
        return $this->_sErrLog;
    }
    
    public function getOperLog(){
        return $this->_sOperLog;
    }
    
    public function clearLog($type = 'err'){
        if($type == 'err'){
            $this->_sErrLog = '';
        } else {
            $this->_sOperLog = '';
        }
    }
    
    private function _log($str = '',$bExit = false,$type = 'err'/*err,oper*/){
        $date = date('Y-m-d H:i:s');
        if ($bExit){
            if($this->_aOptions['logDir']){
                if(!file_exists($this->_aOptions['logDir'])){
                    mkdir($this->_aOptions['logDir'],0666,true);
                }
                $file = rtrim($this->_aOptions['logDir'],'\\/') . '/ldap_exit_' . date('Ym') . '.log';
                file_put_contents($file,"{$date}---type:{$type}---{$str}\n",FILE_APPEND);
            }
            die($str);
        }
        if($type === 'err'){
            $this->_sErrLog .= "{$date}----{$str}\n";
        } else if ($type === 'oper'){
            $this->_sOperLog .= "{$date}----{$str}\n";
        }
    }
    
    public function close(){
        ldap_close($this->_conn);
    }
    
    private function _getLastExecErrLog(){
        $no = $this->_getLastErrNo();
        $err = ldap_error($this->_conn);
        return "---exec Error:{$no}---{$err}";
    }
    
    public function getLastExecErrLog(){
        return $this->_getLastExecErrLog();
    }
    
    private function _getLastErrNo(){
        return ldap_errno($this->_conn);
    }
}
/* End of file  */