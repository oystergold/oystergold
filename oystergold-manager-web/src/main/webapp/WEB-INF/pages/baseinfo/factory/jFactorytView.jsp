<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
</head>

<body>
<form name="icform" method="post">
      <input type="hidden" name="id" value="${id}"/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
   浏览工厂
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	         <tr>
	            <td class="columnTitle">厂家全称：</td>
	            <td class="tableContent">${fullName }</td>
	            <td class="columnTitle">类型：</td>
	            <td class="tableContentAuto">
	            	${ctype } 
	            </td>
	        </tr>
	        <tr>
	      		<td class="columnTitle">创单人：</td>
	            <td class="tableContent">${_CURRENT_USER.userName }</td>
	            <td class="columnTitle">创单人部门：</td>
	            <td class="tableContent">${_CURRENT_USER.dept.deptName }</td>
	      	</tr>			
	        <tr>
	            <td class="columnTitle">工厂简称：</td>
	            <td class="tableContent">${factoryName }</td>
	            <td class="columnTitle">联系人：</td>
	            <td class="tableContent">${contacts }</td>
	        </tr>		
	         <tr>
	            <td class="columnTitle">电话：</td>
	            <td class="tableContent">${phone }</td>
	            <td class="columnTitle">手机：</td>
	            <td class="tableContent">${mobile }</td>
	        </tr>	
	        
	        <tr>
	            <td class="columnTitle">传真：</td>
	            <td class="tableContent">${fax }</td>
	            <td class="columnTitle">地址：</td>
	            <td class="tableContent">${address }</td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent"><pre>${remark }</pre></td>
	        </tr>		
		</table>
	</div>
 </form>
 
 <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
    货物列表
  </div> 


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">体积</td>
		<td class="tableHeader">颜色</td>
		<td class="tableHeader">描述</td>
		<td class="tableHeader">厂家简称</td>
		<td class="tableHeader">加入时间</td>
		<td class="tableHeader">大箱尺寸高</td>
		<td class="tableHeader">大箱尺寸长</td>
		<td class="tableHeader">大箱尺寸宽</td>
		<td class="tableHeader">包装</td>
		<td class="tableHeader">包装单位</td>
		<td class="tableHeader">市场价</td>
		<td class="tableHeader">数量</td>
		<td class="tableHeader">备注</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${products}" var="cp" varStatus="status">
	<tr bgcolor="#c3f3c3" height="30" class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
		<td>${status.index+1}</td>
		<td>${cp.cbm }</td>
		<td>${cp.color }</td>
		<td>${cp.description }</td>
		<td>${cp.factoryName }</td>
		<td>${cp.inputTime }</td>
		<td>${cp.mpsizeHeight }</td>
		<td>${cp.mpsizeLenght }</td>
		<td>${cp.mpsizeWidth }</td>
		<td>${cp.packing }</td>
		<td>${cp.packingUnit }</td>
		<td>${cp.price }</td>
		<td>${cp.qty }</td>
		<td>${cp.remark }</td>
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</div> 
</body>
</html>