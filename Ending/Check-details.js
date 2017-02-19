define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var data = this.comp("OrderData");
		data.loadData([ event.data.rowdata ]);
		data.first();
	};

	Model.prototype.delBtnClick = function(event) {
		var data = this.comp("OrderData");
		var row = event.bindingContext.$object;
		data.deleteData(row);
		data.saveData();
	};

	return Model;
});