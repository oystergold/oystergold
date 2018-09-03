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
   新增会员
  </div> 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	        	<td class="columnTitle">真实姓名：</td>
	        	<td class="tableContent"><input type="text" name="vname" value="" style="width:300px"/></td>
	        	<td class="columnTitle">推荐人姓名：</td>
	        	<td class="tableContent"><input type="text" name="parentName" value="" style="width:300px"/></td>
	        	<td class="columnTitle">用户名：</td>
	        	<td class="tableContent"><input type="text" name="vusername" value="" style="width:300px"/></td>
	        	<td class="columnTitle">电话号码：</td>
	        	<td class="tableContent"><input type="text" name="vtelephone" value="" style="width:300px"/></td>
	        	<td class="columnTitle">密  码：</td>
	        	<td class="tableContent"><input type="text" name="vpassword" value="" style="width:300px"/></td>
	        	<td class="columnTitle">状态码：</td>
	        	<td class="tableContent"><input type="text" name="vstatus" value="" style="width:300px"/></td>
	        	<td class="columnTitle">用户地址：</td>
	        	<td class="tableContent"><input type="text" name="vstatus" value="" style="width:300px"/></td>
	        	
	        	<td class="columnTitle">省份</td>
	        	<td class="tableContent">	            	
	        		<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/vipuser/deptAction_ajaxAllDept'" />
    			</td>
	        	<td class="columnTitle">所在城市</td>
	        	<td class="tableContent">
	        		<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/sysadmin/deptAction_ajaxAllDept'" />
	        	</td>
	        	<td class="columnTitle">所在地区</td>
	        	<td class="tableContent">
	        		<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/sysadmin/deptAction_ajaxAllDept'" />
	        	</td>
	        	
	        	<td class="columnTitle">银行卡信息：</td>
	        	<td class="tableContent"><input type="text" name="vstatus" value="" style="width:300px"/></td>
	        	
	        	<td class="columnTitle">省份</td>
	        	<td class="tableContent">	            	
	        		<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/vipuser/deptAction_ajaxAllDept'" />
    			</td>
	        	<td class="columnTitle">所在城市</td>
	        	<td class="tableContent">
	        		<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/sysadmin/deptAction_ajaxAllDept'" />
	        	</td>
	        	<td class="columnTitle">所在地区</td>
	        	<td class="tableContent">
	        		<input id="deptcombobox_comboboxID" class="easyui-combobox" name="deptP.deptId"   
    				style="width:300px"
    				data-options="editable:false,valueField:'deptId',textField:'deptName',
    				url:'${ctx}/sysadmin/deptAction_ajaxAllDept'" />
	        	</td>
	        	
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
