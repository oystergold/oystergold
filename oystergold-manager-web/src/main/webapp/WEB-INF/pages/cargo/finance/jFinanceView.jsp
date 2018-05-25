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
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
   查看财务信息
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">制单人：</td>
	            <td class="tableContent">
	            	${inputBy}
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">制单日期：</td>
	            <td class="tableContent">${inputDate }</td>
	        </tr>	
	         <tr>
	            <td class="columnTitle">创建人：</td>
	            <td class="tableContent">${createBy}</td>
	        </tr>
	        
	         <tr>
	            <td class="columnTitle">创建部门：</td>
	            <td class="tableContent">${createDept}</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">创建日期：</td>
	            <td class="tableContent">${createTime}</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContent">
	            	<c:if test="${state==1}">已委托</c:if>
	            	<c:if test="${state!=1}">草稿</c:if>
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle">描述：</td>
	            <td class="tableContent">${descriptions}</td>
	        </tr>
		</table>
	</div>
 </form>
</body>
</html>