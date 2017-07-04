<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
	<head>

		<title>My JSP 'saveProduct.jsp' starting page</title>

	</head>
<script type="text/javascript">
function yanzheng(){
	if(document.getElementById('shangpinbianhao').value==""){
	alert("请输入商品编号!");
	return false;
	}
	
	if(document.getElementById('shangpinname').value==""){
	alert("请输入商品名称!");
	return false;
	}

if(document.getElementById('shangpinshangbiao').value==""){
alert("请输入商品商标!");
return false;
}

if(document.getElementById('shangpintype').value==""){
alert("请输入商品型号!");
return false;
}

if(document.getElementById('shangpinprice').value==""){
alert("请输入商品价格!");
return false;
}
if(isNaN(document.forms[0].price.value)){
alert("商品价格必须是数字!");
return false;
}
return true;
}
</script>
	<body bgcolor="#CCCCCC">
	<form action="dosaveProduct.jsp" method="post" onsubmit="return yanzheng()">
	<table border="1" align="center" cellpadding="0" cellspacing="0">
	<tr>
	<td bgcolor="#797979">添加商品信息</td>
	<td bgcolor="#797979"></td>
	</tr>
		<tr>
		<td bgcolor="#999999">商品编号：</td>
		<td bgcolor="#999999"><input type="text" id="shangpinbianhao" name="serialNumber"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品名称：</td>
		<td bgcolor="#999999"><input type="text" id="shangpinname" name="productName"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品商标：</td>
		<td bgcolor="#999999"><input type="text" id="shangpinshangbiao" name="brand"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品型号：</td>
		<td bgcolor="#999999"><input type="text" id="shangpintype" name="model"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品价格：</td>
		<td bgcolor="#999999"><input type="text" id="shangpinprice" name="price"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品图片：</td>
		<td bgcolor="#999999"><input type="text" id="shangpinpic" name="pic"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">商品介绍：</td>
		<td bgcolor="#999999"><textarea rows="5" cols="28" id="shangpinjieshao" name="desciption">
		</textarea></td>
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="提交">
		<input type="reset" value="重置"></td>
		</tr>
		</table>
		</form>
	</body>
</html>
