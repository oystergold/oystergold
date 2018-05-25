<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="id" value="${id}"/>
	<input type="hidden" style="width:90px;" name="createTime"
	            	 value="${createTime }"
	             	onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('moduleAction_addModule','_self');this.blur();">保存</a></li>
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
   修改模块
  </div> 
  </div>
  </div>
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">模块名：</td>
	            <td class="tableContent"><input type="text" name="name" value="${name}"/></td>
	            <td class="columnTitle">层数：</td>
	            <td class="tableContent"><input type="text" name="layerNum" value="${layerNum}"/></td>
	        </tr>
	         <tr>
	            <td class="columnTitle">父模块：</td>
	            <td class="tableContent">
	            	<input id="modulecombobox_comboboxID" class="easyui-combobox" name="parentId" value="${parentId }"  
    				style="width:300px"
    				data-options="valueField:'id',textField:'name',editable:false,groupField:'parentName',
    				url:'${ctx}/sysadmin/roleAction_ajaxAllModule'" 
    				/>  
	            
	            </td>
	            <td class="columnTitle">是否为叶子：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="isLeaf" value="1" <c:if test="${state==1}">checked</c:if> class="input"/>是
	            	<input type="radio" name="isLeaf" value="0" <c:if test="${state==0}">checked</c:if> class="input"/>否
	            </td>
	        </tr>	
	        		
	        <tr>
	            <td class="columnTitle">权限标识：</td>
	            <td class="tableContent"><input type="text" name="cpermission" value="${cpermission}"/></td>
	            <td class="columnTitle">链接：</td>
	            <td class="tableContent"><input type="text" name="curl" value="${curl}"/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">类型：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="ctype" value="0" <c:if test="${ctype==0}">checked</c:if> class="input"/>主菜单
	            	<input type="radio" name="ctype" value="1" <c:if test="${ctype==1}">checked</c:if> class="input"/>左侧菜单
	            	<input type="radio" name="ctype" value="2" <c:if test="${ctype==2}">checked</c:if> class="input"/>按钮
	            	<input type="radio" name="ctype" value="3" <c:if test="${ctype==3}">checked</c:if> class="input"/>链接
	            	<input type="radio" name="ctype" value="4" <c:if test="${ctype==4}">checked</c:if> class="input"/>状态
	            </td>
	            <td class="columnTitle">状态：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="state" value="1" <c:if test="${state==1}">checked</c:if> class="input"/>启用
	            	<input type="radio" name="state" value="0" <c:if test="${state==0}">checked</c:if> class="input"/>停用
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">从属：</td>
	            <td class="tableContent"><input type="text" name="belong" value="${belong}"/></td>
	            <td class="columnTitle">复用标识：</td>
	            <td class="tableContent"><input type="text" name="cwhich" value="${cwhich}"/></td>
	        </tr>			
	        <tr>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent">
	            	<textarea name="remark" style="height:120px;">${remark}</textarea>
	            </td>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="orderNo" value="${orderNo}"/></td>
	        </tr>			
		</table>
	</div>
  
 
</form>
</body>
</html>

