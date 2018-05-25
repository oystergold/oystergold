<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
</head>

<body>
<form name="icform" method="post">
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="submit1('invoiceAction_save','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
   新增发票
  </div> 
  
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">提单号</td>
	            <td class="tableContent"><input type="text" name="blNo" /></td>
	        </tr>	
	        <tr>
	            <td class="columnTitle">贸易条款</td>
	            <td class="tableContent"><input type="text" name="tradeTerms"/></td>
	        </tr>	
		</table>
	</div>
 
 
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    委托单列表
  </div> 
  
<div>
 
 	<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">委托单号</td>
		<td class="tableHeader">复核人</td>
		<td class="tableHeader">提单抬头</td>
		<td class="tableHeader">份数</td>
		<td class="tableHeader">创建人</td>
		<td class="tableHeader">创建部门</td>
		<td class="tableHeader">创建日期</td>
		<td class="tableHeader">货主</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	<c:forEach items="${shippingOrderList}" var="o" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
		<td><input type="radio" name="id"  value="${o.shippingOrderId}" /></td>
		<td>${o.shippingOrderId}</td>
		<td>${o.checkBy}</td>
		<td>${o.consignee}</td>
		<td>${o.copyNum}</td>
		<td>${o.createBy}</td>
		<td>${o.createDept}</td>
		<td>${o.shipper}</td>
		
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</div> 
</form>
<script type="text/javascript">
	function submit1(url,sTarget) {
		var id = $("input[name='id']:checked").val();
		if(id){
			formSubmit(url,sTarget);this.blur();
		}else{
			$.messager.alert("提示","请选择要生成发票的委托单","warning");
			return;
		}
	}
	

</script>
</body>
</html>

