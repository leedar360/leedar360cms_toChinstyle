<?php
ob_start();
session_start();
set_time_limit(1800);
error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('PRC');
define('APPNAME', 'jtbc_');
define('ASSETSPATH', 'common/assets');
define('BASEDIR', '');
define('CACHEDIR', 'cache');
define('CHARSET', 'utf-8');
define('CONSOLEDIR', 'console');
define('COOKIESPATH', '/');
define('DB', 'MySQL');
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '1234');
define('DB_DATABASE', 'chinstyledb');
define('DB_TABLE_PREFIX', 'jtbc_');
define('LANGUAGE', 'zh-cn');
define('SEPARATOR', ' - ');
define('SITESTATUS', 100);
define('THEME', 'default');
define('TEMPLATE', 'default');
define('VERSION', '3.0.1.0');
define('WEBKEY', 'J1T2B3C4');
define('XMLSFX', '.jtbc');
?>
