<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js""></script>
</head>

<body>
<form name="icform"  id="icform"method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmitship('shippingOrderAction_addshippingOrder','_self');this.blur();">保存</a></li>
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
	            <td class="tableContent"><input type="text" name="consignee" value=""/></td>
	            <td class="columnTitle">打印版式：</td>
	            <td class="tableContentAuto">
	            <input type="radio" name="copyNum" value="3" checked class="input">三份
	            	<input type="radio" name="copyNum" value="2"  class="input">两份
	            	<input type="radio" name="copyNum" value="1" class="input">一份
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">信用证：</td>
	            <td class="tableContent"><input type="text" name="lcNo" value=""/></td>
	            <td class="columnTitle">运输方式：</td>
	            <td class="tableContentAuto">
	            <input type="radio" name="orderType" value="SEA" checked class="input">海运
	            	<input type="radio" name="orderType" value="AIR"  class="input">空运
	            </td>
	        </tr>		
	        <tr>
	            <!-- <td class="columnTitle">装货港：</td>
	            <td class="tableContent"><input type="text" name="portOfLoading" value=""/></td> -->
	             <td class="columnTitle">货主：</td>
	            <td class="tableContent"><input type="text" name="shipper" value=""/></td>
	            <td class="columnTitle">是否分批：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isBatch" value="1" checked class="input">是
	            	<input type="radio" name="isBatch" value="0" class="input">否
	            </td>
	        </tr>
	         <tr>
	         <td class="columnTitle">转船港：</td>
	            <td class="tableContent"><input type="text" name="portOfTrans" value=""/></td>
	            
	             <td class="columnTitle">是否转船：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isTrans" value="1" checked class="input">是
	            	<input type="radio" name="isTrans" value="0" class="input">否
	            </td>
	            
	        </tr>
	        <tr>
	        <td class="columnTitle">卸货港：</td>
	            <!-- <td class="tableContent"><input type="text" name="portOfDischarge" value=""/></td> -->
	             
	        </tr>
	         <tr>
	       			
	        <tr>
	            
	            <td class="columnTitle">装期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="loadingDate"
	            	 value=""
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
				<td class="columnTitle">出货期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="limitDate"
	            	 value=""
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
	        </tr>
	         <td class="columnTitle">正本通知人：</td>
	            <td class="tableContent"><input type="text" name="notifyParty" value=""/></td>
	              <td class="columnTitle">运费说明：</td>
	              <td class="tableContent"><textarea name="freight" style="height:100px;"></textarea>
	        </tr>			
	        <tr>
	            <td class="columnTitle">运输要求：</td>
	            <td class="tableContent"><textarea name="specialCondition" style="height:100px;"></textarea>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent"><textarea name="remark" style="height:100px;"></textarea>
	        </tr>		
		</table>
	</div>
	<div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
 装箱单列表
  </div>
  
  <div class="eXtremeTable" >
	<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
			<td></td>
			<td class="tableHeader">序号</td>
			<td class="tableHeader">买方</td>
			<td class="tableHeader">卖方</td>
			<td class="tableHeader">唛头</td>
			<td class="tableHeader">描述</td>
			<td class="tableHeader">创建者</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
 	<c:forEach items="${packingLists}" var="pl" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
		
		<td width="20">
						<input class="input" type="radio" name="shippingOrderId" value="${pl.packingListId }" />
					</td>
			<td>${status.index+1}</td>
			<td>${pl.buyer }</td>
			<td>${pl.seller }</td>
			<td>${pl.marks }</td>
			<td>${pl.descriptions }</td>
			<td>${pl.createBy }</td>
		
	</tr>
	</c:forEach> 
	
	</tbody>
</table>
</div> 
</form>
<script type="text/javascript">
		
			
			function formSubmitship (url,sTarget){
			var flag=	$("input[name='shippingOrderId']:checked").val();
			if(flag){
				 document.forms[0].target = sTarget
				    document.forms[0].action = url;
				    document.forms[0].submit();
				    return true;
				}else{
					$.messager.alert("提示","请选择装箱单","warning");    
					return
				}
			};
			   
		
</script>
</body>
</html>

