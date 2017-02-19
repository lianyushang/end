define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Ending/Location'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cma22mu';
	this._flag_='2856316bdee6bc6c5bae989d630b8be8';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAddress":{"define":"fAddress","label":"详细地址","name":"fAddress","relation":"fAddress","type":"String"},"fDate":{"define":"fDate","label":"送餐时间（年月日）","name":"fDate","relation":"fDate","rules":{"date":true},"type":"Date"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fName":{"define":"fName","label":"用户姓名","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"预定人数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fPhone":{"define":"fPhone","label":"手机号码","name":"fPhone","relation":"fPhone","type":"String"},"fRemarks":{"define":"fRemarks","label":"备注说明","name":"fRemarks","relation":"fRemarks","type":"String"},"fRoom":{"define":"fRoom","label":"预定位置大厅1包厢0","name":"fRoom","relation":"fRoom","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"送餐时间","name":"fTime","relation":"fTime","rules":{"time":true},"type":"Time"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryUser","saveAction":"saveUser","tableName":"user","url":"/Ending/ending","xid":"UserData"});
}}); 
return __result;});