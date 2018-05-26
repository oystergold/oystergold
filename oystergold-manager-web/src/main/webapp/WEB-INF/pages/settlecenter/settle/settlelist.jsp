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
   		{field:'serialId',title:'流水号',width:200},    
   		{field:'oid',title:'订单号',width:200},
   		{field:'buy_name',title:'订单用户姓名',width:100},    
   		
   		{field:'amt',title:'结算金额 ',width:100},
   		{field:'status',title:'状态',width:100,formatter:function(value,row,index){
   			if (value == 0){
   				return "草稿";
   			}else if (value ==1){
   				return "已上报";
   			}else if (value ==2){
   				return "已报运";
   			}
   		}},
   		{field:'createTime',title:'创建时间 ',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
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
			url : "${ctx}/settlecenter/settle_listResult2", // 后台action地址
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
    结算流水列表
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

