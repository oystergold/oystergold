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
   		{field:'serialId',title:'流水号',width:200},    
   		{field:'oid',title:'订单号',width:200},
   		{field:'buy_name',title:'订单用户姓名',width:100},    
   		
   		{field:'amt',title:'结算金额 ',width:100},
   		{field:'status',title:'状态',width:100,formatter:function(value,row,index){
   			if (value == 0){
   				return "处理中";
   			}else if (value ==1){
   				return "成功";
   			}else if (value ==2){
   				return "失败";
   			}
   		}},
   		{field:'errMsg',title:'失败原因 ',width:100},
   		{field:'creatTime',title:'创建时间 ',width:100,formatter:function(value,row,index){
   			return dateToString(value);
   		}},
   	]];
	
	// 工具栏
	var v_toolbar = [{
			text : "再次结算",
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
		
		$('#btnSearch').linkbutton({    
			onClick: function(){
				var jsonValue = $("#settleForm").serializeJson();
				$("#dataList").datagrid("load",jsonValue)
			}   
		}); 
	})
	</script>
</head>

<body>
<form name="icform" method="post" id="settleForm">
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
  <table class="tableRegion" width="70%" >
			<tr>
			<td>流水号:</td>
			<td><input  type="text" name="serialId" style="width:100px;height: 15px;border-radius: 5px;"/> </td>
				<td>起始日期</td>
				<td><input id="beginTime" type="text" name="beginDate"
					class="easyui-datebox" style="width: 150px"></input></td>
				<td>结束日期</td>
				<td><input id="endTime" type="text" name="endDate"
					class="easyui-datebox" style="width: 150px"></input></td>
				<td>状态</td>
				<td><select id="status" class="easyui-combobox" name="state"
					style="width: 150px;" data-options="panelHeight:'auto'">
						<option value="">--请选择--</option>
						<option value="0">处理中</option>
						<option value="1">成功</option>
				</select></td>

				<td style="width: 100px;"><a id="btnSearch" href="#"
					class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
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

