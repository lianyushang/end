<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:82px;left:3px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="rootClassData" queryAction="queryRootclass" saveAction="saveRootclass" url="/Ending/Ending" tableName="rootclass" idColumn="fID">
   <column label="fID" name="fID" type="String" xid="default1"></column>
   <column label="左列名称" name="fClassName" type="String" xid="default2"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="secondClassData" queryAction="querySecondclass" saveAction="saveSecondclass" url="/Ending/Ending" tableName="secondclass" idColumn="fID" autoNew="false">
   <column label="fID" name="fID" type="String" xid="default3"></column>
   <column label="rootId" name="fRootID" type="String" xid="default4"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="thirdClassData" autoNew="false" queryAction="queryThirdclass" saveAction="saveThirdclass" url="/Ending/ending" tableName="thirdclass" idColumn="fID">
   <column label="fID" name="fID" type="String" xid="default9"></column>
   <column label="SecondId" name="fSecondID" type="String" xid="default10"></column>
   <column label="菜品名称" name="fClassName" type="String" xid="default11"></column>
   <column label="菜品图片" name="fClassImg" type="String" xid="default12"></column>
   <column label="菜品价格" name="fClassPrice" type="Integer" xid="default13"></column>
   <column label="菜品折扣价" name="fClassDiscount" type="Integer" xid="default14"></column>
   <column label="菜品已购买数量" name="fClassNumber" type="Integer" xid="default15"></column>
   <column label="购物车数量" name="fCount" type="Integer" xid="default16"></column>
   <column label="金额" name="fMoney" type="Integer" xid="default17"></column>
   <rule xid="rule1">
    <col name="fMoney" xid="ruleCol1">
     <calculate xid="calculate1">
      <expr xid="default18">$row.val(&quot;fCount&quot;) *  $row.val(&quot;fClassPrice&quot;)</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="carData" idColumn="fMenuID">
   <column label="菜单ID" name="fMenuID" type="String" xid="xid1"></column>
   <column label="菜品名称" name="fName" type="String" xid="xid2"></column>
   <column label="单价" name="fPrice" type="Float" xid="xid3"></column>
   <column label="数量" name="fCount" type="Integer" xid="xid4"></column>
   <column label="金额" name="fMoney" type="Float" xid="xid5"></column>
   <rule xid="rule3">
   <col name="fMoney" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default6">$row.val(&quot;fCount&quot;) *  $row.val(&quot;fPrice&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="calcData" idColumn="fSum" autoNew="true">
   <column label="合计金额" name="fSum" type="Float" xid="xid6"></column>
   <column label="合计数量" name="fSumCount" type="Integer" xid="xid7"></column>
   <rule xid="rule2">
   <col name="fSum" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default7">$model.carData.sum(&quot;fMoney&quot;)</expr></calculate> </col> 
   <col name="fSumCount" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default8">$model.carData.sum(&quot;fCount&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="UserData" queryAction="queryUser" saveAction="saveUser" url="/Ending/ending" tableName="user" idColumn="fID"><column label="fID" name="fID" type="Integer" xid="default27"></column>
  <column label="手机号码" name="fPhone" type="String" xid="default28"></column>
  <column label="用户姓名" name="fName" type="String" xid="default29"></column>
  <column label="送餐时间（年月日）" name="fDate" type="Date" xid="default30"></column>
  <column label="送餐时间" name="fTime" type="Time" xid="default31"></column>
  <column label="预定人数" name="fNumber" type="Integer" xid="default32"></column>
  <column label="预定位置大厅1包厢0" name="fRoom" type="Integer" xid="default33"></column>
  <column label="备注说明" name="fRemarks" type="String" xid="default34"></column>
  <column label="详细地址" name="fAddress" type="String" xid="default35"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full tb-trans" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn" label="button" xid="button3" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i11" class="icon-chevron-left"></i>
     <span xid="span17"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="ChooseContent"><div component="$UI/system/components/bootstrap/row/row" class="row tb-box" xid="row2">
   <div class="col col-xs-3" xid="col10">
    <div component="$UI/system/components/justep/list/list" class="x-list tb-root" xid="rootClassList" data="rootClassData" dataItemAlias="rootClassRow">
     <ul class="x-list-template list-group" xid="listTemplateUl1">
      <li xid="li1" bind-css="{'current':rootClassRow.val('fID')==$model.rootClassData.val('fID')}" class="list-group-item text-center tb-nopadding">
       <h5 xid="h52" bind-text="ref('fClassName')" class="text-black"></h5></li> </ul> </div> </div> 
   <div class="col col-xs-9" xid="col11">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="secondClassList" data="secondClassData" filter='$row.val("fRootID")==$model.rootClassData.val("fID")' dataItemAlias="secondClassRow">
     <ul class="x-list-template" xid="listTemplateUl2">
      <li xid="li2">
       <h5 bind-text="ref('fClassName')" class="text-muted" xid="h51"></h5>
       <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="thirdClassList" data="thirdClassData" filter="$row.val('fSecondID')==secondClassRow.val('fID')" dataItemAlias="thirdClassRow">
        <ul class="x-list-template" xid="listTemplateUl3">
         <li xid="li3" class="col text-center tb-listBox text-black">
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
           <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
            <img alt="" xid="image1" class="img1" bind-click="image1Click" bind-attr-src='$model.getImageUrl("./image/"+val("fClassImg"))'></img></div> 
           <div class="x-col x-col-fixed" xid="col2">
            <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="font-size:small;" bind-ref='ref("fClassName")'></div>
            <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" style="color:#FF0000;font-size:x-small;" bind-text=' val("fClassPrice")+"元/份"'></div>
            <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-text='"已点"+ val("fClassNumber")+"份"' style="font-size:xx-small;"></div></div> 
           <div class="x-col x-col-fixed center-block" xid="col5" style="width:auto;">
            
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button6" icon="linear linear-bus" onClick="button6Click">
   <i xid="i9"></i>
   <span xid="span14"></span></a>
  </div> 
  </div> 
          </li> </ul> </div> </li> </ul> </div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label pull-right" label="我的菜单" xid="MenuBtn" target="MenuContent">
     <i xid="i3"></i>
     <span xid="span2" bind-text='$model.calcData.val("fSumCount")&gt;0?"我的菜单("+ $model.calcData.val("fSumCount")+")":"我的菜单"'>我的菜单</span></a> </div> </div></div>
  <div class="x-contents-content" xid="MenuContent"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4">
   <div class="panel-heading" xid="heading1" style="background-color:#008000;">
    <h4 class="center-block panel-title" xid="h41" style="width:25%;">我的菜单</h4></div> 
   <div class="panel-body" xid="body1">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="carData">
   <ul class="x-list-template" xid="listTemplateUl12">
    <li xid="li12">
     <div component="$UI/system/components/justep/row/row" class="x-row pull-left" xid="row11" style="width:50%;">
      <div class="x-col" xid="col31">
       <span xid="span19" bind-text='ref("fName")'></span></div> 
      <div class="x-col" xid="col30">
       <span xid="span20" bind-text='val("fPrice")+"元/份" '></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
      <div class="x-col" xid="col6">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="input13" placeHolder="请输入特殊要求"></input></div> 
      <div class="x-col x-col-fixed" xid="col7" style="width:auto;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button11" xid="subBtn" icon="linear linear-volumemedium" onClick="subBtnClick">
        <i xid="i17" class="linear linear-volumemedium"></i>
        <span xid="span21">subBtn</span></a> </div> 
      <div class="x-col x-col-fixed" xid="col4" style="width:auto;">
       <span xid="span23" bind-text='val("fCount")'></span></div> 
      <div class="x-col x-col-fixed" xid="col3" style="width:auto;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="addCarBtn" icon="linear linear-bus" onClick="addCarBtnClick">
        <i xid="i18" class="linear linear-bus"></i>
        <span xid="span22"></span></a> </div> </div> </li> </ul> </div></div> 
   <div xid="footer1">
    <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row3">
     <div class="x-col x-col-50" xid="col8">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-text='"共计："+ $model.calcData.val("fSum")+"元"'></div></div> 
     <div class="x-col x-col-25" xid="col9">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" label="加菜" target="ChooseContent">
       <i xid="i4"></i>
       <span xid="span8">加菜</span></a> </div> 
     <div class="x-col x-col-25" xid="col12">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="清空" xid="cleanBtn" onClick="cleanBtnClick">
       <i xid="i5"></i>
       <span xid="span9">清空</span></a> </div> </div> </div> </div><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel5">
   <div class="panel-heading" xid="heading2">
    <h4 class="center-block panel-title" xid="h42" style="width:25%;">我的信息</h4></div> 
   <div class="panel-body" xid="body2">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
     <label class="x-label" xid="label1">手机号码</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='UserData.ref("fPhone")'></input></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
     <label class="x-label" xid="label2">用户姓名</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='UserData.ref("fName")'></input></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
     <label class="x-label" xid="label3">就餐时间</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='UserData.ref("fDate")'></input>
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="input7" style="width:40%;" bind-ref='UserData.ref("fTime")'></input></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
     <label class="x-label" xid="label4">预定人数</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" style="width:40%;" bind-text=" " bind-ref='$model.UserData.ref("fNumber")'></input>
     <span xid="span12">人左右</span></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
     <label class="x-label" xid="label6">就餐位置</label>
     <div class="x-edit" xid="div1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="true" xid="buttonGroup1" selected="colorBtn1">
       <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="大厅" xid="colorBtn1">
        <i xid="i6"></i>
        <span xid="span10">大厅</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="包间" xid="colorBtn2">
        <i xid="i7"></i>
        <span xid="span11">包间</span></a> </div> </div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
     <label class="x-label" xid="label5">备注说明</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" bind-ref='UserData.ref("fRemarks")'></input></div> </div> 
   </div><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block center-block" label="立即预定" xid="saveBtn" style="width:80%;" onClick="saveBtnClick">
   <i xid="i8"></i>
   <span xid="span13">立即预定</span></a>
  </div></div>
  </div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./ChooseBig.w" status="normal" width="80%" height="50%" style="top:10px;left:38px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" src="./Menu -clean.w"></span></div>