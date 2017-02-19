<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:12px;left:70px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="takeoutData" queryAction="queryTakeout" saveAction="saveTakeout" url="/Ending/ending" tableName="takeout" idColumn="fID"><column label="fID" name="fID" type="Integer" xid="default1"></column>
  <column label="外卖图片" name="fImage" type="String" xid="default2"></column>
  <column label="外卖名称" name="fName" type="String" xid="default3"></column>
  <column label="外卖价格" name="fPrice" type="Float" xid="default4"></column>
  <column label="外卖描述" name="fDescription" type="String" xid="default5"></column>
  <column label="外卖已购买数量" name="fNumber" type="Integer" xid="default6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="calcData" idColumn="fSum" autoNew="true">
   <column label="合计金额" name="fSum" type="Float" xid="xid6"></column>
   <column label="合计数量" name="fSumCount" type="Integer" xid="xid7"></column>
   <rule xid="rule2">
    <col name="fSum" xid="ruleCol2">
     <calculate xid="calculate2">
      <expr xid="default12">$model.carData.sum(&quot;fMoney&quot;)</expr></calculate> </col> 
    <col name="fSumCount" xid="ruleCol3">
     <calculate xid="calculate3">
      <expr xid="default13">$model.carData.sum(&quot;fCount&quot;)</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="carData" idColumn="fMenuID">
   <column label="菜单ID" name="fMenuID" type="String" xid="xid1"></column>
   <column label="菜品名称" name="fName" type="String" xid="xid2"></column>
   <column label="单价" name="fPrice" type="Float" xid="xid3"></column>
   <column label="数量" name="fCount" type="Integer" xid="xid4"></column>
   <column label="金额" name="fMoney" type="Float" xid="xid5"></column>
   <rule xid="rule3">
    <col name="fMoney" xid="ruleCol4">
     <calculate xid="calculate4">
      <expr xid="default14">$row.val(&quot;fCount&quot;) *  $row.val(&quot;fPrice&quot;)</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="UserData" queryAction="queryUser" saveAction="saveUser" url="/Ending/ending" tableName="user" idColumn="fID">
   <column label="fID" name="fID" type="Integer" xid="default27"></column>
   <column label="手机号码" name="fPhone" type="String" xid="default28"></column>
   <column label="用户姓名" name="fName" type="String" xid="default29"></column>
   <column label="送餐时间（年月日）" name="fDate" type="Date" xid="default30"></column>
   <column label="送餐时间" name="fTime" type="Time" xid="default31"></column>
   <column label="预定人数" name="fNumber" type="Integer" xid="default32"></column>
   <column label="预定位置大厅1包厢0" name="fRoom" type="Integer" xid="default33"></column>
   <column label="备注说明" name="fRemarks" type="String" xid="default34"></column>
   <column label="详细地址" name="fAddress" type="String" xid="default35"></column></div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full tb-trans" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i1" class="icon-chevron-left"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content" xid="TakeoutContent"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel6">
   <div class="panel-heading" xid="heading3" style="height:105px;padding:6px 6px 6px 6px;">
    <img src="./image/waimai.jpg" alt="" xid="image1" class="img-title"></img><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" selected="button2"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="套餐" xid="button2" target="content8" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span2">套餐</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="盖饭" xid="listBtn" target="content9" onClick="listBtnClick">
   <i xid="i3"></i>
   <span xid="span3">盖饭</span></a></div></div> 
   <div class="panel-body" xid="body3" style="top:105px;"><div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents5">
   <div class="x-contents-content" xid="content8"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="takeoutData">
    <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
     <li xid="li1" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
       <div class="x-col x-col-fixed" xid="col4" style="width:90px;">
        <img src="" alt="" xid="image2" class="img1" bind-attr-src='$model.getImageUrl("./image/"+val("fImage"))' style="margin-top:10px;margin-bottom:10px;"></img></div> 
       <div class="x-col x-col-fixed" xid="col5">
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("fName")' style="font-size:x-small;"></div>
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-text='"￥"+ val("fPrice")' style="font-size:xx-small;color:#FF0000;"></div>
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("fDescription")' style="font-size:1px;color:#C0C0C0;"></div></div> 
       <div class="x-col x-col-fixed" xid="col6" style="width:50px;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="addBtn" icon="linear linear-bus" onClick="addBtnClick">
         <i xid="i4" class="linear linear-bus"></i>
         <span xid="span5"></span></a> 
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-text='"已点"+val("fNumber")+"份"' style="font-size:xx-small;width:50px;"></div></div> </div> </li> </ul> </div></div>
  <div class="x-contents-content" xid="content9"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list3" data="takeoutData">
    <ul class="x-list-template x-min-height list-group" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl3">
     <li xid="li3" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li3">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
       <div class="x-col x-col-fixed" xid="col10" style="width:90px;">
        <img src="" alt="" xid="image4" class="img1" bind-attr-src='$model.getImageUrl("./image/"+val("fImage"))' style="margin-top:10px;margin-bottom:10px;"></img></div> 
       <div class="x-col x-col-fixed" xid="col11">
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='ref("fName")'></div>
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-text='"￥"+ val("fPrice")' style="color:#FF0000;"></div></div> 
       <div class="x-col x-col-fixed" xid="col12" style="width:55px;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button6" icon="linear linear-bus" onClick="addBtnClick">
         <i xid="i6" class="linear linear-bus"></i>
         <span xid="span8"></span></a> 
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-text='"已点"+val("fNumber")+"份"' style="font-size:xx-small;width:55px;"></div></div> </div> </li> </ul> </div></div></div></div>
   <div class="panel-footer" xid="footer3"><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="订单预览" xid="button7" style="width:80%;" target="OrderContent">
   <i xid="i7"></i>
   <span xid="span9" bind-text='$model.calcData.val("fSumCount")&gt;0?"订单预览("+ $model.calcData.val("fSumCount")+")":"订单预览"'>订单预览</span></a></div></div></div>
  <div class="x-contents-content" xid="OrderContent">
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4">
     <div class="panel-heading" xid="heading1" style="background-color:#008000;">
      <h4 class="center-block panel-title" xid="h41" style="width:25%;">我的菜单</h4></div> 
     <div class="panel-body" xid="body1">
      <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list4" data="carData">
       <ul class="x-list-template" xid="listTemplateUl4">
        <li xid="li4">
         <div component="$UI/system/components/justep/row/row" class="x-row pull-left" xid="row4">
          <div class="x-col x-col-33" xid="col1">
           <span xid="span10" bind-text='val("fName")'></span></div> 
          <div class="x-col x-col-33" xid="col2">
           <span xid="span11" bind-text=' val("fPrice") +"元/份"'></span></div> <div class="x-col x-col-fixed" xid="col7" style="width:auto;">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="subBtn" xid="subBtn" icon="linear linear-volumemedium" onClick="subBtnClick">
            <i xid="i9" class="linear linear-volumemedium"></i>
            <span xid="span12">subBtn</span></a> </div><div class="x-col x-col-fixed" xid="col14" style="width:auto;">
           <span xid="span7" bind-text='val("fCount")'></span></div><div class="x-col x-col-fixed" xid="col16" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="addCarBtn" icon="linear linear-bus" onClick="addCarBtnClick">
            <i xid="i10" class="linear linear-bus"></i>
            <span xid="span6"></span></a></div></div> 
         </li> </ul> </div> </div> 
     <div xid="footer1">
      <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row5">
       <div class="x-col x-col-50" xid="col8">
        <span xid="span4" bind-text='"共计："+ $model.calcData.val("fSum")+"元"'></span></div> 
       <div class="x-col x-col-25" xid="col9">
        <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" label="加菜" target="TakeoutContent">
         <i xid="i11"></i>
         <span xid="span13">加菜</span></a> </div> 
       <div class="x-col x-col-25" xid="col15">
        <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="清空" xid="cleanBtn" onClick="cleanBtnClick">
         <i xid="i5"></i>
         <span xid="span14">清空</span></a> </div> </div> </div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel5">
     <div class="panel-heading" xid="heading2">
      <h4 class="center-block panel-title" xid="h42" style="width:25%;">我的信息</h4></div> 
     <div class="panel-body" xid="body2">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
       <label class="x-label" xid="label1">手机号码</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='UserData.ref("fPhone")'></input></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
       <label class="x-label" xid="label2">用户姓名</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='UserData.ref("fName")'></input></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
       <label class="x-label" xid="label4">详细地址</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" style="width:40%;" bind-text=" " bind-ref='UserData.ref("fAddress")'></input></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
       <label class="x-label" xid="label3">就餐时间</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='UserData.ref("fDate")'></input>
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="input7" style="width:40%;" bind-ref='UserData.ref("fTime")'></input></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
       <label class="x-label" xid="label5">备注说明</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" bind-ref='UserData.ref("fRemarks")'></input></div> </div> 
     <div class="panel-footer" xid="footer2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block center-block" label="拨打电话" xid="button8" style="width:80%;" onClick="button8Click">
     <i xid="i12"></i>
     <span xid="span10">拨打电话</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block center-block" label="立即预定" xid="orderBtn" style="width:80%;" onClick="orderBtnClick">
     <i xid="i8"></i>
     <span xid="span15">立即预定</span></a></div></div>
  </div></div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./Booking.w"></span></div>