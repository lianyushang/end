<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:130px;left:6px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="VipData" queryAction="queryVip" saveAction="saveVip" url="/Ending/Ending" tableName="vip" idColumn="fID">
   <column label="fID" name="fID" type="Integer" xid="default1"></column>
   <column label="fVipName" name="fVipName" type="String" xid="default2"></column>
   <column label="fVipPhone" name="fVipPhone" type="String" xid="default3"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit center-block" xid="labelEdit2">
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" placeHolder="请输入您的姓名" bind-ref='$model.VipData.ref("fVipName")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit center-block" xid="labelEdit3">
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" placeHolder="请输入您的手机号码" bind-ref='$model.VipData.ref("fVipPhone")'></input></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="确定" xid="sureBtn" style="background-color:green;width:30%;" onClick="sureBtnClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./Member-confirm.w" width="95%" height="33%" resizable="true" status="normal"></span></div>