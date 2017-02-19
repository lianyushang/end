<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:7px;left:46px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="OrderData" queryAction="queryOrderclass" saveAction="saveOrderclass" url="/Ending/ending" tableName="orderclass" idColumn="fID">
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
   <div class="x-panel-top" xid="top1" height="98"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card center-block" tabbed="true" xid="buttonGroup1" style="height:50px;" selected="noBtn">
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="未处理" xid="noBtn" style="width:50%;" target="content7" onClick="noBtnClick">
   <i xid="i2"></i>
   <span xid="span2">未处理</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="已处理" xid="yesBtn" style="width:50%;" target="content8" onClick="yesBtnClick">
   <i xid="i3"></i>
   <span xid="span3">已处理</span></a></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents3">
   <div class="x-contents-content" xid="content7"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="OrderData" autoLoad="true">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1">
  
  <div xid="div1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-25" xid="col1"><span xid="span4"><![CDATA[订餐人:]]></span></div>
   <div class="x-col x-col-25" xid="col2"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("fUserID")'></div></div>
   <div class="x-col" xid="col3"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("fData")'></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("fAddress")'></div></div>
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="detailBtn" icon="icon-chevron-right" onClick="detailBtnClick">
   <i xid="i4" class="icon-chevron-right"></i>
   <span xid="span8"></span></a></div>
   </div></div></li></ul> </div></div>
  <div class="x-contents-content" xid="content8"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list2" data="OrderData">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li2" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
      <div class="x-col x-col-25" xid="col11">
       <span xid="span9">订餐人:</span></div> 
      <div class="x-col x-col-25" xid="col9">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("fUserID")'></div></div> 
      <div class="x-col" xid="col10">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("fData")'></div></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col" xid="col7">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("fAddress")'></div></div> 
      <div class="x-col x-col-fixed" xid="col8" style="width:auto;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-chevron-right">
        <i xid="i5" class="icon-chevron-right"></i>
        <span xid="span13"></span></a> </div> </div> </li> </ul> </div></div></div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./Check-details.w"></span></div>