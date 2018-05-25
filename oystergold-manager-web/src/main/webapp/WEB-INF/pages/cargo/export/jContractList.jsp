<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	
	<script type="text/javascript">	    
	var v_columns = [[
   		{field:'checkbox_',title:'',checkbox:true}, 
   		{field:'id',title:'编号',width:300},    
   		{field:'contractNo',title:'合同号',width:100},
   		{field:'customName',title:'客户名称',width:100},    
   		{field:'abc',title:'货物数/附件数 ',width:100,formatter:function(value,row,index){
   			 return row.conProNum+"/"+row.extCProNum;
   		}},
   		{field:'inputBy',title:'制单人',width:100},
   		{field:'checkBy',title:'审单人',width:100},
   		{field:'inspector',title:'验货员',width:100},
   		{field:'signingDate',title:'签单日期',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
   		{field:'deliveryPeriod',title:'交货期限 ',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
   		{field:'shipTime',title:'船期',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
   		{field:'tradeTerms',title:'贸易条款',width:100},
   		{field:'totalAmount',title:'总金额 ',width:100},
   		{field:'state',title:'状态',width:100,formatter:function(value,row,index){
   			if (value == 0){
   				return "草稿";
   			}else if (value ==1){
   				return "已上报";
   			}else if (value ==2){
   				return "已报运";
   			}
   		}} 
   	]];
	
	// 工具栏
	var v_toolbar = [{
			text : "查看",
			iconCls: 'icon-search',
			handler: function(){
				var selRow = $("#dataList").datagrid("getSelections");
				
				if(selRow == null || selRow.length==0){
					$.messager.alert("提示","请选择行","warning");    
					return
				}
				
				if(selRow.length>1){
					$.messager.alert("提示","请勿选择多行","warning");    
					return
				}
				
				
				var id =  selRow[0].id;
			
				$("#id").val(id);//selRow.id就是部门主键
				
				//3. 提交表单（查看）
				document.forms[0].action = "${ctx}/cargo/exportAction_toView";
				document.forms[0].submit();
			}
		},{
			text : "打印",
			iconCls: 'icon-add',
			handler: function(){
				var selRow = $("#dataList").datagrid("getSelections");
				
				if(selRow == null||selRow.length==0){
					$.messager.alert("提示","请选择行","warning");    
					return
				}
				if(selRow.length>1){
					$.messager.alert("提示","请勿选择多行","warning");    
					return
				}
				var id =  selRow[0].id;
				$("#id").val(id);//selRow.id就是部门主键
				
				//3. 提交表单（查看）
				document.forms[0].action = "${ctx}/cargo/outProductAction_printContract";
				document.forms[0].submit();
			}
			
		},{
			text : "报运",
			iconCls: 'icon-edit',
			handler: function(){
				var selRow = $("#dataList").datagrid("getSelections");
				if (selRow == null||selRow.length==0) {
					$.messager.alert("操作提示","请先选择行!","warning");
					return;
				}
				var ids="";
				for(var i=0; i<selRow.length;i++) {
					ids += selRow[i].id + ",";
				}
				ids = ids.substring(0,ids.length-1);
				
				//2. 把选择的行的id，设置到表单中
				$("#id").val(ids);//selRow.id就是部门主键
				
				//3. 提交表单（查看）
				document.forms[0].action = "${ctx}/cargo/exportAction_tocreate";
				document.forms[0].submit();
			}
		}
	];
	
	$(function(){
		$("#dataList").datagrid({
			//url : "${ctx}/test.json",
			url : "${ctx}/cargo/exportAction_listResult2", // 后台action地址
			columns : v_columns,
			fitColumns:true,
			toolbar:v_toolbar,
			//singleSelect:true,
			pagination:true,
		});
	})
	</script>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="id" id="id">
   
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
  <img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    购销合同列表
  </div> 
  </div>
  </div>
<div>

<div class="eXtremeTable" >
 	<table id="dataList"></table>
</div>
</form>
</body>
</html>

