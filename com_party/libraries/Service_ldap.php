<?php if (!defined('BASEPATH')) exit('No direct access allowed.');

class Service_ldap {
        private $CI;            /*!< CodeIgniter instance */
        public $connection = NULL;

        private $host;
        private $port;
        private $account_prefix;

        function __construct() {
                $this->CI = & get_instance();

                $this->CI->config->load('ldap', true);
				$configs = $this->CI->config->item('ldap');
				
                if( array_key_exists( 'ldap_host', $configs ) ) {
                        $this->host = $configs['ldap_host'];
                }
                if( array_key_exists( 'ldap_port', $configs ) ) {
                        $this->port = $configs['ldap_port'];
                }
                if( array_key_exists( 'account_prefix', $configs ) ) {
                        $this->account_prefix = $configs['account_prefix'];
                }
                //return $this->connect();
        }

        function __destruct() {
                $this->close();
        }

        /**
         * Connect to LDAP server
         */
        public function connect() {
                try {
                        $this->connection = @ldap_connect( $this->host, $this->ldap_port );
                        if( !$this->connection ) {							
                                return false;
                        }
                }catch (Exception $e) {
                        return false;
                }
                
                //设置协议版本（可能不同的PHP版本对应的协议版本不同吧）,待研究
                if (!ldap_set_option($this->connection, LDAP_OPT_PROTOCOL_VERSION, 3)) {
                    return false;
                } 
                
                return true;
        }

        /**
         * Authenticate to LDAP with username and password
         * @param $username
         * @param $password
         */
        public function authenticate( $username, $password ) {
            
            //$this->connection = @ldap_connect("ldap://192.168.1.36",'389');
                try {
                        if( $this->connection ) {
                                $bind = @ldap_bind($this->connection, $this->account_prefix.$username, $password);
                                
                                if( $bind ) {
                                        /** TODO **/
                                } else {
                                    
                                        return false;
                                }
                        } else {
                                return false;
                        }
                } catch( Exception $e ) {
                        return false;
                }
                return true;
        }
        
        /**
         * 添加用户
         * @param $adduserAD 新用户数据信息
         * 
         */
        function add($dn, $ldaprecord, $ou='Users'){            
            //ldap_add($this->connection, $base_user_dn, $ldaprecord);
            
            if (!ldap_add($this->connection, $dn, $ldaprecord)){
                 echo "add false";
            }else{
                echo "add true";
                
            }
            ldap_unbind($this->connection);
        }

        /**
         * Close LDAP connection
         */
        public function close() {
                try {
                        if( $this->connection ) {
                                @ldap_close($this->connection);
                        } else {
                                return false;
                        }
                } catch( Exception $e ) {
                        return false;
                }
                return true;
        }
}


/* End of file  */