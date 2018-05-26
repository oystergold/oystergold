<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../baselist.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/skin/default/css/left.css" media="all"/>
</head>
 
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
 
 
<!-- begin1  -->
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
        <div class="panel">
        <div class="panel_icon"><img src="${ctx}/skin/default/images/icon/components.png"/></div>
        <div class="panel-header">
        <div class="panel-title">商品管理</div>
        <div class="panel-content">
         
			 <ul>
				<li><a href="${ctx}/item/item/item_add" onclick="linkHighlighted(this)" target="main" id="aa_1">添加商品</a></li>
				<li><a href="${ctx}/settlecenter/settle/settle_list" onclick="linkHighlighted(this)" target="main" id="aa_1">查看商品</a></li>
				<li><a href="${ctx}/settlecenter/settle/settle_list" onclick="linkHighlighted(this)" target="main" id="aa_1">订单管理</a></li>
			</ul> 
			
			<%--  <%@include file="../leftmenu.jsp" %>  --%>
        </div>
        </div>
    </div>
    <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>  
</div>	


</body>
</html>
