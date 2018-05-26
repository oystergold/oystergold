<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
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
   查看用户
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">所在部门：</td>
	            <td class="tableContent">
	            	${dept.deptName }
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">用户名：</td>
	            <td class="tableContent">${userName }</td>
	        </tr>	
	         <tr>
	            <td class="columnTitle">姓名：</td>
	            <td class="tableContent">${userinfo.name }</td>
	        </tr>
	        
	         <tr>
	            <td class="columnTitle">直接领导：</td>
	            <td class="tableContent">${userinfo.manager.userinfo.name }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">入职日期：</td>
	            <td class="tableContent">${userinfo.joinDate }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">岗位：</td>
	            <td class="tableContent">${userinfo.station }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">性别：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="userinfo.gender" value="1" ${userinfo.gender==1?"checked='chencked'":"" }  disabled="disabled" class="input"/>男
	            	<input type="radio" name="userinfo.gender" value="0" ${userinfo.gender==0?"checked='chencked'":"" }   disabled="disabled" class="input"/>女
				</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">联系方式：</td>
	            <td class="tableContent">${userinfo.telephone }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">生日：</td>
	            <td class="tableContent">${userinfo.birthday}</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">邮箱：</td>
	            <td class="tableContent">${userinfo.email }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">等级：</td>
	          
	            <td class="tableContentAuto" disabled=true>
	            	<input type="radio" name="userinfo.degree" value="0"  ${userinfo.degree==0?"checked='chencked'":"" } disabled="disabled" class="input"/>超级管理员
	            	<input type="radio" name="userinfo.degree" value="1" ${userinfo.degree==1?"checked='chencked'":"" }  disabled="disabled"  class="input"/>跨部门跨人员
	            	<input type="radio" name="userinfo.degree" value="2"  ${userinfo.degree==2?"checked='chencked'":"" } disabled="disabled" class="input"/>管理所有下属部门和人员
	            	<input type="radio" name="userinfo.degree" value="3"  ${userinfo.degree==3?"checked='chencked'":"" } disabled="disabled" class="input"/>管理本部门
	            	<input type="radio" name="userinfo.degree" value="4" ${userinfo.degree==4?"checked='chencked'":"" } disabled="disabled"  class="input"/>普通员工
	            
	           </td>
	        </tr>
	        <tr>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent">${userinfo.remark }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent">${userinfo.orderNo }</td>
	        </tr>
	         <tr>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContent">${state==0?'停用':'启用' }</td>
	        </tr>		
		</table>
	</div>
 </form>
</body>
</html>