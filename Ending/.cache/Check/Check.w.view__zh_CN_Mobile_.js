window.__justep.__ResourceEngine.loadCss([{url: '/v_84d9c5008ac949578500f7ee8a44ac61l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_7fd7bff3ef7a411f8977c37adc1bdaefl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_bae7e382e7d5462da1469430862bb2ffl_zh_CNs_d_m/system/core.min.js','/v_e8db9ce420aa4fa4b17c3facaa51bb5al_zh_CNs_d_m/system/common.min.js','/v_a520ffe019cc406fb15c29733323fff1l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Ending/Check'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyueYFr';
	this._flag_='5fd536cdc99d52262f8daf5da935d221';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAddress":{"define":"fAddress","label":"订单地址","name":"fAddress","relation":"fAddress","type":"String"},"fContent":{"define":"fContent","label":"下单菜品名称","name":"fContent","relation":"fContent","type":"String"},"fData":{"define":"fData","label":"订单时间","name":"fData","relation":"fData","rules":{"date":true},"type":"Date"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","rules":{"integer":true},"type":"Integer"},"fMoney":{"define":"fMoney","label":"下单菜品单价","name":"fMoney","relation":"fMoney","rules":{"integer":true},"type":"Integer"},"fNumber":{"define":"fNumber","label":"下单菜品数量","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fPhone":{"define":"fPhone","label":"联系号码","name":"fPhone","relation":"fPhone","type":"String"},"fRoom":{"define":"fRoom","label":"就餐位置","name":"fRoom","relation":"fRoom","type":"String"},"fSum":{"define":"fSum","label":"合计金额","name":"fSum","relation":"fSum","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"时间","name":"fTime","relation":"fTime","rules":{"time":true},"type":"Time"},"fType":{"define":"fType","label":"o未处理1已处理","name":"fType","relation":"fType","type":"String"},"fUserID":{"define":"fUserID","label":"下单人","name":"fUserID","relation":"fUserID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryOrderclass","saveAction":"saveOrderclass","tableName":"orderclass","url":"/Ending/ending","xid":"OrderData"});
}}); 
return __result;});
