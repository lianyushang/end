<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <span xid="span1" class="center-block text">预约成功，是否需要现在直接点餐</span></div> 
   <div class="x-panel-content" xid="content1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="是" xid="yesBtn" style="width:45%;" onClick="yesBtnClick">
     <i xid="i1"></i>
     <span xid="span2">是</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="否" xid="noBtn" style="width:45%;" onClick="noBtnClick">
     <i xid="i2"></i>
     <span xid="span3">否</span></a> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./Location-confirm.w" resizable="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" src="./Buy.w"></span></div>