<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js"></script>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="id" value="${id}"/>

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
   浏览发票
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">发票号：</td>
	            <td class="tableContent">${id}</td>
	            <td class="columnTitle">创建日期：</td>
	            <td class="tableContent">${createTime}</td>
	        </tr>	
	        <tr>
	            <td class="columnTitle">合同编号</td>
	            <td class="tableContent">${scNo}</td>
	            <td class="columnTitle">提单号：</td>
	            <td class="tableContent">${blNo}</td>
	        </tr>	
	        <tr>
	            <td class="columnTitle">贸易条款：</td>
	            <td class="tableContent">${tradeTerms}</td>
	            <td class="columnTitle">创建人：</td>
	            <td class="tableContent">${createBy}</td>
	        </tr>	
	        <tr>
	            <td class="columnTitle">创建部门：</td>
	            <td class="tableContent">${createDept}</td>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContentAuto" disabled=true>
	            	<input type="radio"   ${state==0?"checked='chencked'":"" } disabled="disabled" class="input"/>新增
	            	<input type="radio"  ${state==1?"checked='chencked'":"" }  disabled="disabled"  class="input"/>已提交
	            
	           </td>
	        </tr>	
		</table>
	</div>
 
 
</form>
</body>
</html>

