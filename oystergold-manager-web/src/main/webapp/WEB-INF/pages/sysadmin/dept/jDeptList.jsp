<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>

</title>
<script>
	$(function(){
		$('#deptList').datagrid({    
		    url:"${ctx}/sysadmin/deptAction_listResult",    
		    columns:[[  
				{field:"checkbox_",title:'',checkbox:true},     
		        {field:"deptId",title:"编号",width:100},    
		        {field:"deptName",title:"名称",width:100},
		        {
		        	field:"deptP_name",
		        	title:"所属部门",
		        	width:100,
		        	formatter: function(value,row,index){
		        		
		        		if (row.deptP){ // 父部门不为空
		        			return row.deptP.deptName;
		        			}
	   				}
	     	  },
	     	 
		        {
		        	field:"state",
		        	title:"状态",
		        	width:100,
		        	formatter: function(value,row,index){
		        		
		        		if (value !=null){
		        			return value ==0?"暂停":"正常";
		        			}
	   				}
	     	  }      
		    ]] ,
		   
    	    border:false,
    	    singleSelect:true,
    	    fitColumns:true,
    	    pagination:true,
    	    pageNumber:1,
    	    pageSize:10 ,
    	    pageList :[10,15,20],
    	    toolbar: [{
    			iconCls: "icon-search",
    			text:"查看",
    			handler: function(){
    				var selRow = $("#deptList").datagrid("getSelected");
    				
    				if(selRow == null){
    					$.messager.alert("提示","请选择行","warning");    
						return
    				}
    				$("#deptId").val(selRow.deptId);
    				$("#deptForm").attr("action","${ctx}/sysadmin/deptAction_toView")
    				$("#deptForm").submit();
    			}
    		},
    		{
    			iconCls: "icon-add",
    			text:"添加",
    			handler: function(){
					
    				$("#deptForm").attr("action","${ctx}/sysadmin/deptAction_toCreate")
    				$("#deptForm").submit();
    			}
    		},{
    			iconCls: "icon-edit",
    			text:"修改",
    			handler: function(){
    				
					var selRow = $("#deptList").datagrid("getSelected");
    				
    				if(selRow == null){
    					$.messager.alert("提示","请选择行","warning");    
						return
    				}
    				$("#deptId").val(selRow.deptId);
    				$("#deptForm").attr("action","${ctx}/sysadmin/deptAction_toUpdate")
    				$("#deptForm").submit();
    			}
    		},{
    			iconCls: "icon-remove",
    			text:"删除",
    			handler: function(){

					var selRow = $("#deptList").datagrid("getSelected");
    				
    				if(selRow == null){
    					$.messager.alert("提示","请选择行","warning");    
						return
    				}
    				$.messager.confirm('提示', '您真的要删除吗？', function(r){
    					if (r){
    						var url="${ctx}/sysadmin/deptAction_toDelete";
    						var data ={"deptId":selRow.deptId};
    	    				var callback=function(backDate){
    	    					
    	    				 if(backDate="true"){
    	    						$.messager.alert("提示","删除成功","info");
    							 $("#deptList").datagrid("reload");
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
	<form id="deptForm" name="deptForm" method="post">
		<input type ="hidden" name="deptId" id="deptId"/>
		
		<div class="textbox" id="centerTextbox">
			<div class="textbox-header">
				<div class="textbox-inner-header">
					<div class="textbox-title">部门列表</div>
				</div>
			</div>
		<div>
		<div class="eXtremeTable">
			<table id="deptList"></table>

			
		</div>
	</form>
	
	


	
	
</body>
</html>


