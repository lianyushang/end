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
	Model.prototype.image1Click = function(event) {
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new",
				"rowdata" : row.toJson()
			}
		})
	};

	Model.prototype.cleanBtnClick = function(event) {
		this.comp("carData").clear();
	};
	Model.prototype.saveBtnClick = function(event) {
		var userData = this.comp("UserData");
		userData.saveData({
			"onSuccess" : function() {
				justep.Util.hint("下单成功！")
			}
		})
	};
	Model.prototype.button6Click = function(event) {
		var row = event.bindingContext.$object;
		var carData = this.comp("carData");
		if (carData.find([ 'fMenuID' ], [ row.val('fID') ]).length === 0) {
			carData.newData({
				index : 0,
				defaultValues : [ {
					"fMenuID" : row.val("fID"),
					"fName" : row.val("fClassName"),
					"fPrice" : row.val("fClassPrice"),
					"fCount" : 1
				} ]
			});
		}
	};
	Model.prototype.addCarBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("fCount", row.val("fCount") + 1);
	};
	Model.prototype.subBtnClick = function(event) {
		var row = event.bindingContext.$object;
		if (row.val("fCount") > 0)
			row.val("fCount", row.val("fCount") - 1);
	};
	return Model;
});