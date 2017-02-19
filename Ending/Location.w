<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:10px;left:83px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="UserData" queryAction="queryUser" saveAction="saveUser" url="/Ending/ending" tableName="user" idColumn="fID"><column label="fID" name="fID" type="String" xid="default1"></column>
  <column label="手机号码" name="fPhone" type="String" xid="default2"></column>
  <column label="用户姓名" name="fName" type="String" xid="default3"></column>
  <column label="送餐时间（年月日）" name="fDate" type="Date" xid="default4"></column>
  <column label="送餐时间" name="fTime" type="Time" xid="default5"></column>
  <column label="预定人数" name="fNumber" type="Integer" xid="default6"></column>
  <column label="预定位置大厅1包厢0" name="fRoom" type="Integer" xid="default7"></column>
  <column label="备注说明" name="fRemarks" type="String" xid="default8"></column>
  <column label="详细地址" name="fAddress" type="String" xid="default9"></column></div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full tb-trans" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
     <i xid="i1" class="icon-chevron-left"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2" style="height:80%;">
   
  <div class="x-contents-content" xid="content4"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="在线预约" xid="button5" style="width:100%;background-color:green;">
   <i xid="i5"></i>
   <span xid="span10">在线预约</span></a><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[手机号码]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.UserData.ref("fPhone")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[用户姓名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.UserData.ref("fName")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[预约时间]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.UserData.ref("fDate")'></input><input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.UserData.ref("fTime")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[预约人数]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.UserData.ref("fNumber")'></input><span xid="span9"><![CDATA[人左右]]></span></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit5">
   <label class="x-label" xid="label5"><![CDATA[预约位置]]></label>
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="大厅" xid="Btn1" style="width:70px;" onClick="Btn1Click">
   <i xid="i6"></i>
   <span xid="span11"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="包间" xid="Btn0" style="width:70px;" onClick="Btn0Click">
   <i xid="i7"></i>
   <span xid="span12"></span></a></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6"><![CDATA[备注说明]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" bind-ref='$model.UserData.ref("fRemarks")'></input></div>
  </div>
  </div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel3" style="height:20%;">
   <div class="x-panel-content" xid="content3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col1" style="width:20px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button3" icon="linear linear-phonehandset">
   <i xid="i3" class="linear linear-phonehandset"></i>
   <span xid="span3"></span></a></div>
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;"><span xid="span4" style="color:#FF0000;font-size:small;"><![CDATA[预约电话：]]></span></div>
   <div class="x-col" xid="col3"><span xid="span5"><![CDATA[400-358-1587]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col4" style="width:20px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button4" icon="linear linear-bicycle">
   <i xid="i4" class="linear linear-bicycle"></i>
   <span xid="span8"></span></a></div>
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;"><span xid="span6" style="color:#FF0000;font-size:small;"><![CDATA[公司地址：]]></span></div>
   <div class="x-col" xid="col6"><span xid="span7"><![CDATA[江南大道588号恒鑫大厦2106室]]></span></div></div></div>
   </div></div>
   <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="提交预约" xid="Btn" style="width:70%;" onClick="BtnClick">
   <i xid="i2"></i>
   <span xid="span2">提交预约</span></a></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./Location-submit.w" resizable="true" width="95%" height="33%"></span>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1"></span></div>