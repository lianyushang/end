define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Ending/ChooseBig'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRfIZ7z';
	this._flag_='aa6ebe3c59ab787c72a44d9c7b5df825';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fClassDiscount":{"define":"fClassDiscount","label":"菜品折扣价","name":"fClassDiscount","relation":"fClassDiscount","rules":{"integer":true},"type":"Integer"},"fClassImg":{"define":"fClassImg","label":"菜品图片","name":"fClassImg","relation":"fClassImg","type":"String"},"fClassName":{"define":"fClassName","label":"菜品名称","name":"fClassName","relation":"fClassName","type":"String"},"fClassNumber":{"define":"fClassNumber","label":"菜品已购买数量","name":"fClassNumber","relation":"fClassNumber","rules":{"integer":true},"type":"Integer"},"fClassPrice":{"define":"fClassPrice","label":"菜品价格","name":"fClassPrice","relation":"fClassPrice","rules":{"integer":true},"type":"Integer"},"fCount":{"define":"fCount","label":"购物车数量","name":"fCount","relation":"fCount","rules":{"integer":true},"type":"Integer"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fMoney":{"define":"fMoney","label":"金额","name":"fMoney","relation":"fMoney","rules":{"calculate":"$row.val(\"fCount\") * $row.val(\"fClassPrice\")","integer":true},"type":"Integer"},"fSecondID":{"define":"fSecondID","label":"SecondId","name":"fSecondID","relation":"fSecondID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryThirdclass","saveAction":"saveThirdclass","tableName":"thirdclass","url":"/Ending/ending","xid":"thirdClassData"});
}}); 
return __result;});