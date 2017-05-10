<?php
/**
 * Created by PhpStorm.
 * User: x
 * Date: 2017/3/29
 * Time: 13:12
 */
$cfg_NotPrintHead = false;
header("Content-Type: text/html; charset=utf-8");
include_once (dirname(__FILE__)."/../include/common.inc.php");
error_reporting(E_ALL || ~E_NOTICE);
require_once(DEDEINC.'/json.class.php');

$reval = array();
$dsql->SetQuery("SELECT id,itemname FROM `#@__stepselect` ORDER BY id DESC LIMIT 0,10");
$dsql->Execute('me');
while ($row = $dsql->GetArray('me')) {
    $row['itemname'] = gb2utf8($row['itemname']);
    $reval[] = $row;
}
$json = new Services_JSON(SERVICES_JSON_SUPPRESS_ERRORS);
echo $json->encode($reval);