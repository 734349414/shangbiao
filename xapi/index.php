<?php
/**
 * Created by PhpStorm.
 * User: x
 * Date: 2017/3/30
 * Time: 19:56
 */

require_once(dirname(__file__).'/../include/common.inc.php');
require_once(DEDEINC.'/request.class.php');

// 请求例子 http://localhost/xapi/index.php?ct=index&ac=index
$ct = Request('ct', 'index'); // ct代表着control，即：控制器名(即文件名，类名)
$ac = Request('ac', 'index'); // at代表着action，即该控制器下的某个方法
// 统一应用程序入口
RunApp($ct, $ac);