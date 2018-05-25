<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>

<body>
	<form name="icform" method="post">
		<input type="hidden" name="id" value="${productId}" />
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
			<img src="${ctx }/skin/default/images/icon/currency_yen.png" /> 浏览商品
		</div>

		<div>
			<table class="commonTable" cellspacing="1">
				<tr>
					<td class="columnTitle">编号：</td>
					<td class="tableContent">${productId }</td>
					<td class="columnTitle">体积：</td>
					<td class="tableContentAuto">${ctype }</td>
				</tr>
				<tr>
					<td class="columnTitle">颜色：</td>
					<td class="tableContent">${color }</td>
					<td class="columnTitle">厂家简称：</td>
					<td class="tableContent">${factoryName }</td>
				</tr>
				<tr>
					<td class="columnTitle">加入时间：</td>
					<td class="tableContent">${inputTime }</td>
					<td class="columnTitle">创建时间：</td>
					<td class="tableContent">${createTime }</td>
				</tr>

				<tr>
					<td class="columnTitle">大箱尺寸高：</td>
					<td class="tableContent">${mpsizeHeight }</td>
					<td class="columnTitle">大箱尺寸长：</td>
					<td class="tableContent">${mpsizeLenght }</td>
				</tr>
				<tr>
					<td class="columnTitle">大箱尺寸宽：</td>
					<td class="tableContent"><pre>${mpsizeWidth }</pre></td>
					<td class="columnTitle">集装箱类别20：</td>
					<td class="tableContent"><pre>${type20 }</pre></td>
				</tr>
				<tr>
					<td class="columnTitle">集装箱类别40：</td>
					<td class="tableContent"><pre>${type40 }</pre></td>
					<td class="columnTitle">集装箱类别40+：</td>
					<td class="tableContent"><pre>${type40hc }</pre></td>
				</tr>
				<tr>
					<td class="columnTitle">包装：</td>
					<td class="tableContent">${packing }</td>
					<td class="columnTitle">包装单位：</td>
					<td class="tableContent">${packingUnit }</td>
				</tr>
				<tr>
					<td class="columnTitle">市场价：</td>
					<td class="tableContent">${fax }</td>
					<td class="columnTitle">数量：</td>
					<td class="tableContent">${qty }</td>
				</tr>
				<tr>
					<td class="columnTitle">图片：</td>
					<td class="tableContent">${fax }</td>
					<td class="columnTitle">尺寸高：</td>
					<td class="tableContent">${sizeLenght }</td>
				</tr>
				<tr>
					<td class="columnTitle">尺寸长：</td>
					<td class="tableContent">${sizeLenght }</td>
					<td class="columnTitle">尺寸宽：</td>
					<td class="tableContent">${sizeWidth }</td>
				</tr>
				<tr>
					<td class="columnTitle">创单人：</td>
					<td class="tableContent">${_CURRENT_USER.userName }</td>
					<td class="columnTitle">创单人部门：</td>
					<td class="tableContent">${_CURRENT_USER.dept.deptName }</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>