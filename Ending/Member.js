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
	Model.prototype.getBtnClick = function(event) {
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})
	};

	return Model;
});