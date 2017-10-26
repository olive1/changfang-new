<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database type. ie: mysql.  Currently supported:
				 mysql, mysqli, postgre, odbc, mssql, sqlite, oci8
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Active Record class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['autoinit'] Whether or not to automatically initialize the database.
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $active_record variables lets you determine whether or not to load
| the active record class
*/

$active_group = 'default';
$active_record = TRUE;

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'test1';
$db['default']['password'] = 'test1';
$db['default']['database'] = 'changfang';
$db['default']['dbdriver'] = 'mysql';
$db['default']['dbprefix'] = 'dili_';
$db['default']['pconnect'] = FALSE;
$db['default']['db_debug'] = TRUE;
$db['default']['cache_on'] = FALSE;
$db['default']['cachedir'] = '';
$db['default']['char_set'] = 'utf8';
$db['default']['dbcollat'] = 'utf8_general_ci';
$db['default']['swap_pre'] = '';
$db['default']['autoinit'] = TRUE;
$db['default']['stricton'] = FALSE;

//91kaihui
$db['default']['hostname'] = 'dg1ujsih0x.gotoftp5.com';
$db['default']['username'] = 'dg1ujsih0x';
$db['default']['password'] = 'wg8zajdj';
$db['default']['database'] = 'dg1ujsih0x';

//triptt西数
$db['default']['hostname'] = 'sql.m217.vhostgo.com';
$db['default']['username'] = 'triptt';
$db['default']['password'] = 'fsgrmhqy';
$db['default']['database'] = 'triptt';


//access mdb
$db['access']['hostname'] = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/x/test/mg/changfang/x/web/data/#database#/#database#.mdb";//你自己的数据库路径
//$db['access']['hostname'] = "pdo:DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/public/Database1.mdb";//这里用odbc而不是pdo_odbc驱动,
//西数triptt
//$db['access']['hostname'] = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/wwwroot/triptt/wwwroot/weixin/data/#database#/#database#.mdb";

$db['access']['username'] = "";
$db['access']['password'] = "";
//$db['access']['database'] = "D:/public/Database1.mdb";//测试有没有都没有影响
$db['access']['dbdriver'] = "odbc";
//$db['access']['dbdriver'] = "pdo";//这里用odbc而不是pdo_odbc驱动,
$db['access']['dbprefix'] = "";
$db['access']['pconnect'] = FALSE;
$db['access']['db_debug'] = TRUE;
$db['access']['cache_on'] = FALSE;
$db['access']['cachedir'] = "";
$db['access']['char_set'] = "utf8";
$db['access']['dbcollat'] = "utf8_general_ci";
$db['access']['swap_pre'] = '';
$db['access']['autoinit'] = TRUE;
$db['access']['stricton'] = FALSE;


/* End of file database.php */
/* Location: ./application/config/database.php */