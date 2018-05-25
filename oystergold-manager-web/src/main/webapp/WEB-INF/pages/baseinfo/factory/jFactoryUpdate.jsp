<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js""></script>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('factoryAction_updateFactory','_self');this.blur();">保存</a></li>
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
   新增购销合同
  </div> 
  </div>
  </div>
  

				<input type="hidden" name = id  value="${id }"> 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">厂家全称:：</td>
	            <td class="tableContent"><input type="text" name="fullName" value="${fullName} "/></td>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="state" value="1" ${state=='1'?"checked":"" } class="input">合作
	            	<input type="radio" name="state" value="2" ${state=='2'?"checked":"" } class="input">不合作
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">类型：</td>
	            <td class="tableContent"><input type="text" name="ctype" value="${ctype }"/></td>
	            <td class="columnTitle">工厂简称：</td>
	            <td class="tableContent"><input type="text" name="factoryName" value="${factoryName }"/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">联系人：</td>
	            <td class="tableContent"><input type="text" name=contacts value="${contacts }" /></td>
	            <td class="columnTitle">手机：</td>
	            <td class="tableContent"><input type="text" name="mobile" value="${mobile }"/></td>
	        </tr>		
	      	<tr>
	      		<td class="columnTitle">创单人：</td>
	            <td class="tableContent">${_CURRENT_USER.userName }</td>
	            <td class="columnTitle">创单人部门：</td>
	            <td class="tableContent">${_CURRENT_USER.dept.deptName }</td>
	      	</tr>	
	        <tr>
	            <td class="columnTitle">传真：</td>
	            <td class="tableContent"><input type="text" name="fax" value="${fax }"/></td>
	             <td class="columnTitle">地址：</td>
	            <td class="tableContent"><input type="text" name="address" value="${address }"/></td>
	        </tr>		
	      	
	        <tr>
	            <td class="columnTitle">验货员：</td>
	            <td class="tableContent"><input type="text" name="inspector" value="${inspector }"/></td>
	        </tr>	
	        <tr>
	        	<td class="columnTitle">修改人：</td>
	            <td class="tableContent">${_CURRENT_USER.userName }
	            <input type="hidden" name="updateBy" value="${_CURRENT_USER.id }"/></td>
			</tr>
	        <tr>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent"><textarea name="remark" style="height:150px;" value="${remark }"></textarea>
	        </tr>		
		</table>
	</div>
 
</form>
</body>
</html>

