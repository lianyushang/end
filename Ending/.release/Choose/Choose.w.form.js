define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Ending/Choose'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cee6ZNv';
	this._flag_='6462cf5fb7463aa5e49944eea28eabee';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fClassName":{"define":"fClassName","label":"左列名称","name":"fClassName","relation":"fClassName","type":"String"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryRootclass","saveAction":"saveRootclass","tableName":"rootclass","url":"/Ending/Ending","xid":"rootClassData"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fRootID":{"define":"fRootID","label":"rootId","name":"fRootID","relation":"fRootID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"querySecondclass","saveAction":"saveSecondclass","tableName":"secondclass","url":"/Ending/Ending","xid":"secondClassData"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fClassDiscount":{"define":"fClassDiscount","label":"菜品折扣价","name":"fClassDiscount","relation":"fClassDiscount","rules":{"integer":true},"type":"Integer"},"fClassImg":{"define":"fClassImg","label":"菜品图片","name":"fClassImg","relation":"fClassImg","type":"String"},"fClassName":{"define":"fClassName","label":"菜品名称","name":"fClassName","relation":"fClassName","type":"String"},"fClassNumber":{"define":"fClassNumber","label":"菜品已购买数量","name":"fClassNumber","relation":"fClassNumber","rules":{"integer":true},"type":"Integer"},"fClassPrice":{"define":"fClassPrice","label":"菜品价格","name":"fClassPrice","relation":"fClassPrice","rules":{"integer":true},"type":"Integer"},"fCount":{"define":"fCount","label":"购物车数量","name":"fCount","relation":"fCount","rules":{"integer":true},"type":"Integer"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fMoney":{"define":"fMoney","label":"金额","name":"fMoney","relation":"fMoney","rules":{"calculate":"$row.val(\"fCount\") * $row.val(\"fClassPrice\")","integer":true},"type":"Integer"},"fSecondID":{"define":"fSecondID","label":"SecondId","name":"fSecondID","relation":"fSecondID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryThirdclass","saveAction":"saveThirdclass","tableName":"thirdclass","url":"/Ending/ending","xid":"thirdClassData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fSum":{"define":"fSum","label":"合计金额","name":"fSum","relation":"fSum","rules":{"calculate":"$model.thirdClassData.sum(\"fMoney\")","number":true},"type":"Float"},"fSumCount":{"define":"fSumCount","label":"合计数量","name":"fSumCount","relation":"fSumCount","rules":{"calculate":"$model.thirdClassData.sum(\"fCount\")","integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"fSum","limit":20,"xid":"calcData"});
}}); 
return __result;});