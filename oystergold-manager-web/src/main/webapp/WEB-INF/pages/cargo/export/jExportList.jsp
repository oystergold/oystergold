<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	
	<script type="text/javascript">
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
  		{field:'id',title:'报运号',width:300},    
  		{field:'xxx',title:'货物数/附件数',width:100,
   			formatter : function(value, row, index) {
				return row.expProNum+"/"+row.extEProNum;
			}},
  		{field:'lcno',title:'信用证号',width:100},    
  		{field:'consignee',title:'收货人及地址',width:100},    
  		{field:'shipmentPort',title:'装运港',width:100},    
  		{field:'destinationPort',title:' 目的港',width:100},    
  		{field:'transportMode',title:'运输方式',width:100},    
  		{field:'priceCondition',title:'价格条件',width:100},    
  		{field:'inputDate',title:'制单日期',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
  		{field:'state',title:'状态',width:100,formatter:function(value,row,index){
   			if (value == 0){
   				return "草稿";
   			}else if (value ==1){
   				return "待报运";
   			}else if (value ==2){
   				return "已报运";
   			}else if (value ==3){
   				return "已装箱";
   			}else if (value ==4){
   				return "发票";
   			}else if (value ==5){
   				return "财务";
   			}
   		}}
  	]];

// 工具栏
var v_toolbar = [{
		text : "查看",
		iconCls: 'icon-search',
		handler: function(){
			datagridOpt("${ctx}/cargo/exportAction_toExportView","dataList");
		}
	},{
		text : "修改",
		iconCls: 'icon-edit',
		handler: function(){
			datagridOpt("${ctx}/cargo/exportAction_toUpdate","dataList");
		}
	},{
		text : "删除",
		iconCls: 'icon-remove',
		handler: function(){
			var selRow = $("#dataList").datagrid("getSelected");
			
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return
			}
			$.messager.confirm('提示', '您真的要删除吗？', function(r){
				if (r){
					var url="${ctx}/cargo/exportAction_toDelete";
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
		text : "电子报运",
		iconCls: 'icon-edit',
		handler: function(){
			var selRow = $("#dataList").datagrid("getSelected");
			
					if(selRow == null){
						$.messager.alert("提示","请选择行","warning");    
						return
					}
					if(selRow.state == 0){
						$.messager.alert("提示","请先设置报运规格","warning");    
						return
					}
					
					if(selRow.state >= 2){
						$.messager.alert("提示","已报运的合同不能再次报运","warning");    
						return
					}
					$.messager.confirm('提示', '您真的要报运吗？', function(r){
						if (r){
							var url="${ctx}/cargo/exportAction_exportE";
							var data ={"id":selRow.id};
		    				var callback=function(backDate){
		    					
		    				 if(backDate="true"){
		    						$.messager.alert("提示","报运成功","info");
								 $("#dataList").datagrid("reload");
		    					}else{
		    						$.messager.alert("提示","报运失败","error");
		    					} 
		    				};
		    				var type="text";
		    				$.post(url,data,callback,type)
						}
					});
		}
	},{
		text : "添加装箱",
		iconCls: 'icon-add',
		handler: function(){
			var selRow = $("#dataList").datagrid("getSelections");	
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return
			}else{
				var exportIds="";
				for(var i=0;i<selRow.length;i++){
					//判断是否已报运
					if(selRow[i].state==2){
						exportIds+=selRow[i].id+",";
					}
				}
				exportIds=exportIds.substring(0,exportIds.length-1);
				alert(exportIds);
				datagridOpt("${ctx}/cargo/addPackingList?exportIds="+exportIds,"dataList");
			}
		}
	}
];

$(function(){
	$("#dataList").datagrid({
		url : "${ctx}/cargo/exportAction_listResult", // 后台action地址
		columns : v_columns,
		toolbar:v_toolbar,
		border : false,
		singleSelect : false,
		fitColumns : true,
		pagination : true,
		pageNumber : 1,
		pageSize : 10,
		pageList : [ 10, 15, 20 ]
	});
	
	
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
<form name="icform" id="icform" method="post">
	<input type="hidden" name="id" id="id">
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    出口报运列表
  </div> 
  <table  class="tableRegion" width="70%" >
  <tr>
  <td>起始日期</td>
	<td><input id="beginDate" type="text" name="beginDate" class="easyui-datebox" style="width:150px"></input>  </td>
	<td>结束日期</td>
	<td><input id="endDate" type="text"name="endDate" class="easyui-datebox" style="width:150px"></input> </td>
	<td>状态</td>
	<td> <select id="state" class="easyui-combobox" name="state" style="width:150px;"  data-options="panelHeight:'auto'">  
			 <option value="">--请选择--</option>    
		    <option value="0">草稿</option>   
		    <option value="1">已上报</option>   
		    <option value="2">已装箱</option>   
		    <option value="3">委托</option>   
		    <option value="4">发票</option>   
		    <option value="5">财务</option>  
		</select>  

	</td>

	<td style="width:100px;">
		<a id="btnSearch" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>  
	</td>
</tr>
</table>
<div>


<div class="eXtremeTable" >
  
<table id="dataList" class="tableRegion" width="98%" >
	
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

