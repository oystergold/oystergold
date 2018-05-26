<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript">
	$(function() {
		$('#dataList').datagrid({
			url : "${ctx}/sysadmin/roleAction_listResult",
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
				width : 150
			}, {
				field : "name",
				title : "角色名称",
				width : 100
			}, {
				field : "createTime",
				title : "创建时间",
				width : 100,
				formatter : function(value, row, index) {

					if (row.createTime) {
						var date =new Date(row.createTime);
						var y = date.getFullYear();
						var M = date.getMonth()+1;
						var d = date.getDate();
						return y+"-"+M+"-"+d;
					}
				}
			}, {
				field : "remark",
				title : "角色说明",
				width : 100
			}] ],

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
	    				var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    			
	    				$("#icform").attr("action","${ctx}/sysadmin/roleAction_toView?id="+id);
	    				$("#icform").submit();
	    			}
	    		},
	    		{
	    			iconCls: "icon-add",
	    			text:"添加",
	    			handler: function(){
						
	    				$("#icform").attr("action","${ctx}/sysadmin/roleAction_toCreate")
	    				$("#icform").submit();
	    			}
	    		},{
	    			iconCls: "icon-edit",
	    			text:"修改",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#icform").attr("action","${ctx}/sysadmin/roleAction_toUpdate?id="+id)
	    				$("#icform").submit();
	    			}
	    		},{
	    			iconCls: "icon-remove",
	    			text:"删除",
	    			handler: function(){

						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要删除吗？', function(r){
	    					if (r){
	    						var url="${ctx}/sysadmin/roleAction_toDelete";
	    						var data ={"id":selRow.id};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","删除成功","info");
	    							 $("#dataList").datagrid("reload");
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
	    			text:"角色权限",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#icform").attr("action","${ctx}/sysadmin/roleAction_toRoleModule?id="+id)
	    				$("#icform").submit();
	    			}
	    		}]

		});
	})
	</script>
</head>

<body>
<form name="icform" id="icform" method="post">

   
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    角色列表
  </div> 
  </div>
  </div>
  
<div>


<div class="eXtremeTable" >
<table id="dataList" class="tableRegion" width="98%" >
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

