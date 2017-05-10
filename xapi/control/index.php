<?php
/**
 * Created by PhpStorm.
 * User: x
 * Date: 2017/3/30
 * Time: 19:56
 * Note
 * 获取所有一级大栏目,对应http://nice.whzjlh.cn
 * /xapi/index.php?ct=index&ac=index
 * 获取二级类目,对应http://nice.whzjlh.cn/show.php?c=1
 * /xapi/index.php?ct=index&ac=categoryByIndexId&indexId=1
 * 搜索,对应http://nice.whzjlh.cn/search.php
 * /xapi/index.php?ct=index&ac=search&code=0101
 * 搜索结果查看详细(key前端自己用),对应http://nice.whzjlh.cn/showresult.php?g=0101&key=0101
 * /xapi/index.php?ct=index&ac=getDetailByCode&code=0101&key=010100
 */

include_once (dirname(__FILE__)."/../include/common.inc.php");
error_reporting(E_ALL || ~E_NOTICE);
require_once(DEDEINC.'/json.class.php');

class index extends Control{

    /**
     * 获取一级类目
     */
    function ac_index()
    {
        $reval = array();
        $this->dsql->SetQuery("SELECT indexId, name, note FROM `#@__shangbiao_index`");
        $this->dsql->Execute('me');
        while ($row = $this->dsql->GetArray('me')) {
            $reval[] = $row;
        }

        $this->toJSON($reval);
    }

    function ac_categoryByIndexId()
    {
        $indexId = request('indexId', '');
        if(empty($indexId) || strlen($indexId) <= 0){
            echo "indexId为空";
            return;
        }

        // 查询注释
        $indexBean = $this->dsql->GetOne("SELECT indexId, name, note FROM `#@__shangbiao_index` WHERE indexId = '$indexId'");

        // 类目详细列表
        $categroyDetail = array();
        $this->dsql->SetQuery("SELECT `indexId`, `code`, `name`, `detail` FROM `#@__shangbiao_detail` WHERE indexId = '$indexId'");
        $this->dsql->Execute('me');
        while ($row = $this->dsql->GetArray('me')) {
            $categroyDetail[] = $row;
        }

        // 二级类目列表
        $categroyBase = array();

        foreach($categroyDetail as $cateBean){
            $creategroyBean = new CreategroyBean();
            $creategroyBean->indexId = $cateBean['indexId'];
            $creategroyBean->code = $cateBean['code'];
            $creategroyBean->name = $cateBean['name'];
            $categroyBase[] = $creategroyBean;
        }

        $pageIndex = new PageIndex();
        $pageIndex->index = $indexBean;
        $pageIndex->categroyBase = $categroyBase;
        $pageIndex->categroyDetail = $categroyDetail;

        $this->toJSON($pageIndex);
    }

    /**
     * 搜索
     */
    function ac_search(){
        $code = request('code', '');
        if(empty($code) || strlen($code) <= 0){
            echo "搜索内容为空";
            return;
        }

        $result = array();
        $this->dsql->SetQuery("SELECT `indexId`, `code`, `name` FROM `#@__shangbiao_detail` WHERE detail LIKE '%$code%'");
        $this->dsql->Execute('me');
        while ($row = $this->dsql->GetArray('me')) {
            $result[] = $row;
        }

        $this->toJSON($result);
    }

    function ac_getDetailByCode(){
        $code = request('code', '');
        if(empty($code) || strlen($code) <= 0){
            echo "参数为空";
            return;
        }

        $result = $this->dsql->GetOne("SELECT `indexId`, `code`, `name`, `detail` FROM `#@__shangbiao_detail` WHERE code = '$code'");
        $this->toJSON($result);
    }

    function toJSON($rlt){
        $json = new Services_JSON(SERVICES_JSON_SUPPRESS_ERRORS);
        echo $json->encode($rlt);
    }

}

class CreategroyBean{
    public $indexId;
    public $code;
    public $name;
}

class PageIndex{
    public $index;
    public $categroyBase;
    public $categroyDetail;
}
