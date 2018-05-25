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
<li id="save"><a href="#" onclick="formSubmit('deptAction_addDept','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
   新增部门
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">上级部门：</td>
	            <td class="tableContent">
	            	<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/sysadmin/deptAction_ajaxAllDept'" />  

	            	
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">部门名称：</td>
	            <td class="tableContent"><input type="text" name="deptName" value="" style="width:300px"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">部门状态：</td>
	            <td class="tableContent"><select id="deptStateID" class="easyui-combobox" name="state" style="width:200px;" data-options="height:auto">   
    										<option value="1">正常</option>   
   											<option value="0">暂停</option> </td>
	        </tr>		
		</table>
	</div>
 </form>
</body>
</html>
