<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="${ctx }/js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#deptcombobox_comboboxID").combobox({
			onChange: function(newValue, oldValue){
				 $('#manager_comboboxID').combobox({    
				    url:"${ctx}/sysadmin/userAction_ajaxAllUserByDept?deptId="+newValue, 
				    editable:false,
				    valueField:"id",    
				    textField:"userName" ,
				    formatter: function(row){
						
						return row.userName+"--"+ row.userinfo.name+"--"+row.dept.deptName;
					}
				}); 
			}
		});
		
	})
		

	</script>
</head>

<body>
<form id="icform" name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="save"><a href="#" onclick="formSubmit('userAction_addUser','_self');this.blur();">保存</a></li>
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
   新增用户
  </div> 
  </div>
  </div>
  

 
    <div>
		<table class="commonTable" cellspacing="1">
       		<tr>
	            <td class="columnTitle">所在部门：</td>
	            <td class="tableContent">
	            <input id="deptcombobox_comboboxID" class="easyui-combobox" name="dept.deptId" style="width:300px" data-options="    
			        valueField: 'deptId',    
			        textField: 'deptName', 
			        editable:false,   
			        url: '${ctx}/sysadmin/deptAction_ajaxAllDept'" />   
	            	
	            </td>
	        </tr>
        	<tr>
	            <td class="columnTitle">登录名：</td>
	            <td class="tableContent"><input type="text" name="userName" value=""/></td>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="state" value="1" checked class="input"/>启用
	            	<input type="radio" name="state" value="0" class="input"/>停用
	            </td>
	        </tr>
        	<tr>
	            <td class="columnTitle">姓名：</td>
	            <td class="tableContent"><input type="text" name="userinfo.name" value=""/></td>
	            <td class="columnTitle">直属领导：</td>
	            <td class="tableContent">
	            	<input id="manager_comboboxID" name="userinfo.manager.id" style="width:200px" /> 
	            </td>
	           
	        </tr>		
	        <tr>
	            <td class="columnTitle">入职时间：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="userinfo.joinDate"
	            	 value=""
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
				<td class="columnTitle">薪水：</td>
	            <td class="tableContent"><input type="text" name="userinfo.salary" value="${ userinfo.salary}"/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">等级：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="userinfo.degree" value="0" class="input"/>超级管理员
	            	<input type="radio" name="userinfo.degree" value="1" class="input"/>跨部门跨人员
	            	<input type="radio" name="userinfo.degree" value="2" class="input"/>管理所有下属部门和人员
	            	<input type="radio" name="userinfo.degree" value="3" class="input"/>管理本部门
	            	<input type="radio" name="userinfo.degree" value="4" class="input"/>普通员工
	            </td>
				<td class="columnTitle">性别：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="userinfo.gender" value="1" class="input"/>男
	            	<input type="radio" name="userinfo.gender" value="0" class="input"/>女
	            </td>
	        </tr>	
        	<tr>
	            <td class="columnTitle">岗位：</td>
	            <td class="tableContent"><input type="text" name="userinfo.station" value=""/></td>
	            <td class="columnTitle">电话：</td>
	            <td class="tableContent"><input type="text" name="userinfo.telephone" value=""/></td>
	        </tr>	
        	<tr>
        	    <td class="columnTitle">邮箱：</td>
	            <td class="tableContent"><input type="text" name="userinfo.email" value=""/></td>
	            <td class="columnTitle">出生年月：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="userinfo.birthday"
	            	 value=""
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
	        </tr>	
        	<tr>
        	    <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="userinfo.orderNo" value=""/></td>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent">
	            	<textarea name="userinfo.remark" style="height:120px;"></textarea>
	            </td>
	        </tr>	
		</table>
	</div>
 
 
</form>
</body>
</html>

