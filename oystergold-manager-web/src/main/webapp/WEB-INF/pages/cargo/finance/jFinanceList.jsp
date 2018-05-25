<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script>
	(function($){  
	    $.fn.serializeJson=function(){  
	        var serializeObj={};  
	        var array=this.serializeArray();  
	        var str=this.serialize();  
	        $(array).each(function(){  
	            if(serializeObj[this.name]){  
	                if($.isArray(serializeObj[this.name])){  
	                    serializeObj[this.name].push(this.value);  
	                }else{  
	                    serializeObj[this.name]=[serializeObj[this.name],this.value];  
	                }  
	            }else{  
	                serializeObj[this.name]=this.value;   
	            }  
	        });  
	        return serializeObj;  
	    };  
	})(jQuery); 
	
	$(function() {
		$('#financeList').datagrid({
			url : "${ctx}/cargo/financeListAction",
			columns : [ [ {
				field : "checkbox_",
				title : '',
				checkbox : true,
				formatter : function(value, row, index) {
					return index;
				}
			}, {
				field : "financeId",
				title : "财务管理编号",
				width : 180
			}, {
				field : "createBy",
				title : "创建人",
				width : 100
			}, {
				field : "createDept",
				title : "创建部门",
				width : 100,
				formatter : function(value, row, index) {
					if(row.createDept){
						return row.createDept;
					}
				}
			}, {
				field : "inputBy",
				title : "制单人",
				width : 100
			}, {
				field : "inputDate",
				title : "制单日期",
				width : 100,
				formatter : function(value, row, index) {
					if(row.inputDate){
						return dateToString(row.inputDate);
					}
				}
			},{
				field : "state",
				title : "状态",
				width : 100,
				formatter : function(value, row, index) {
					if (value == 0){
		   				return "草稿";
		   			}else if (value ==1){
		   				return "已审核";
		   			}
				}
			}, {
				field : "createTime",
				title : "创建日期",
				width : 100,
				formatter : function(value, row, index) {
					if(row.createTime){
						return dateToString(row.createTime);
					}
				}
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
	    				var selRow = $("#financeList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.financeId;
	    				$("#financeForm").attr("action","${ctx}/cargo/financeAction_toShow?financeId="+id)
	    				$("#financeForm").submit();
	    			}
	    		},{
	    			iconCls: "icon-add",
	    			text:"添加",
	    			handler: function(){
	    				location.href="${ctx}/cargo/financeAction_toAdd";
	    			}
	    		},{
	    			iconCls: "icon-remove",
	    			text:"删除",
	    			handler: function(){

						var selRow = $("#financeList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要删除吗？', function(r){
	    					if (r){
	    						var url="${ctx}/cargo/financeAction_toDelete";
	    						var data ={"financeId":selRow.financeId};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","删除成功","info");
	    							 $("#financeList").datagrid("reload");
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
	    			iconCls: "icon-print",
	    			text:"打印财务报表",
	    			handler: function(){
	    				
						var selRow = $("#financeList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				datagridOpt("${ctx}/cargo/printFinance?financeId="+selRow.financeId,"financeList");
	    			}
	    		}]

		});
		$('#btnSearch').linkbutton({    
			onClick: function(){
				var jsonValue = $("#financeForm").serializeJson();
				$("#financeList").datagrid("load",jsonValue)
			}   
		}); 
	})
</script>
</head>

<body>
	<form id="financeForm" name="financeForm" method="post">

		<div class="textbox" id="centerTextbox">
			<div class="textbox-header">
				<div class="textbox-inner-header">
					<div class="textbox-title">财务列表</div>
				</div>
			</div>
			<table  class="tableRegion" width="70%" >
  <tr>
  
	<td>创建人:</td>
	<td><input  type="text" name="createBy" style="width:150px;height: 15px;border-radius: 5px;"/> </td>
	<td>创建部门:</td>
	<td><input  type="text" name="createDept" style="width:150px;height: 15px;border-radius: 5px;"/></td>
  	<td>创建日期:</td>
	<td><input type="text" name="beginDate" class="easyui-datebox" style="width:150px;"></input>  </td>
	<td>to</td>
	<td><input type="text" name="endDate" class="easyui-datebox" style="width:150px;"></input>  </td>
	<td>状态:</td>
	<td> <select id="state" class="easyui-combobox" name="state" style="width:150px;"  data-options="panelHeight:'auto'">  
			 <option value="">--请选择--</option>    
		    <option value="0">草稿</option>   
		    <option value="1">已上报</option>   
		    <option value="2">已委托</option>   
			</select>  
	</td>
	
	<td style="width:100px;">
		<a id="btnSearch" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>  
	</td>
</tr>
</table>
			<div>
				<div class="eXtremeTable">
					<table id="financeList" class="tableRegion" width="100%"></table>
				</div>
	</form>
</body>
</html>


