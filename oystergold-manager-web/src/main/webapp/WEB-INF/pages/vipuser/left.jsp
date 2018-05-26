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
        <div class="panel_icon"><img src="${ctx}/skin/default/images/icon/user1_lock.png"/></div>
        <div class="panel-header">
        <div class="panel-title">会员中心</div>
        <div class="panel-content">
		 
		<ul>
			<li><a href="${ctx}/vipuser/VipuserAction_list" onclick="linkHighlighted(this)" target="main" id="aa_1">查看会员</a></li>
			<li><a href="${ctx}/vipuser/NoActiveVipuserAction_list" onclick="linkHighlighted(this)" target="main" id="aa_1">查看未激活会员</a></li>
			<li><a href="${ctx}/vipuser/VipPackageAmtAction_list" onclick="linkHighlighted(this)" target="main" id="aa_1">会员钱包</a></li>
			<li><a href="${ctx}/vipuser/VipuserRelationAction_list" onclick="linkHighlighted(this)" target="main" id="aa_1">会员关系圈</a></li>
			<li><a href="${ctx}/vipuser/AssetStockAction_list" onclick="linkHighlighted(this)" target="main" id="aa_1">股权管理</a></li>
		</ul>  
		<%-- 入动态的菜单生成--%> 
			<%@include file="../leftmenu.jsp" %>
			
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
