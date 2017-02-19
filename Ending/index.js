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
	Model.prototype.transURL = function(url) {
		var real = require.toUrl(url);
		return "url('" + real + "')";
	};
	Model.prototype.image_ChooseClick = function(event) {
		this.comp("windowDialog-Choose").open({
			"data" : {
				"operate" : "new"
			}
		})
	};

	Model.prototype.image_LocationClick = function(event) {
		this.comp("windowDialog-Location").open({
			"data" : {
				"operate" : "new"
			}
		})
	};

	Model.prototype.image_MenuClick = function(event) {
		this.comp("windowDialog-Menu").open({
			"data" : {
				"operate" : "new"
			}
		})
	};

	Model.prototype.image_CheckClick = function(event) {
		this.comp("windowDialog-Check").open({
			"data" : {
				"operate" : "new"
			}
		})
	};

	Model.prototype.image_IntroduceClick = function(event) {
		this.comp("windowDialog-Introduce").open({
			"data" : {
				"operate" : "new"
			}
		})
	};

	Model.prototype.image_MemberClick = function(event) {
		this.comp("windowDialog-Member").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	Model.prototype.BookingBtnClick = function(event) {
		this.comp("windowDialog-Booking").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	Model.prototype.CheckBtnClick = function(event) {
		this.comp("windowDialog-Check").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	Model.prototype.modelLoad = function(event) {
		window.carData = this.comp("carData");
	};
	return Model;
});