<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:162px;left:11px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="OrderData" queryAction="queryOrderclass" saveAction="saveOrderclass" url="/Ending/ending" tableName="orderclass" idColumn="fID">
   <column label="fID" name="fID" type="Integer" xid="default16"></column>
   <column label="下单人" name="fUserID" type="String" xid="default17"></column>
   <column label="联系号码" name="fPhone" type="String" xid="default18"></column>
   <column label="下单菜品名称" name="fContent" type="String" xid="default19"></column>
   <column label="下单菜品数量" name="fNumber" type="Integer" xid="default20"></column>
   <column label="下单菜品单价" name="fMoney" type="Integer" xid="default21"></column>
   <column label="合计金额" name="fSum" type="Integer" xid="default22"></column>
   <column label="订单时间" name="fData" type="Date" xid="default23"></column>
   <column label="时间" name="fTime" type="Time" xid="default24"></column>
   <column label="订单地址" name="fAddress" type="String" xid="default25"></column>
   <column label="o未处理1已处理" name="fType" type="String" xid="default26"></column>
   <column label="就餐位置" name="fRoom" type="String" xid="default27"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full tb-trans" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i1" class="icon-chevron-left"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2" style="height:70%;">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:green;">
   <div class="x-titlebar-left" xid="left2"></div>
   <div class="x-titlebar-title" xid="title2"><span xid="span7" style="color:#FFFFFF;"><![CDATA[我的菜单]]></span></div>
   <div class="x-titlebar-right reverse" xid="right2"></div></div>
  </div>
   <div class="x-panel-content" xid="content2">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="OrderData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col x-col-fixed" xid="col16"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("fContent")' style="font-size:medium;"></div></div>
   <div class="x-col x-col-33" xid="col17"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output7" style="color:#FF0000;font-size:medium;" bind-text=' val("fMoney")+"元/份"'></div></div>
   <div class="x-col x-col-33" xid="col18"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='ref("fNumber")' style="font-size:medium;"></div></div></div>
  </li></ul> </div></div>
   </div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel3" style="height:30%;">
   <div class="x-panel-content" xid="content3"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="font-size:xx-small;" bind-text='"订餐人："+  $model.OrderData.val("fUserID")'></div><div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" style="font-size:xx-small;" bind-text='"联系电话：" + $model.OrderData.val("fPhone")'></div><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-text='"预订人数："+$model.OrderData.val("fNumber")+"人左右" ' style="font-size:xx-small;"></div><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" style="font-size:xx-small;" bind-text='"就餐位置："+  $model.OrderData.val("fRoom")'></div><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-text='"预约时间："+ $model.OrderData.val("fData")+ $model.OrderData.val("fTime")' style="font-size:xx-small;"></div></div>
   </div></div>
   <div class="x-panel-bottom" xid="bottom1">
  
  
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="取消订单" xid="delBtn" style="width:80%;" onClick="delBtnClick">
   <i xid="i2"></i>
   <span xid="span8">取消订单</span></a></div></div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>