<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script>
	$(function() {
		$('#userList').datagrid({
			url : "${ctx}/sysadmin/userAction_listResult",
			columns : [ [ {
				field : "checkbox_",
				title : '',
				checkbox : true,
				formatter : function(value, row, index) {

					return index;
				}
			}, {
				field : "id",
				title : "编号",
				width : 180
				
			}, {
				field : "userName",
				title : "名称",
				width : 100
				
			},  {
				field : "name",
				title : "真实姓名",
				width : 100,
				formatter : function(value, row, index) {

					if (row.userinfo) {
						return row.userinfo.name;
					}
				}
			},{
				field : "station",
				title : "职位",
				width : 100,
				formatter : function(value, row, index) {

					if (row.userinfo) {
						return row.userinfo.station;
					}
				}
			},{
				field : "telephone",
				title : "电话号码",
				width : 100,
				formatter : function(value, row, index) {

					if (row.userinfo) {
						return row.userinfo.telephone;
					}
				}
			}, {
				field : "joinDate",
				title : "入职日期",
				width : 100,
				formatter : function(value, row, index) {
					return dateToString(row.userinfo.joinDate);
				}
			}, {
				field : "state",
				title : "状态",
				width : 100,
				formatter : function(value, row, index) {

					if (value != null) {
						return value == 0 ? "停用" : "启用";
					}
				}
			} ] ],

			border : false,
			singleSelect : true,
			fitColumns : true,
			pagination : true,
			pageNumber : 1,
			pageSize : 10,
			pageList : [ 10, 15, 20 ],
			 toolbar: [{
	    			iconCls: "icon-search",
	    			text:"查看",
	    			handler: function(){
	    				var selRow = $("#userList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#userForm").attr("action","${ctx}/sysadmin/userAction_toView?id="+id)
	    				$("#userForm").submit();
	    			}
	    		},
	    		{
	    			iconCls: "icon-add",
	    			text:"添加",
	    			handler: function(){
						
	    				$("#userForm").attr("action","${ctx}/sysadmin/userAction_toCreate")
	    				$("#userForm").submit();
	    			}
	    		},{
	    			iconCls: "icon-edit",
	    			text:"修改",
	    			handler: function(){
	    				
						var selRow = $("#userList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#userForm").attr("action","${ctx}/sysadmin/userAction_toUpdate?id="+id)
	    				$("#userForm").submit();
	    			}
	    		},{
	    			iconCls: "icon-remove",
	    			text:"删除",
	    			handler: function(){

						var selRow = $("#userList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要删除吗？', function(r){
	    					if (r){
	    						var url="${ctx}/sysadmin/userAction_toDelete";
	    						var data ={"id":selRow.id};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","删除成功","info");
	    							 $("#userList").datagrid("reload");
	    	    					}else{
	    	    						$.messager.alert("提示","删除失败","error");
	    	    					} 
	    	    				};
	    	    				var type="text";
	    	    				$.post(url,data,callback,type)
	    					}
	    				});


	    			}
	    		},{
	    			iconCls: "icon-ok",
	    			text:"用户角色",
	    			handler: function(){
	    				
						var selRow = $("#userList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#userForm").attr("action","${ctx}/sysadmin/userAction_toUserRole?id="+id)
	    				$("#userForm").submit();
	    			}
	    		}]

		});
	})
</script>
</head>

<body>
	<form id="userForm" name="userForm" method="post">

		<div class="textbox" id="centerTextbox">
			<div class="textbox-header">
				<div class="textbox-inner-header">
					<div class="textbox-title">员工列表</div>
				</div>
			</div>
			<div>
				<div class="eXtremeTable">
					<table id="userList" class="tableRegion" width="100%"></table>
				</div>
	</form>
</body>
</html>


