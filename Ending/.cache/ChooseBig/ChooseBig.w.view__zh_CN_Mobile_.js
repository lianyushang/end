window.__justep.__ResourceEngine.loadCss([{url: '/v_46ddb15ae318479b8fff25222e7ea872l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_b94d319eaa2f455188226efae16436e6l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_bcfcf806c4014c519dbbe5908546012al_zh_CNs_d_m/system/core.min.js','/v_b854b7562285415f809286509bd9659dl_zh_CNs_d_m/system/common.min.js','/v_7222f70c57a24d72a1ab335b70b9b92cl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
