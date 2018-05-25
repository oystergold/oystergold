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
   		{field:'ctype',title:'类型',width:100},
   		{field:'contacts',title:'联系人',width:100}, 
   		{field:'fullName',title:'厂家全称',width:200}, 
   		{field:'factoryName',title:'厂家简称',width:100}, 
   		{field:'phone',title:'电话',width:130}, 
   		{field:'mobile',title:'手机',width:100}, 
   		{field:'fax',title:'传真',width:100}, 
   		{field:'address',title:'地址',width:100}, 
   		{field:'inspector',title:'验货员',width:100}, 
   		{field:'state',title:'状态',width:100,
   			formatter:function(value,row,index){
   	   			if (value == 0){
   	   				return "草稿";
   	   			}else if (value ==1){
   	   				return "合作";
   	   			}else if (value ==2){
   	   				return "无合作";
   	   			}
   			}
   		} 
   		
   	]];
	
	$(function(){
		$('#dataList').datagrid({
			url : "${ctx}/baseinfo/factoryAction_listResult",
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
	    			
	    				$("#icform").attr("action","${ctx}/baseinfo/factoryAction_toView?id="+id);
	    				$("#icform").submit();
	    			}
	    		},
	    		{
	    			iconCls: "icon-add",
	    			text:"添加",
	    			handler: function(){
						
	    				$("#icform").attr("action","${ctx}/baseinfo/factoryAction_toCreate")
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
	    				$("#icform").attr("action","${ctx}/baseinfo/factoryAction_toUpdate?id="+id)
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
	    				if(selRow.state != 1){
	    					$.messager.confirm('提示', '您真的要删除吗？', function(r){
		    					if (r){
		    						var url="${ctx}/baseinfo/factoryAction_toDelete";
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
	    					
	    				}else{
	    					$.messager.alert("提示","该工厂正在合作中，不能删除","warning");
	    					return
	    				}
	    			}
	    		},{
	    			iconCls: "icon-edit",
	    			text:"工厂商品",
	    			handler: function(){
	    				$("#icform").attr("action","${ctx}/baseinfo/factoryAction_toaddProduct")
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
    工厂列表
  </div> 
  </div>
  </div>
  <table  class="tableRegion" width="30%" >
  <tr>
    <td>类型：</td>
	<td> <select id="state" class="easyui-combobox" name="ctype" style="width:150px;"  data-options="panelHeight:'auto'">  
			 <option value="">--请选择--</option>    
		    <option value="货物">货物</option>   
		    <option value="附件">附件</option>   
		</select>  
	</td>
	<td>厂家名称：</td>
	<td><input id="customName" type="text"name="fullName" class="easyui-textbox" style="width:150px"></input> </td>
	<td>状态：</td>
	<td> <select id="state" class="easyui-combobox" name="state" style="width:150px;"  data-options="panelHeight:'auto'">  
			 <option value="">--请选择--</option>    
		    <option value="1">合作</option>   
		    <option value="2">无合作</option>   
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

