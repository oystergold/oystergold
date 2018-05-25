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
	<input type="hidden" name="packingListId" value="${packingListId}"/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="save"><a href="#" onclick="formSubmit('updatePackingListAction','_self');this.blur();">保存</a></li>
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
   修改装箱信息
  </div> 
  </div>
  </div>
  
 
    <div>
		<table class="commonTable" cellspacing="1">
		 	<tr>
	            <td class="columnTitle">买家：</td>
	            <td class="tableContent">
	            	<input type="text" name="buyer" value="${buyer}" />
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">卖家：</td>
	            <td class="tableContent">
	            	<input type="text" name="seller" value="${seller}" />
	            </td>
	        </tr>
	        <tr>
	        	<td class="columnTitle">状态：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="state" value="0" ${state==0?"checked='checked'":'' } class="input"/>草稿
	            	<input type="radio" name="state" value="1" ${state==1?"checked='checked'":'' } class="input"/>已上报
	            	<input type="radio" name="state" value="2" ${state==2?"checked='checked'":'' } class="input"/>已委托
	            </td>
	        </tr>
	        <tr></tr>
	        <tr>
	        	<td class="columnTitle">创建时间：</td>
	            <td>
	            	<input type="text" name="createTime"
	            	 value="${createTime}"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
	            </td>
	        </tr>	
	        <tr>
	            <td class="columnTitle">唛头：</td>
	            <td class="tableContent">
					<input type="text" name="marks" value="${marks}" />
				</td>
	        </tr>		
	        <tr>
	        	 <td class="columnTitle">描述：</td>
	        	<td class="tableContent">
	        		<textarea name="descriptions" style="height:150px;">${descriptions }</textarea>
				</td>
	        </tr>
		</table>
	</div>
 
 
</form>
</body>
</html>

