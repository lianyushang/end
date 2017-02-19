define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/bootstrap/panel/panel');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Ending/Order-choose'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUN7j2a';
	this._flag_='fb3ed9f06bf6712da0e91bae11d56666';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fDescription":{"define":"fDescription","label":"外卖描述","name":"fDescription","relation":"fDescription","type":"String"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","rules":{"integer":true},"type":"Integer"},"fImage":{"define":"fImage","label":"外卖图片","name":"fImage","relation":"fImage","type":"String"},"fName":{"define":"fName","label":"外卖名称","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"外卖已购买数量","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fPrice":{"define":"fPrice","label":"外卖价格","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryTakeout","saveAction":"saveTakeout","tableName":"takeout","url":"/Ending/ending","xid":"takeoutData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fSum":{"define":"fSum","label":"合计金额","name":"fSum","relation":"fSum","rules":{"calculate":"$model.carData.sum(\"fMoney\")","number":true},"type":"Float"},"fSumCount":{"define":"fSumCount","label":"合计数量","name":"fSumCount","relation":"fSumCount","rules":{"calculate":"$model.carData.sum(\"fCount\")","integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"fSum","limit":20,"xid":"calcData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCount":{"define":"fCount","label":"数量","name":"fCount","relation":"fCount","rules":{"integer":true},"type":"Integer"},"fMenuID":{"define":"fMenuID","label":"菜单ID","name":"fMenuID","relation":"fMenuID","type":"String"},"fMoney":{"define":"fMoney","label":"金额","name":"fMoney","relation":"fMoney","rules":{"calculate":"$row.val(\"fCount\") * $row.val(\"fPrice\")","number":true},"type":"Float"},"fName":{"define":"fName","label":"菜品名称","name":"fName","relation":"fName","type":"String"},"fPrice":{"define":"fPrice","label":"单价","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{},"idColumn":"fMenuID","limit":20,"xid":"carData"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAddress":{"define":"fAddress","label":"详细地址","name":"fAddress","relation":"fAddress","type":"String"},"fDate":{"define":"fDate","label":"送餐时间（年月日）","name":"fDate","relation":"fDate","rules":{"date":true},"type":"Date"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","rules":{"integer":true},"type":"Integer"},"fName":{"define":"fName","label":"用户姓名","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"预定人数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fPhone":{"define":"fPhone","label":"手机号码","name":"fPhone","relation":"fPhone","type":"String"},"fRemarks":{"define":"fRemarks","label":"备注说明","name":"fRemarks","relation":"fRemarks","type":"String"},"fRoom":{"define":"fRoom","label":"预定位置大厅1包厢0","name":"fRoom","relation":"fRoom","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"送餐时间","name":"fTime","relation":"fTime","rules":{"time":true},"type":"Time"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryUser","saveAction":"saveUser","tableName":"user","url":"/Ending/ending","xid":"UserData"});
}}); 
return __result;});