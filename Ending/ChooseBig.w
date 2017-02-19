<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:51px;left:-8px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="thirdClassData" autoNew="false" queryAction="queryThirdclass" saveAction="saveThirdclass" url="/Ending/ending" tableName="thirdclass" idColumn="fID">
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
      <expr xid="default18">$row.val(&quot;fCount&quot;) *  $row.val(&quot;fClassPrice&quot;)</expr></calculate> </col> </rule> </div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11"><span xid="span1" class="center-block" style="padding-left:75px;" bind-text='$model.thirdClassData.val("fClassName")'><![CDATA[]]></span></div>
   <div class="x-col x-col-fixed" xid="col12" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right" label="button" icon="linear linear-fileadd" onClick='{"operation":"window.close"}'>
   <i class="linear linear-fileadd"></i>
   <span></span></a></div></div></div>
   <div class="x-panel-content" xid="content1"><img alt="" xid="image1" class="img" bind-attr-src='$model.getImageUrl("./image/"+ $model.thirdClassData.val("fClassImg"))'></img></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-text='"￥"+$model.thirdClassData.val("fClassPrice")+"元"'></div></div>
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;"></div>
   </div></div></div></div>