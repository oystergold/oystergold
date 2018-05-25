<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib  prefix="famt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
</head>
<script type="text/javascript">
/*	
 * 
  //改变事件，动态提交
	$(document)
			.ready(
					function() {
						$("#factorycombobox_comboboxID")
								.combobox(
										{
											onChange : function(newValue,
													oldValue) {
												var url = "${ctx}/baseinfo/factoryAction_ajaxFindFactoryNameById";
												var data = {
													"id" : newValue
												};
												var callback = function(
														backData) {
													$("#factoryName").val(
															backData);
												};
												var type = "json";
												$.post(url, data, callback,type);
											}
										});
					});
*/
	function submit(v_url) {
		var url = "${ctx}/baseinfo/" + v_url;
		document.forms[0].action = url;
		document.forms[0].submit();
	}
</script>
<body>
	<form name="icform" method="post">
		<div id="menubar">
			<div id="middleMenubar">
				<div id="innerMenubar">
					<div id="navMenubar">
						<ul>
							<li id="save"><a href="#"
								onclick="submit('productAction_updateProduct');">保存</a></li>
							<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="textbox-title">
			<img src="${ctx }/skin/default/images/icon/currency_yen.png" /> 新增货物
		</div>

		<div>
			<table class="commonTable" cellspacing="1">
				<tr>
					<td class="columnTitle">厂家简称：</td>
					<td class="tableContent"><input id="factoryName" type="text"
						name="factoyName" readonly="readonly" value="${factory.fullName }" /></td>
					<td class="columnTitle">商品编号：</td>
					<td class="tableContent"><input type="hidden" name="productId"
						value="${productId }" /></td>
				</tr>
				<tr>
					<td class="columnTitle">体积：</td>
					<td class="tableContent"><input type="text" name="cbm"
						value="${cbm }" /></td>
					<td class="columnTitle">颜色：</td>
					<td class="tableContent"><input type="text" name="color"
						value="${color }" /></td>
				</tr>
				<tr>
					<td class="columnTitle">厂家简称：</td>
					<td class="tableContent"><input id="factoryName" type="text"
						name="factoryName" readonly="readonly" value="${factory.factoryName }" /></td>
					<td class="columnTitle">加入时间：</td>
					<td class="tableContent"><input type="text"
						style="width: 90px;" name="inputTime"  readonly="readonly" value='<famt:formatDate value="${inputTime }"  />' />
					</td>
				</tr>
				<tr>
					<td class="columnTitle">大箱尺寸高：</td>
					<td class="tableContent"><input type="text"
						name="mpsizeHeight" value="${mpsizeHeight }" /></td>
					<td class="columnTitle">大箱尺寸长：</td>
					<td class="tableContent"><input type="text"
						name="mpsizeLenght" value="${tableContent }" /></td>
				</tr>
				<tr>
					<td class="columnTitle">大箱尺寸宽：</td>
					<td class="tableContent"><input type="text" name="mpsizeWidth"
						value="${tableContent }" /></td>
					<td class="columnTitle">集装箱类别20：</td>
					<td class="tableContent"><input type="text" name="type20"
						value="${type20 }" /></td>
				</tr>
				<tr>
					<td class="columnTitle">集装箱类别40：</td>
					<td class="tableContent"><input type="text" name="type40"
						value="${type40 }" /></td>
					<td class="columnTitle">集装箱类别40+：</td>
					<td class="tableContent"><input type="text" name="type40hc"
						value="${type40hc }" /></td>
				</tr>
				<tr>

					<td class="columnTitle">包装：</td>
					<td class="tableContent"><input type="text" name="packing"
						value="${packing }"></input>
					<td class="columnTitle">包装单位：</td>
					<td class="tableContent"><input type="text" name="packingUnit"
						value="${packingUnit }"></input>
				</tr>
				<tr>
					<td class="columnTitle">数量：</td>
					<td class="tableContent"><input type="text" name="qty"
						value="${qty }"></input>
					<td class="columnTitle">市场价：</td>
					<td class="tableContent"><input type="text" name="price"
						value="${price }"></input>
				</tr>
				<tr>
					<td class="columnTitle">图片：</td>
					<td class="tableContent"><input type="text"
						name="productImage" value="${productImage }"></input>
					<td class="columnTitle">编号：</td>
					<td class="tableContent"><input type="text" name="productNo"
						value="${productNo }"></input>
				</tr>
				<tr>
					<td class="columnTitle">描述：</td>
					<td class="tableContent"><textarea name="description"
							value="${description }
							style="height: 150px;"></textarea>
					<td class="columnTitle">备注：</td>
					<td class="tableContent"><textarea type="text" name="remark"
							value="${remark }
							style="height: 150px;"></textarea>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>

