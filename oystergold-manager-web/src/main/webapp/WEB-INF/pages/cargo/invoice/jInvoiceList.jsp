<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
  		{field:'id',title:'发票号',width:200},    
  		{field:'scNo',title:'合同编号',width:200},    
  		{field:'blNo',title:'提单号',width:100},    
  		{field:'tradeTerms',title:'贸易条款',width:100},    
  		{field:'createBy',title:' 创建人',width:100},    
  		{field:'createDept',title:'创建部门',width:100},    
  		{field:'createTime',title:'创建日期',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
  		{field:'state',title:'状态',width:100,formatter:function(value,row,index){
   			if (value == 0){
   				return "草稿";
   			}else if (value ==1){
   				return "已提交";
   			}else if (value ==2){
   				return "财务已核算";
   			}
   		}}
  	]];

// 工具栏
var v_toolbar = [{
		text : "查看",
		iconCls: 'icon-search',
		handler: function(){
			var selRow = $("#dataList").datagrid("getSelected");
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return;
			}
			var id =  selRow.id;
			$("#icform").attr("action","${ctx}/cargo/invoiceAction_toView?id="+id)
			$("#icform").submit();
		}
	},{
		text : "修改",
		iconCls: 'icon-edit',
		handler: function(){
			
			var selRow = $("#dataList").datagrid("getSelected");
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return;
			}
			var id =  selRow.id;
			$("#icform").attr("action","${ctx}/cargo/invoiceAction_toUpdate?id="+id)
			$("#icform").submit();
			
		}
	},{
		text : "新增",
		iconCls: 'icon-add',
		handler: function(){
			location.href="${ctx}/cargo/invoiceAction_tocreate";
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
					var url="${ctx}/cargo/invoiceAction_toDelete";
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
		text : "提交",
		iconCls: 'icon-edit',
		handler: function(){
			
			var selRow = $("#dataList").datagrid("getSelected");
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return;
			}
			var id =  selRow.id;
			$("#icform").attr("action","${ctx}/cargo/invoiceAction_commit?id="+id)
			$("#icform").submit();
			
			
		}
	},{
		text : "取消",
		iconCls: 'icon-edit',
		handler: function(){
			datagridOpt("${ctx}/cargo/invoiceAction_cancel","dataList");
			
			
		}
	},{
		iconCls: "icon-print",
		text:"打印",
		handler: function(){
			var selRow = $("#dataList").datagrid("getSelected");
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return;
			}
			var id =  selRow.id;
			$("#icform").attr("action","/cargo/invoiceAction_print?id="+id)
			$("#icform").submit();
		}
	}
];

$(function(){
	$("#dataList").datagrid({
		url : "${ctx}/cargo/invoiceAction_listResult", // 后台action地址
		columns : v_columns,
		toolbar:v_toolbar,
		border : false,
		singleSelect : true,
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
	
		<div class="textbox-title">
			<img src="${ctx }/skin/default/images/icon/currency_yen.png" /> 发票列表
		</div>
		<table class="tableRegion" width="70%">
			<tr>
				<td>起始日期</td>
				<td><input id="beginDate" type="text" name="beginDate"
					class="easyui-datebox" style="width: 150px"></input></td>
				<td>结束日期</td>
				<td><input id="endDate" type="text" name="endDate"
					class="easyui-datebox" style="width: 150px"></input></td>
				<td>状态</td>
				<td><select id="state" class="easyui-combobox" name="state"
					style="width: 150px;" data-options="panelHeight:'auto'">
						<option value="">--请选择--</option>
						<option value="0">草稿</option>
						<option value="1">已提交</option>
				</select></td>

				<td style="width: 100px;"><a id="btnSearch" href="#"
					class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
				</td>
			</tr>
		</table>
		<div>


			<div class="eXtremeTable">

				<table id="dataList" class="tableRegion" width="98%">

				</table>
			</div>

		</div>


	</form>
</body>
</html>

