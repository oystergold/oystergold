<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>

</title>
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
				{field:"checkbox_",title:'',checkbox:true},     
		        {field:"vid",title:"会员编号",width:100},    
		        {field:"parentName",title:"推荐人",width:60},
		        {field:"vname",title:"真实姓名",width:60},
		        {field:"vusername",title:"用户名",width:80},
		        {field:"vtelephone",title:"电话号码",width:100},
		        {field:"vlevel",title:"会员等级",width:50},
		        {field:"vstatus",title:"会员状态",width:50},
		        {field:"createtime",title:"创建时间",width:80},
		        {field:"vcardno",title:"银行卡账号",width:120},
		        {field:"bankaddress",title:"开户行",width:100},
		        {field:"vaddress",title:"用户地址",width:100},
		        {field:"email",title:"邮箱账号",width:100} 
		    ]];
	
	$(function(){
		$('#vipuserList').datagrid({
			url : "${ctx}/vipuser/vipuserAction_listResult",
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
	    			text:"查看会员",
	    			handler: function(){
	    				var selRow = $("#vipuserList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    			
	    				$("#vipuserform").attr("action","${ctx}/vipuser/vipuserAction_toView?id="+id);
	    				$("#vipuserform").submit();
	    			}
	    		},
	    		{
	    			iconCls: "icon-add",
	    			text:"添加会员",
	    			handler: function(){
						
	    				$("#vipuserform").attr("action","${ctx}/vipuser/vipuserAction_toCreate")
	    				$("#vipuserform").submit();
	    			}
	    		},{
	    			iconCls: "icon-edit",
	    			text:"修改会员",
	    			handler: function(){
	    				
						var selRow = $("#vipuserList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				var id =  selRow.id;
	    				$("#vipuserform").attr("action","${ctx}/vipuser/vipuserAction_toUpdate?id="+id)
	    				$("#vipuserform").submit();
	    			}
	    		},{
	    			iconCls: "icon-remove",
	    			text:"删除会员",
	    			handler: function(){
	
						var selRow = $("#vipuserList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要删除吗？', function(r){
	    					if (r){
	    						var url="${ctx}/vipuser/vipuserAction_toDelete";
	    						var data ={"id":selRow.id};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","删除成功","info");
	    							 $("#vipuserList").datagrid("reload");
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
	    			text:"会员关系网",
	    			handler: function(){
	    				
						var selRow = $("#vipuserList").datagrid("getSelected");
	    				
	    				if(selRow == null){
	    					$.messager.alert("提示","请选择行","warning");    
							return
	    				}
	    				$.messager.confirm('提示', '您真的要提交吗？', function(r){
	    					if (r){
	    						var url="${ctx}/vipuser/vipuserAction_toSubmit";
	    						var data ={"id":selRow.id};
	    	    				var callback=function(backDate){
	    	    					
	    	    				 if(backDate="true"){
	    	    						$.messager.alert("提示","提交成功","info");
	    							 $("#vipuserList").datagrid("reload");
	    	    					}else{
	    	    						$.messager.alert("提示","提交失败","error");
	    	    					} 
	    	    				};
	    	    				var type="text";
	    	    				$.post(url,data,callback,type)
	    					}
	    				});
	    			}
	    		}]
	
			});
		
		
//条件查询
		$('#btnSearch').linkbutton({    
			onClick: function(){
				
				var jsonValue = $("#vipuserform").serializeJson();
				$("#vipuserList").datagrid("load",jsonValue)
			}   
		}); 
	})
	</script>
</head>

<body>
<form name="vipuserform"  id="vipuserform" method="post">
   
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
  <img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    会员管理列表
  </div> 
  </div>
  </div>
  <table  class="tableRegion" width="90%" >
  <tr>
	<td>会员姓名</td>
	<td><input id="vname" type="text"name="vname" class="easyui-textbox" style="width:150px"></input> </td>
	<td>电话</td>
	<td><input id="vtelephone" type="text"name="vtelephone" class="easyui-textbox" style="width:150px"></input> </td>
	<td>会员等级</td>
	<td> 
		<select id="vlevel" class="easyui-combobox" name="state" style="width:150px;"  data-options="panelHeight:'auto'">  
			<option value="">--请选择--</option>    
		    <option value="0">草稿</option>   
		    <option value="1">已上报</option>   
		</select>  

	</td>
	<td>会员状态</td>
	<td> 
		<select id="vstatus" class="easyui-combobox" name="vstatus" style="width:150px;"  data-options="panelHeight:'auto'">  
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
	
 	<table id="vipuserList"></table>
</div>
</form>
</body>
</html>


