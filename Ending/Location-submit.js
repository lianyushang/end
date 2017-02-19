define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.noBtnClick = function(event) {
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	Model.prototype.yesBtnClick = function(event){
this.comp("windowDialog2").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	return Model;
});