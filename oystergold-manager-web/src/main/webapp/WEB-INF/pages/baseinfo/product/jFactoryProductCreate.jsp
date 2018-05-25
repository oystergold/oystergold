<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
</head>
<script type="text/javascript">
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
													$("#factoryName").val(backData);
												};
												var type = "json";
												$.post(url, data, callback,
														type);
											}
										});
					});

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
								onclick="submit('productAction_addProduct');">保存</a></li>
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
					<td class="columnTitle">厂家列表：</td>
					<td class="tableContent"><input
						id="factorycombobox_comboboxID" class="easyui-combobox"
						name="factory.id" style="width: 300px"
						data-options="    
			        valueField: 'id',    
			        textField: 'fullName', 
			        editable:false,   
			        url: '${ctx}/baseinfo/factorytAction_ajaxAllFactory'"
						value="---请选择---" /></td>
					<td class="columnTitle">编号：</td>
					<td class="tableContent"><input type="text" name="productId"
						value="" /></td>
				</tr>
				<tr>
					<td class="columnTitle">体积：</td>
					<td class="tableContent"><input type="text" name="cbm"
						value="11" /></td>
					<td class="columnTitle">颜色：</td>
					<td class="tableContent"><input type="text" name="color"
						value="" /></td>
				</tr>
				<tr>
					<td class="columnTitle">厂家简称：</td>
					<td class="tableContent"><input id="factoryName" type="text"
						name="factoryName"  value="" /></td>
				</tr>
				<tr>
					<td class="columnTitle">大箱尺寸高：</td>
					<td class="tableContent"><input type="text"
						name="mpsizeHeight" value="" /></td>
					<td class="columnTitle">大箱尺寸长：</td>
					<td class="tableContent"><input type="text"
						name="mpsizeLenght" value="" /></td>
				</tr>
				<tr>
					<td class="columnTitle">大箱尺寸宽：</td>
					<td class="tableContent"><input type="text" name="mpsizeWidth"
						value="" /></td>
					<td class="columnTitle">集装箱类别20：</td>
					<td class="tableContent"><input type="text" name="type20"
						value="" /></td>
				</tr>
				<tr>
					<td class="columnTitle">集装箱类别40：</td>
					<td class="tableContent"><input type="text" name="type40"
						value="" /></td>
					<td class="columnTitle">集装箱类别40+：</td>
					<td class="tableContent"><input type="text" name="type40+"
						value="" /></td>
				</tr>
				<tr>

					<td class="columnTitle">包装：</td>
					<td class="tableContent"><input type="text" name="packing"></input>
					<td class="columnTitle">包装单位：</td>
					<td class="tableContent"><input type="text" name="packingUnit"></input>
				</tr>
				<tr>
					<td class="columnTitle">数量：</td>
					<td class="tableContent"><input type="text" name="qty"></input>
					<td class="columnTitle">市场价：</td>
					<td class="tableContent"><input type="text" name="price"></input>
				</tr>
				<tr>
					<td class="columnTitle">图片：</td>
					<td class="tableContent"><input type="text"
						name="productImage"></input>
					<td class="columnTitle">编号：</td>
					<td class="tableContent"><input type="text" name="productNo"></input>
				</tr>
				<tr>
					<td class="columnTitle">描述：</td>
					<td class="tableContent"><textarea name="description"
							style="height: 150px;"></textarea>
					<td class="columnTitle">备注：</td>
					<td class="tableContent"><textarea type="text" name="remark"
							style="height: 150px;"></textarea>
				</tr>
				<tr>

					<td class="columnTitle">创单人：</td>
					<td class="tableContent">${_CURRENT_USER.userName }<input
						type="hidden" name="createBy" value="${_CURRENT_USER.id }" /></td>
					<td class="columnTitle">创单人部门：</td>
					<td class="tableContent">${_CURRENT_USER.dept.deptName }<input
						type="hidden" name="createDept"
						value="${_CURRENT_USER.dept.deptId }" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>

