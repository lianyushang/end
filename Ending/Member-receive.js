define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this._deviceType = "pc"; // pc || wx || app
		this._userID = "user";
		this._userDefaultName = "新用户";
	};

	Model.prototype.sureBtnClick = function(event) {
		var VipData = this.comp("VipData");
		VipData.saveData({
			onSuccess : function() {
				justep.Util.hint("用户信息保存成功");
			}
		});
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})

	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		// 获取url上的code参数 - 微信授权code，用于获取微信用户信息
		var weixinCode = this.getContext().getRequestParameter("code");

		// 判断运行环境是否在X5移动客户端中，如果在移动客户端中，则当deviceready后取手机设备uuid作为用户唯一标识
		if (justep.Browser.isX5App) {
			this._deviceType = "app";
			CommonUtils.attachDoubleClickExitApp(function() {
				if (self.comp('contents').getActiveIndex() === 0) {
					return true;
				}
				return false;
			});
			document.addEventListener("deviceready", function() {
				self._userID = window.device.uuid;
				self._userDefaultName = "新用户（来自X5APP的用户）";
			}, false);

		} else if (weixinCode !== "") {
			this._deviceType = "wx";
			if (justep.Browser.isWeChat) {
				this.wxApi = new navigator.WxApi("wx3fb4a0dd8ea0730c");
			}

			Baas.sendRequest({
				"url" : "/weixin/weixin",
				"action" : "userinfo",
				"async" : false,
				"params" : {
					code : weixinCode
				},
				"success" : function(weixinUser) {
					self._userID = weixinUser.openid;
					self._userDefaultName = weixinUser.nickname + "（来自微信的用户）";
					self._userDefaultAddress = weixinUser.country + weixinUser.province + weixinUser.city;
					self._userPhotoURL = weixinUser.headimgurl;
				}
			});

		}

		this.comp("VipData").filters.setVar("user", this._userID);
	};

	Model.prototype.loadUserData = function() {
		var VipData = this.comp("VipData");
		if (!VipData.loaded) {
			userData.refreshData();
			// 如果客户信息为空，新增客户信息
			if (VipData.getCount() === 0) {
				this.comp().newData({
					index : 0,
					defaultValues : [ {
						"fID" : this._userID,
						"fVipName" : this._userDefaultName,
						"fVipPhone" : this._userDefaultPhone
					} ]
				});

			}
		}
	};
	return Model;
});