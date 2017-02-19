define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.detailBtnClick = function(event) {
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new",
				"rowdata" : row.toJson()
			}
		})
	};

	Model.prototype.noBtnClick = function(event) {
		var data = this.comp("OrderData");
		data.setFilter('filter1', "fType = '" + "0" + "'");
		data.refreshData();
	};

	Model.prototype.yesBtnClick = function(event) {
		var data = this.comp("OrderData");
		data.setFilter('filter1', "fType = '" + "1" + "'");
		data.refreshData();
	};

	return Model;
});