define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.userID = "user";
	};

	Model.prototype.BtnClick = function(event) {
		var userData = this.comp("UserData");
		userData.saveData();
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})

	};

	Model.prototype.Btn1Click = function(event) {
		var data = this.comp("UserData");
		var self = this;
		data.setValue("fRoom", "1");
		alert("大厅");
	};

	Model.prototype.Btn0Click = function(event) {
		var data = this.comp("UserData");
		var self = this;
		data.setValue("fRoom", "0");
		alert("包厢");
	};
	return Model;
});