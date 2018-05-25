<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js""></script>
</head>

<body>
<form name="icform" method="post">
	   <input type="hidden" name="shippingOrderId" value="${shippingOrderId}"/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<c:if test="${empty checkBy }">
<li id="save"><a href="#" onclick="formSubmit('shippingOrderAction_checkShippingOrderOK','_self');this.blur();">审核</a></li>
</c:if>
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
   查看委托单
  </div> 
  </div>
  </div>
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">提单抬头：</td>
	            <td class="tableContent">${consignee}</td>
	            <td class="columnTitle">打印版式：</td>
	            <td class="tableContentAuto">
	            <input type="radio" name="copyNum" value="3" ${copyNum=="3"?"checked='checked'":"" } class="input"  disabled="disabled">三份
	            	<input type="radio" name="copyNum" value="2"  ${copyNum=="2"?"checked='checked'":"" } class="input"  disabled="disabled">两份
	            	<input type="radio" name="copyNum" value="1"  ${copyNum=="1"?"checked='checked'":"" } class="input"  disabled="disabled">一份
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">信用证：</td>
	            <td class="tableContent">${lcNo}</td>
	            <td class="columnTitle">运输方式：</td>
	            <td class="tableContentAuto">
	            <input type="radio" name="orderType" value="SEA"  ${orderType=="SEA"?"checked='checked'":"" } class="input"  disabled="disabled">海运
	            	<input type="radio" name="orderType" value="AIR" ${orderType=="AIR"?"checked='checked'":"" }  class="input"  disabled="disabled">空运
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">装货港：</td>
	            <td class="tableContent">${portOfLoading}</td>
	            <td class="columnTitle">是否分批：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isBatch" value="1" ${isBatch=="1"?"checked='checked'":"" } class="input"  disabled="disabled">是
	            	<input type="radio" name="isBatch" value="0" ${isBatch=="0"?"checked='checked'":"" } class="input"  disabled="disabled">否
	            </td>
	        </tr>
	         <tr>
	         <td class="columnTitle">转船港：</td>
	            <td class="tableContent">${portOfTrans}</td>
	            
	             <td class="columnTitle">是否转船：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isTrans" value="1" ${isTrans=="1"?"checked='checked'":"" } class="input"  disabled="disabled">是
	            	<input type="radio" name="isTrans" value="0" ${isTrans=="0"?"checked='checked'":"" }class="input"  disabled="disabled">否
	            </td>
	            
	        </tr>
	        <tr>
	        <td class="columnTitle">卸货港：</td>
	            <td class="tableContent">${portOfDischarge}</td>
	              <td class="columnTitle">货主：</td>
	            <td class="tableContent">${shipper}</td>
	        </tr>
	         <tr>
	       			
	        <tr>
	            
	            <td class="columnTitle">装期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="loadingDate"
	            	 value="${loadingDate }"  disabled="disabled"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
				<td class="columnTitle">出货期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="limitDate"
	            	 value="${limitDate }"  disabled="disabled"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
	        </tr>
	         <td class="columnTitle">正本通知人：</td>
	            <td class="tableContent">${notifyParty}</td>
	              <td class="columnTitle">运费说明：</td>
	              <td class="tableContent">${freight }</td>
	        </tr>			
	        <tr>
	            <td class="columnTitle">运输要求：</td>
	            <td class="tableContent">${specialCondition }</td>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent">${remark }</td>
	        </tr>		
		</table>
	</div>
 
 
</form>
</body>
</html>

