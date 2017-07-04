<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    
    <title>My JSP 'saveUsers.jsp' starting page</title>

  </head>
  <script type="text/javascript">
  function yanzheng(){
var z1=document.getElementById('name').value;
var z2=document.getElementById('password').value;
var z3=document.getElementById('password1').value;

	if(z1==""){
	alert("请输入管理员名称！");
	return false;
	}
	if(z2==""){
	alert("请输入密码！");
	return false;
	}
	if(z2.length<6){
	alert("密码至少是6-12位！");
	return false;
	}
	if(z3==""){
	alert("请输入确认密码！");
	return false;
	}
	if(z2!=z3){
	alert("密码和确认密码必须一致！");
	return false;
	}
	return true;
}
  </script>
  <body bgcolor="#CCCCCC">
  <form action="dosaveUsers.jsp" onsubmit="return yanzheng()">
  <table border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td colspan="3" bgcolor="#666666">管理员-添加</td>
  </tr>
  <tr>
  <td>管理员名称：</td><td><input type="text" id="name" name="username"></td>
  </tr>
  <tr>
  <td>密 码：</td><td><input type="password" id="password" name="password"></td>
  </tr>
  <tr>
  <td>确认密码：</td><td><input type="password" id="password1" name="password1"></td>
  </tr>
  <tr>
  <td></td><td><input type="submit" value="提交"> <input type="reset" value="重置"></td>
  </tr>
    </table>
    </form>
  </body>
</html>
