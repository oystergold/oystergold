<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" href="${ctx}/components/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="${ctx}/components/zTree/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="${ctx}/components/zTree/js/jquery.ztree.core-3.5.min.js"></script>
	<script type="text/javascript" src="${ctx}/components/zTree/js/jquery.ztree.excheck-3.5.min.js"></script>

	<title></title>
	
</head>
<script type="text/javascript">
	var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};
	
	
	$(function(){
		$.ajax({
			   type: "POST",
			   url: "${ctx}/sysadmin/roleAction_ajaxRoleModule",
			   data: "id=${id}",
			   dataType : "json",
			   success: jsoninit
					
			   
			});
		
	});
	
	var zTreeObj ;
	function jsoninit(jsonData){
		zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, jsonData);
		zTreeObj.expandAll(true);
	}
	
	function getAllNodes(){
		var nodes = zTreeObj.getCheckedNodes(true);
		var moduleIds="";
		for(var i =0;i<nodes.length;i++){
			moduleIds += nodes[i].id+",";
		}
		moduleIds  = moduleIds.substring(0, moduleIds.length-1);
		$("#moduleIds").val(moduleIds);
	}
</script>
<body>
<form name="icform" method="post">
	<input type="hidden" name="id" value="${id}"/>
	<input type="hidden" name="moduleIds"  id="moduleIds" value=""/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="getAllNodes();formSubmit('roleAction_updateRoleModule','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
<div class="textbox" id="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    用户 [${name}]权限列表
  </div> 
  </div>
  </div>
  
<div>
<div style="text-align:left">
	
		<ul id="treeDemo" class="ztree"></ul>
	
</div>
</div>
</form>
</body>
</html>

