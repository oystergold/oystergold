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
  		{field:'shippingOrderId',title:'委托单号',width:300},    
  		{field:'shipper',title:'货主',width:100},
  		{field:'orderType',title:'海运/空运',width:100},    
  		{field:'notifyParty',title:'正本通知人',width:100},    
  		{field:'portOfLoading',title:'装运港',width:100},    
  		{field:'portOfTrans',title:'转船港',width:100},    
  		{field:'portOfDischarge',title:'卸货港',width:100},    
  		{field:'createBy',title:'创建人',width:100},
  		{field:'checkBy',title:'复核人',width:100},    
  		{field:'createTime',title:'创建日期',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
  		{field:'state',title:'状态',width:100,formatter:function(value,row,index){
   			if (value == 0){
   				return "草稿";
   			}else if (value ==1){
   				return "已上报";
   			}else if (value ==2){
   				return "已开发票";
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
				return
			}
			  var id = selRow.shippingOrderId
			$("#icform").attr("action","${ctx}/cargo/shippingOrderAction_toView?shippingOrderId="+id)
			$("#icform").submit();
		}
	},{
		text : "添加",
		iconCls: 'icon-add',
		handler: function(){
			$("#icform").attr("action","${ctx}/cargo/shippingOrderAction_tocreate")
			$("#icform").submit();
			
		}
	},{
		text : "修改",
		iconCls: 'icon-edit',
		handler: function(){
		var selRow = $("#dataList").datagrid("getSelected");
			
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return
			}
			if(selRow.state == 1||selRow.state == 0){
				  var id = selRow.shippingOrderId
					$("#icform").attr("action","${ctx}/cargo/shippingOrderAction_toUpdate?shippingOrderId="+id)
					$("#icform").submit();
			}else{
				$.messager.alert("提示","只能选择草稿或者已上报状态的委托单","warning");    
				return
			}
			
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
			
			if(selRow.state == 1||selRow.state == 0){
				$.messager.confirm('提示', '您真的要删除吗？', function(r){
					if (r){
						var url="${ctx}/cargo/shippingOrderAction_toDelete";
						var data ={"shippingOrderId":selRow.shippingOrderId};
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
			}else{
				$.messager.alert("提示","只能选择草稿或者已上报状态的委托单","warning");    
				return
			}
			
			

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
			if(selRow.checkBy == null){
				$.messager.alert("提示","没有审核的委托单不能提交","warning");    
				return
			}
			if(selRow.state == 1){
				$.messager.alert("提示","已提交过,无须提交","warning");    
				return
			}
			$.messager.confirm('提示', '您真的要提交吗？', function(r){
				if (r){
					var url="${ctx}/cargo/shippingOrderAction_toSubmitShippingOrder";
					var data ={"shippingOrderId":selRow.shippingOrderId};
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
			
			
			$.messager.confirm('提示', '您真的要取消吗？', function(r){
				if (r){
					var url="${ctx}/cargo/shippingOrderAction_toCancelShippingOrder";
					var data ={"shippingOrderId":selRow.shippingOrderId};
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
		text : "打印",
		iconCls: 'icon-print',
		handler: function(){
			var selRow = $("#dataList").datagrid("getSelected");
			
			if(selRow == null){
				$.messager.alert("提示","请选择行","warning");    
				return
			}
			
			var id =  selRow.shippingOrderId;
			$("#id").val(id);//selRow.id就是部门主键
			
			//3. 提交表单（查看）
			document.forms[0].action = "${ctx}/cargo/outProductAction_printShippingOrder";
			document.forms[0].submit();
		}
		
	}
];

$(function(){
	$("#dataList").datagrid({
		url : "${ctx}/cargo/shippingOrderAction_listResult", // 后台action地址
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
		    <option value="2">已开发票</option>   
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

