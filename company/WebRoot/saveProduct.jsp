<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
	<head>

		<title>My JSP 'saveProduct.jsp' starting page</title>

	</head>
<script type="text/javascript">
function yanzheng(){
	if(document.getElementById('shangpinbianhao').value==""){
	alert("��������Ʒ���!");
	return false;
	}
	
	if(document.getElementById('shangpinname').value==""){
	alert("��������Ʒ����!");
	return false;
	}

if(document.getElementById('shangpinshangbiao').value==""){
alert("��������Ʒ�̱�!");
return false;
}

if(document.getElementById('shangpintype').value==""){
alert("��������Ʒ�ͺ�!");
return false;
}

if(document.getElementById('shangpinprice').value==""){
alert("��������Ʒ�۸�!");
return false;
}
if(isNaN(document.forms[0].price.value)){
alert("��Ʒ�۸����������!");
return false;
}
return true;
}
</script>
	<body bgcolor="#CCCCCC">
	<form action="dosaveProduct.jsp" method="post" onsubmit="return yanzheng()">
	<table border="1" align="center" cellpadding="0" cellspacing="0">
	<tr>
	<td bgcolor="#797979">�����Ʒ��Ϣ</td>
	<td bgcolor="#797979"></td>
	</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ��ţ�</td>
		<td bgcolor="#999999"><input type="text" id="shangpinbianhao" name="serialNumber"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ���ƣ�</td>
		<td bgcolor="#999999"><input type="text" id="shangpinname" name="productName"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ�̱꣺</td>
		<td bgcolor="#999999"><input type="text" id="shangpinshangbiao" name="brand"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ�ͺţ�</td>
		<td bgcolor="#999999"><input type="text" id="shangpintype" name="model"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ�۸�</td>
		<td bgcolor="#999999"><input type="text" id="shangpinprice" name="price"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��ƷͼƬ��</td>
		<td bgcolor="#999999"><input type="text" id="shangpinpic" name="pic"></td>
		</tr>
		<tr>
		<td bgcolor="#999999">��Ʒ���ܣ�</td>
		<td bgcolor="#999999"><textarea rows="5" cols="28" id="shangpinjieshao" name="desciption">
		</textarea></td>
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="�ύ">
		<input type="reset" value="����"></td>
		</tr>
		</table>
		</form>
	</body>
</html>
