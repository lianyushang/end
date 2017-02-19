define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var carData = this.comp("carData");
		if (carData.find([ 'fMenuID' ], [ row.val('fID') ]).length === 0) {
			carData.newData({
				index : 0,
				defaultValues : [ {
					"fMenuID" : row.val("fID"),
					"fName" : row.val("fName"),
					"fPrice" : row.val("fPrice"),
					"fCount" : 1
				} ]
			});
		}
	};
	Model.prototype.listBtnClick = function(event) {
		var data = this.comp("takeoutData");
		data.setFilter('filter3', "fType = '" + "1" + "'");
		data.refreshData();
	};
	Model.prototype.button2Click = function(event) {
		var data = this.comp("takeoutData");
		data.setFilter('filter3', "fType = '" + "0" + "'");
		data.refreshData();
	};
	Model.prototype.subBtnClick = function(event) {
		var row = event.bindingContext.$object;
		if (row.val("fCount") > 0)
			row.val("fCount", row.val("fCount") - 1);
	};
	Model.prototype.addCarBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("fCount", row.val("fCount") + 1);
	};
	Model.prototype.cleanBtnClick = function(event) {
		this.comp("carData").clear();
	};
	Model.prototype.button8Click = function(event) {
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	Model.prototype.orderBtnClick = function(event) {
		var userData = this.comp("UserData");
		var orderData = this.comp();
		userData.saveData({
			"onSuccess" : function() {
				justep.Util.hint("下单成功！")
			}
		})
	};
	return Model;
});