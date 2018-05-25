<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript">	
	//自定义插件
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
	
	
	var v_columns = [[
   		{field:'checkbox_',title:'',checkbox:true},    
   		{field:'id',title:'编号',width:300},    
   		{field:'contractNo',title:'合同号',width:100},
   		{field:'customName',title:'客户名称',width:100},    
   		{field:'abc',title:'货物数/附件数 ',width:150,
   			formatter : function(value, row, index) {
				return row.conProNum+"/"+row.extCProNum;
			}
   		},
   		{field:'inputBy',title:'制单人',width:100},
   		{field:'checkBy',title:'审单人',width:100},
   		{field:'inspector',title:'验货员',width:100},
   		{field:'signingDate',title:'签单日期',width:100,
   			formatter : function(value, row, index) {
				return dateToString(value);
			}
   		},
   		{field:'deliveryPeriod',title:'交货期限 ',width:100,
   			formatter : function(value, row, index) {
				return dateToString(value);
			}},
   		{field:'shipTime',title:'船期',width:100,
	   			formatter : function(value, row, index) {
					return dateToString(value);
				}},
   		{field:'tradeTerms',title:'贸易条款',width:100},
   		{field:'totalAmount',title:'总金额 ',width:100},
   		{field:'state',title:'状态',width:100,
   			formatter : function(value, row, index) {
   					if(value == 1){
   						return "已上报";
   					}else if (value==2){
   						return "已报运";
   					}else if(value==0){
   						return "草稿";
   					}
   				}
   			}
   	]];
	
	$(function(){
		$('#dataList').datagrid({
			url : "${ctx}/cargo/contractAction_listResult",
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
	    				var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    			
	    				$("#icform").attr("action","${ctx}/cargo/contractAction_toView?id="+id);
	    				$("#icform").submit();
	    			}
	    		},
	    		{
	    			iconCls: "icon-add",
	    			text:"添加",
	    			handler: function(){
						
	    				$("#icform").attr("action","${ctx}/cargo/contractAction_toCreate")
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
	    				$("#icform").attr("action","${ctx}/cargo/contractAction_toUpdate?id="+id)
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
	    						var url="${ctx}/cargo/contractAction_toDelete";
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
	    			iconCls: "icon-lock",
	    			text:"提交",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要提交吗？', function(r){
	    					if (r){
	    						var url="${ctx}/cargo/contractAction_toSubmitContract";
	    						var data ={"id":selRow.id};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","提交成功","info");
	    							 $("#dataList").datagrid("reload");
	    	    					}else{
	    	    						$.messager.alert("提示","提交失败","error");
	    	    					} 
	    	    				};
	    	    				var type="text";
	    	    				$.post(url,data,callback,type)
	    					}
	    				});
	    			}
	    		},{
	    			iconCls: "icon-cancel",
	    			text:"取消",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				if(selRow.checkBy != null){
	    					$.messager.alert("提示","已经审核的合同不可取消","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要取消吗？', function(r){
	    					if (r){
	    						var url="${ctx}/cargo/contractAction_toCancelContract";
	    						var data ={"id":selRow.id};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","取消成功","info");
	    							 $("#dataList").datagrid("reload");
	    	    					}else{
	    	    						$.messager.alert("提示","取消失败","error");
	    	    					} 
	    	    				};
	    	    				var type="text";
	    	    				$.post(url,data,callback,type)
	    					}
	    				});
	    			}
	    		},{
	    			iconCls: "icon-edit",
	    			text:"合同货物",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#icform").attr("action","${ctx}/cargo/contractAction_toaddProduct?id="+id)
	    				$("#icform").submit();
	    			}
	    		},{
	    			iconCls: "icon-print",
	    			text:"打印",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#icform").attr("action","${ctx}/cargo/outProductAction_printContract?id="+id)
	    				$("#icform").submit();
	    			}
	    		}]
	
			});
		
		
//条件查询
		$('#btnSearch').linkbutton({    
			onClick: function(){
				
				var jsonValue = $("#icform").serializeJson();
				$("#dataList").datagrid("load",jsonValue)
			}   
		}); 
	})
	</script>
</head>

<body>
<form name="icform"  id="icform" method="post">
   
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
  <img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    购销合同列表
  </div> 
  </div>
  </div>
  <table  class="tableRegion" width="90%" >
  <tr>
  <td>交期起始日期</td>
	<td><input id="beginDate" type="text" name="beginDate" class="easyui-datebox" style="width:150px"></input>  </td>
	<td>交期结束日期</td>
	<td><input id="endDate" type="text"name="endDate" class="easyui-datebox" style="width:150px"></input> </td>
	<td>制单人</td>
	<td><input id="inputBy" type="text"name="inputBy" class="easyui-textbox" style="width:150px"></input> </td>
	<td>客户名称</td>
	<td><input id="customName" type="text"name="customName" class="easyui-textbox" style="width:150px"></input> </td>
	<td>状态</td>
	<td> <select id="state" class="easyui-combobox" name="state" style="width:150px;"  data-options="panelHeight:'auto'">  
			 <option value="">--请选择--</option>    
		    <option value="0">草稿</option>   
		    <option value="1">已上报</option>   
		</select>  

	</td>

	<td style="width:100px;">
		<a id="btnSearch" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>  
	</td>
</tr>
</table>
<div>

<div class="eXtremeTable" >
	
 	<table id="dataList"></table>
</div>
</form>
</body>
</html>

