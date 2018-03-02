<?php
require_once('const.inc.php');
spl_autoload_register(function($argClass){

  //print("The next line generates an error.<br>");

  $class = $argClass;
 // if (substr($class, 0, 4) == 'jtbc')
if (substr($class, 0, 4) == 'jtbc')
  {
    $file = __DIR__ . '/lib/' . str_replace('\\', '/', $class) . '.inc.php';
    if (is_file($file)) require_once($file);
  }
  else
  {
    $file = __DIR__ . '/vendor/' . str_replace('\\', '/', $class) . '.php';
    if (is_file($file)) require_once($file);
  }
});
?>