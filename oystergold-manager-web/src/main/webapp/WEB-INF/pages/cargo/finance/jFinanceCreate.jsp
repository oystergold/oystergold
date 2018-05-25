<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript">
	</script>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save" ><a href="#" onclick="formSubmit('financeActionAdd','_self');this.blur();">添加</a></li>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    发票列表
  </div> 


<div class="eXtremeTable" >
	<table id="ec_table" class="tableRegion" width="98%" border="1">
		<thead>
			<tr>
				<td class="tableHeader">请选择</td>
				<td class="tableHeader">编号</td>
				<td class="tableHeader">合同编号</td>
				<td class="tableHeader">提单号</td>
				<td class="tableHeader">贸易条款</td>
				<td class="tableHeader">状态</td>
			</tr>
		</thead>
		<tbody class="tableBody" >
			<c:forEach items="${invoices}" var="cp" >
				<tr height="40" class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
					<td><input type="radio" name="invoiceId" value="${cp.id}" id="${cp.id}"></td>
					<td>${cp.id}</td>
					<td>${cp.scNo}</td>
					<td>${cp.blNo}</td>
					<td>${cp.tradeTerms}</td>
					<td>${cp.state==0?"草稿":"已审核"}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
 
</form>
</body>
</html>
  

