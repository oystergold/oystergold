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
				    url:"${ctx}/sysadmin/userAction_ajaxAllUserByDept?deptId="+newValue+"&userName=${userName }",    
				    valueField:"id",    
				    textField:"userName" ,
				    editable:false,
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
	<input type="hidden" name="id" value="${id}"/>
	<input type="hidden" name="userinfo.id" value="${userinfo.id}"/>
	<input type="hidden" style="width:90px;" name="createTime"
	            	 value="${createTime }"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
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
   修改用户
  </div> 
  </div>
  </div>
  

 
    <div>
		<table class="commonTable" cellspacing="1">
       		<tr>
	            <td class="columnTitle">所在部门：</td>
	            <td class="tableContent">
	            	<input id="deptcombobox_comboboxID" class="easyui-combobox" name="dept.deptId"   
    				style="width:300px"
    				data-options="valueField:'deptId',textField:'deptName',editable:false,
    				url:'${ctx}/sysadmin/deptAction_ajaxAllDept'" 
    				value = "${dept.deptId }"
    				/>  

	            	
	            </td>
	        </tr>
        	<tr>
	            <td class="columnTitle">登录名：</td>
	            <td class="tableContent"><input type="text" name="userName" value="${userName }"/></td>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="state" value="1" ${state==1?'checked':'' } class="input"/>启用
	            	<input type="radio" name="state" value="0" ${state==0?'checked':'' } class="input"/>停用
	            </td>
	        </tr>
        	<tr>
	            <td class="columnTitle">姓名：</td>
	            <td class="tableContent"><input type="text" name="userinfo.name" value="${userinfo.name }"/></td>
	            <td class="columnTitle">直属领导：</td>
	            <td class="tableContent">
	            	<input id="manager_comboboxID" class="easyui-combobox" name="userinfo.manager.id" value = "${userinfo.manager.id }"  style="width:200px"
    				data-options="url:'${ctx}/sysadmin/userAction_ajaxAllUserByDept?deptId=${dept.deptId }&userName=${userName }',    
				    valueField:'id',    
				    textField:'userName' ,
				    editable:false,
				    formatter: function(row){
						
						return row.userName+'--'+ row.userinfo.name+'--'+row.dept.deptName;
					}"
    				
    				/>  
	            </td>
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">入职时间：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="userinfo.joinDate"
	            	 value="${userinfo.joinDate }"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
				<td class="columnTitle">薪水：</td>
	            <td class="tableContent"><input type="text" name="userinfo.salary" value="${userinfo.salary }"/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">等级：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="userinfo.degree" value="0"  ${userinfo.degree==0?"checked='chencked'":"" } class="input"/>超级管理员
	            	<input type="radio" name="userinfo.degree" value="1" ${userinfo.degree==1?"checked='chencked'":"" } class="input"/>跨部门跨人员
	            	<input type="radio" name="userinfo.degree" value="2"  ${userinfo.degree==2?"checked='chencked'":"" } class="input"/>管理所有下属部门和人员
	            	<input type="radio" name="userinfo.degree" value="3" ${userinfo.degree==3?"checked='chencked'":"" } class="input"/>管理本部门
	            	<input type="radio" name="userinfo.degree" value="4" ${userinfo.degree==4?"checked='chencked'":"" }  class="input"/>普通员工
	            </td>
				<td class="columnTitle">性别：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="userinfo.gender" value="1" ${userinfo.gender==1?"checked='chencked'":"" } class="input"/>男
	            	<input type="radio" name="userinfo.gender" value="0"  ${userinfo.gender==0?"checked='chencked'":"" }class="input"/>女
	            </td>
	        </tr>	
        	<tr>
	            <td class="columnTitle">岗位：</td>
	            <td class="tableContent"><input type="text" name="userinfo.station" value="${ userinfo.station}"/></td>
	            <td class="columnTitle">电话：</td>
	            <td class="tableContent"><input type="text" name="userinfo.telephone" value="${userinfo.telephone }"/></td>
	        </tr>	
        	<tr>
        	    <td class="columnTitle">邮箱：</td>
	            <td class="tableContent"><input type="text" name="userinfo.email" value="${userinfo.email }"/></td>
	            <td class="columnTitle">出生年月：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="userinfo.birthday"
	            	 value="${userinfo.birthday }"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
				</td>
	        </tr>	
        	<tr>
        	    <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="userinfo.orderNo" value="${userinfo.orderNo}"/></td>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent">
	            	<textarea name="userinfo.remark" style="height:120px;">${userinfo.remark }</textarea>
	            </td>
	        </tr>	
		</table>
	</div>
 
 
</form>
</body>
</html>

