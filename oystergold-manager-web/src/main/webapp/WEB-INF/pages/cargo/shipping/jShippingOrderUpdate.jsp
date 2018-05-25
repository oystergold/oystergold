<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js""></script>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="shippingOrderId" value="${shippingOrderId }">
	<input type="hidden" name="createTime" value="${createTime}"/>
	<input type="hidden" name="createBy" value="${createBy}"/>
	<input type="hidden" name="createDept" value="${createDept}"/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('shippingOrderAction_updateshippingOrder','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
   新增委托单
  </div> 
  </div>
  </div>
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">提单抬头：</td>
	            <td class="tableContent"><input type="text" name="consignee" value="${consignee}"/></td>
	            <td class="columnTitle">打印版式：</td>
	            <td class="tableContentAuto">
	            <input type="radio" name="copyNum" value="3" ${copyNum=="3"?"checked='checked'":"" } class="input">三份
	            	<input type="radio" name="copyNum" value="2" ${copyNum=="2"?"checked='checked'":"" } class="input">两份
	            	<input type="radio" name="copyNum" value="1" ${copyNum=="1"?"checked='checked'":"" } class="input">一份
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">信用证：</td>
	            <td class="tableContent"><input type="text" name="lcNo" value="${lcNo}"/></td>
	            <td class="columnTitle">运输方式：</td>
	            <td class="tableContentAuto">
	            <input type="radio" name="orderType" value="SEA" ${orderType=="SEA"?"checked='checked'":"" }  class="input">海运
	            	<input type="radio" name="orderType" value="AIR" ${orderType=="AIR"?"checked='checked'":"" }  class="input">空运
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">装货港：</td>
	            <td class="tableContent"><input type="text" name="portOfLoading" value="${portOfLoading}"/></td>
	            <td class="columnTitle">是否分批：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isBatch" value="1" ${isBatch=="1"?"checked='checked'":"" } class="input">是
	            	<input type="radio" name="isBatch" value="0" ${isBatch=="0"?"checked='checked'":"" }class="input">否
	            </td>
	        </tr>
	         <tr>
	         <td class="columnTitle">转船港：</td>
	            <td class="tableContent"><input type="text" name="portOfTrans" value="${portOfTrans}"/></td>
	            
	             <td class="columnTitle">是否转船：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isTrans" value="1" ${isTrans=="1"?"checked='checked'":"" } class="input">是
	            	<input type="radio" name="isTrans" value="0" ${isTrans=="0"?"checked='checked'":"" } class="input">否
	            </td>
	            
	        </tr>
	        <tr>
	        <td class="columnTitle">卸货港：</td>
	            <td class="tableContent"><input type="text" name="portOfDischarge" value="${portOfDischarge}"/></td>
	              <td class="columnTitle">货主：</td>
	            <td class="tableContent"><input type="text" name="shipper" value="${shipper}"/></td>
	        </tr>
	         <tr>
	       			
	        <tr>
	            
	            <td class="columnTitle">装期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="loadingDate"
	            	 value="${loadingDate }"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
				<td class="columnTitle">出货期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="limitDate"
	            	 value="${limitDate }"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
	        </tr>
	         <td class="columnTitle">正本通知人：</td>
	            <td class="tableContent"><input type="text" name="notifyParty" value="${notifyParty}"/></td>
	              <td class="columnTitle">运费说明：</td>
	              <td class="tableContent"><textarea name="freight" style="height:100px;">${freight }</textarea>
	        </tr>			
	        <tr>
	            <td class="columnTitle">运输要求：</td>
	            <td class="tableContent"><textarea name="specialCondition" style="height:100px;">${specialCondition }</textarea>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent"><textarea name="remark" style="height:100px;">${remark }</textarea>
	        </tr>		
		</table>
	</div>
	
</form>
</body>
</html>

