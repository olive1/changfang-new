<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{ 
	   redirect(site_url("admin/login"));
       exit;
	   echo 'welcome/index';exit;
	    $this->load->theme_view('login');
		//$this->load->view('welcome_message');
	}
    
    function niceadmin()
    {
        $this->load->theme_view('login');
    }

	function ldap_test()
	{
		
        $this->config->load('ldap', true);
		$configs = $this->config->item('ldap');
        
		$is_load = $this->load->library('service_ldap');
        $is_connect         = $this->service_ldap->connect();
        var_dump($is_connect);
		$is_auth          = $this->service_ldap->authenticate($configs['ldap_rdn'], $configs['ldap_pass']);
        
        
        
        //$is_auth = $this->service_ldap->authenticate("cn=mike1 mike1,cn=admin,dc=test,dc=com", "mike123");
        var_dump($is_auth);
        if(!$is_auth){
            echo 'false 管理员账号认证失败'; exit;
        }else{
            echo 'TRUE 认证成功！<br>';exit;
        }
        
        
        /*
        
        userpassword
        
        new_values_uid_0
        new_values[sn][0]
        
        
        dn	cn=mike2 mike2,cn=admin,dc=test,dc=com
 	cn	mike2 mike2
 	objectClass	inetOrgPerson
top
 	sn	mike2
    
    
        */
        
$info["givenName"]="oagitmike3";
$info["sn"]='oagitmike3';
$info["uid"]="oagitmike3";
$info["mail"]="oagitmike3";
$info["displayName"]= "oagitmike3";
$info["gidNumber"] = 500;
$info["uidNumber"] = 500;
$info["homeDirectory"] = "/home/mike";
$info["cn"] = 'oagitmike3';
$info["userPassword"]="oagitmike3{sha}";
$info["objectclass"][0] = "top";
$info["objectclass"][1] = "person";
$info["objectclass"][2] = "inetOrgPerson";
$info["objectclass"][3] = "organizationalPerson";
$info["objectclass"][4] = "posixAccount";




$isadd = ldap_add($this->service_ldap->connection,$configs['ldap_rdn'],$info);
        if($isadd){
            echo 'true';
        }else{
            echo 'false';
        }
        
        exit;
        
$this->ldap->add_user($user,$info);
        
        
  $newuser_md5hashed_password = md5(123);
  $ldaprecord['cn'] = "phpmike2";
  $ldaprecord['givenName'] = "phpmike2";
  $ldaprecord['sn'] = "phpmike2";
  // put user in objectClass inetOrgPerson so we can set the mail and phone number attributes
  $ldaprecord['objectclass'][0] = "person";
  $ldaprecord['objectclass'][1] = "organizationalPerson";
  $ldaprecord['objectclass'][2] = "inetOrgPerson2";
  $ldaprecord['mail'] = "phpmike2@puchao.com";
  $ldaprecord['telephoneNumber'] = "13817999192";
  // and now the tricky part, base64 encode the binary hash result:
  $ldaprecord['userPassword'] = '{MD5}' . base64_encode(pack('H*',$newuser_md5hashed_password));
  // If you have the plain text password instead, you could use:
  // $ldaprecord['userPassword'] = '{MD5}' . base64_encode(pack('H*',md5($newuser_plaintext_password)));
$isadd = ldap_add($this->service_ldap->connection,$configs['ldap_rdn'],$ldaprecord);
        if($isadd){
            echo 'true';
        }else{
            echo 'false';
        }
        
        exit;
        
        
        $object_name="mike1Group";

        $members[] ="CN=User1,OU=PathToAddGroupTo,OU=All Users,DC=test,DC=com";
        $members[] ="CN=User2,OU=PathToAddGroupTo,OU=All Users,DC=test,DC=com";

        $addgroup_ad['cn']="$object_name";
    $addgroup_ad['objectClass'][0] = "top";
    $addgroup_ad['objectClass'][1] ="mike1";
    $addgroup_ad['groupType']="2";
    $addgroup_ad['member']=$members;
    $addgroup_ad["sAMAccountName"] =$object_name;

    ldap_add($this->service_ldap->connection,$configs['ldap_rdn'],$addgroup_ad);
    exit;
        
        
        
        
            
          //$ldaprecord['cn'] = ' mike1_cn';
          $ldaprecord['givenName'] = ' mike1_give';
          $ldaprecord['sn'] = ' mike1_sn';
          // put user in objectClass inetOrgPerson so we can set the mail and phone number attributes
          $ldaprecord['objectclass'][0] = " person";
          $ldaprecord['objectclass'][1] = " organizationalPerson";
          $ldaprecord['objectclass'][2] = " inetOrgPerson";
          //$ldaprecord['mail'] = 'mike1@test.com';
          //$ldaprecord['telephoneNumber'] = 'mike1_tel';
          // and now the tricky part, base64 encode the binary hash result:
          $ldaprecord['userPassword'] = '{MD5}' . base64_encode(pack('H*',$newuser_md5hashed_password));
          
          
          //ldap_add($this->service_ldap->connection, $configs['ldap_rdn'], $ldaprecord);
          
          
          
            //$info["dn"] = "cn=JohnJones,dc=test,dc=com";
            $info["cn"] = "JohnJones";
            $info["sn"] = "Jones";
            //$info["objectclass"] = "Users";
            //$info['objectclass'][0] = "person1";
            //$info['objectclass'][0] = "person2";
            $info['userPassword'] = '{MD5}' . base64_encode(pack('H*',$newuser_md5hashed_password));
        
            // add data to directory
            $r = ldap_add($this->service_ldap->connection, $configs['ldap_rdn'], $info);
            
    
    
    
          exit;
            $this->service_ldap->add($configs['ldap_rdn'], $ldaprecord);
        
		$this->service_ldap->close();
	}
    
   
}
