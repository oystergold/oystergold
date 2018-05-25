<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
   		{field:'productId',title:'编号',width:100},    
   		{field:'cbm',title:'体积',width:100},
   		{field:'color',title:'颜色',width:100}, 
   		{field:'description',title:'描述',width:200}, 
   		{field:'factoryName',title:'厂家简称',width:100}, 
   		{field:'inputTime',title:'加入时间',width:130,
   			formatter : function(value, row, index) {
				return dateToString(value);
			}	
   		}, 
   		{field:'mpsizeHeight',title:'大箱尺寸高',width:100}, 
   		{field:'mpsizeLenght',title:'大箱尺寸长',width:100}, 
   		{field:'mpsizeWidth',title:'大箱尺寸宽',width:100}, 
   		{field:'packingUnit',title:'包装单位',width:100}, 
   		{field:'price',title:'市场价',width:100}, 
   		{field:'qty',title:'数量',width:100},
   		{field:'remark',title:'配注',width:100},
   		{field:'createTime',title:'创建时间',width:100,
   			formatter : function(value, row, index) {
				return dateToString(value);
			}	
   		}
   	]];
	
	$(function(){
		$('#dataList').datagrid({
			url : "${ctx}/baseinfo/productAction_listResult",
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
	    				var id =  selRow.productId;
	    			
	    				$("#icform").attr("action","${ctx}/baseinfo/productAction_toView?productId="+id);
	    				$("#icform").submit();
	    			}
	    		},
	    		{
	    			iconCls: "icon-edit",
	    			text:"修改",
	    			handler: function(){
	    				
						var selRow = $("#dataList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.productId;
	    				$("#icform").attr("action","${ctx}/baseinfo/productAction_toUpdate?productId="+id)
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
		    						var url="${ctx}/baseinfo/productAction_toDelete";
		    						var data ={"productId":selRow.productId};
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
	<form name="icform" id="icform" method="post">

		<div class="textbox" id="centerTextbox">
			<div class="textbox-header">
				<div class="textbox-inner-header">
					<div class="textbox-title">
						<img src="${ctx }/skin/default/images/icon/currency_yen.png" />
						工厂商品列表
					</div>
				</div>
			</div>
			<table class="tableRegion" width="10%">
				<tr>
					<td>类型：<select id="state" class="easyui-combobox" name="ctype"
						style="width: 150px;" data-options="panelHeight:'auto'">
							<option value="">--请选择--</option>
							<option value="货物">货物</option>
							<option value="附件">附件</option>
					</select></td>
					<td>厂家简称：<input id="customName" type="text" name="factoryName"
						class="easyui-textbox" style="width: 150px"></input></td>
					<td style="width: 100px;"><a id="btnSearch" href="#"
						class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
					</td>
				</tr>
			</table>
			<div>

				<div class="eXtremeTable">

					<table id="dataList"></table>
				</div>
	</form>
</body>
</html>

