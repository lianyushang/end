<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:61px;left:-1px;height:auto;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="carData" idColumn="fMenuID">
   <column label="菜单ID" name="fMenuID" type="String" xid="xid1"></column>
   <column label="菜品名称" name="fName" type="String" xid="xid2"></column>
   <column label="单价" name="fPrice" type="Float" xid="xid3"></column>
   <column label="数量" name="fCount" type="Integer" xid="xid4"></column>
   <column label="金额" name="fMoney" type="Float" xid="xid5"></column>
   <rule xid="rule3">
    <col name="fMoney" xid="ruleCol4">
     <calculate xid="calculate4">
      <expr xid="default6">$row.val(&quot;fCount&quot;) *  $row.val(&quot;fPrice&quot;)</expr></calculate> </col> </rule> </div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content3"><div xid="div1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-card" xid="panel3" style="height:40%;">
   <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel" xid="carousel2" auto="true" interval="5" style="height:280px;">
   <ol class="carousel-indicators" xid="ol2"></ol>
   <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" routable="false" xid="contents2">
    <div class="x-contents-content" xid="content4"><img src="./image/红烧猪蹄.jpg" alt="" xid="image1" class="tb-img1"></img></div><div class="x-contents-content" xid="content5"><img src="./image/回锅肉.jpg" alt="" xid="image6" class="tb-img1"></img></div>
  
  <div class="x-contents-content" xid="content6"><img src="./image/酱骨架.jpg" alt="" xid="image2" class="tb-img1"></img></div>
  <div class="x-contents-content" xid="content7"><img src="./image/辣子鸡丁.jpg" alt="" xid="image3" class="tb-img1"></img></div>
  <div class="x-contents-content" xid="content8"><img src="./image/蚂蚁上树.jpg" alt="" xid="image4" class="tb-img1"></img></div></div> 
   
   </div></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel4" style="height:40%;">
   <table class="table table-bordered table-hover table-striped tb-menu" component="$UI/system/components/bootstrap/table/table" xid="table1">
   
   <tbody class="x-list-template" xid="listTemplate1">
    <tr xid="tr2" style="background-color:white;">
     <td xid="td1">
  <div xid="div3" align="center"><img alt="" xid="image-Choose" class="tb-img2" bind-click="image_ChooseClick" src="./image/button_one.png"></img>
  <span xid="span9"></span></div></td>
     <td xid="td2"><div xid="div4" align="center"><img src="./image/button_two.png" alt="" xid="image-Location" class="tb-img2" bind-click="image_LocationClick"></img>
  <span xid="span10"></span></div></td>
     <td xid="td3"><div xid="div5" align="center"><img src="./image/button_three.png" alt="" xid="image-Menu" class="tb-img2" bind-click="image_MenuClick"></img><span xid="span11"></span></div></td>
     
  </tr> 
  <tr xid="tr3"><td xid="td5"><div xid="div6" align="center"><img src="./image/button_four.png" alt="" xid="image-Check" class="tb-img2 img-responsive" bind-click="image_CheckClick" dir="ltr"></img>
  <span xid="span12"></span></div>
  </td><td xid="td6"><div xid="div7" align="center"><img src="./image/button_five.png" alt="" xid="image-Introduce" class="tb-img2" bind-click="image_IntroduceClick"></img><span xid="span13"></span></div></td><td xid="td7"><div xid="div8" align="center"><img src="./image/button_six.png" alt="" xid="image-Member" class="tb-img2" bind-click="image_MemberClick"></img>
  <span xid="span14"></span></div></td></tr></tbody> 
  </table></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel5" style="bottom:10px;height:23%;">
  
  
  <div xid="div2" style="height:100%;"><img src="./image/bg.png" alt="" xid="image5" class="img-responsive img2"></img>
  
  <div xid="div9" style="position:relative;bottom:50px;background-color:white;width:80px;left:30px;height:35px;margin-top:5px;" class="x-col pull-left center-block">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label clearfix center-block" label="电话预约" xid="BookingBtn" onClick="BookingBtnClick" style="width:80px;padding:5px 15px 5px 5px;height:31px;">
     <i xid="i1"></i>
     <span xid="span15">电话预约</span></a> </div><div xid="div10" style="position:relative;bottom:50px;right:30px;background-color:white;width:80px;height:35px;margin-top:5px;" class="x-col pull-right center-block">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right center-block" label="查看订单" xid="CheckBtn" style="width:86px;padding:5px 5px 5px 15px;" onClick="CheckBtnClick">
     <i xid="i2"></i>
     <span xid="span16">查看订单</span></a> </div></div></div></div></div>
   </div></div></div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Choose" src="./Buy.w" title="菜品选择"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Location" title="预约订座" src="./Location.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Menu" title="外卖订餐" src="./Order-choose.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Check" title="查看订单" src="./Check.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Introduce" title="公司介绍" src="./Introduce.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Member" title="成为会员" src="./Member.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog-Booking" src="./Booking.w" status="normal" height="33%" width="95%"></span></div>