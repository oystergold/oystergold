<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript">
		//模块名 层数 权限标识 链接 类型 从属 状态
		var v_columns = [[
   	    {field : "ck_",title:"",checkbox:true},
   	    {field : "name",title:"模块名",width : "200"},
   		{field : "layerNum",title : "层数",width : "100"},
   		{field : "cpermission",title : "权限标识",width : "200"},
   		{field : "curl",title : "链接",width : "200"},
   		{field : "ctype",title : "类型 ",width : "100"},
   		{field : "belong",title : "从属 ",width : "100"},
   		{field : "state",title : "状态",width : "100"},
   	]];

		
		$(function() {
			$('#moduleList').datagrid({
				url : "${ctx}/sysadmin/moduleAction_listResult",
				columns : v_columns,

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
		    				var selRow = $("#moduleList").datagrid("getSelected");
		    				
		    				if(selRow == null){
		    					$.messager.alert("提示","请选择行","warning");    
								return
		    				}
		    				var id =  selRow.id;
		    				$("#icform").attr("action","${ctx}/sysadmin/moduleAction_toView?id="+id)
		    				$("#icform").submit();
		    			}
		    		},
		    		{
		    			iconCls: "icon-add",
		    			text:"添加",
		    			handler: function(){
							
		    				$("#icform").attr("action","${ctx}/sysadmin/moduleAction_toCreate")
		    				$("#icform").submit();
		    			}
		    		},{
		    			iconCls: "icon-edit",
		    			text:"修改",
		    			handler: function(){
		    				
							var selRow = $("#moduleList").datagrid("getSelected");
		    				
		    				if(selRow == null){
		    					$.messager.alert("提示","请选择行","warning");    
								return
		    				}
		    				var id =  selRow.id;
		    				$("#icform").attr("action","${ctx}/sysadmin/moduleAction_toUpdate?id="+id)
		    				$("#icform").submit();
		    			}
		    		},{
		    			iconCls: "icon-remove",
		    			text:"删除",
		    			handler: function(){

							var selRow = $("#moduleList").datagrid("getSelected");
		    				
		    				if(selRow == null){
		    					$.messager.alert("提示","请选择行","warning");    
								return
		    				}
		    				$.messager.confirm('提示', '您真的要删除吗？', function(r){
		    					if (r){
		    						var url="${ctx}/sysadmin/moduleAction_toDelete";
		    						var data ={"id":selRow.id};
		    	    				var callback=function(backDate){
		    	    					
		    	    				 if(backDate="true"){
		    	    						$.messager.alert("提示","删除成功","info");
		    							 $("#moduleList").datagrid("reload");
		    	    					}else{
		    	    						$.messager.alert("提示","删除失败","error");
		    	    					} 
		    	    				};
		    	    				var type="text";
		    	    				$.post(url,data,callback,type)
		    					}
		    				});


		    			}
		    		}]

			});
		})
	</script>
</head>

<body>
<form name="icform" method="post" id="icform">
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    模块列表
  </div> 
  </div>
  </div>
<div>


<div class="eXtremeTable" >
<table id="moduleList" class="tableRegion" width="98%" >
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

