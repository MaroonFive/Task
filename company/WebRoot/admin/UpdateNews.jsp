<%@ page language="java" import="java.util.*" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
  <head>
    
    <title>My JSP 'UpdateNews.jsp' starting page</title>

  </head>
  <script type="text/javascript">
  function yanzheng(){
  if(document.getElementById('t1').value==""&&document.getElementById('t2').value==""){
  alert("请填写标题和内容！");
  return false;
  }
  return true;
  }
  </script>
  <body bgcolor="#cccccc">
  <form method="post" action="UpdateNewszhuan.jsp" onsubmit="return yanzheng()">
    <table width="730" height="187" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="30" colspan="2" bgcolor="#666666">添加新闻信息</td>
      </tr>
      <tr>
        <td width="79" height="27">新闻标题:</td>
        <td width="635"><label>
          <input type="text" name="t1" id="t1">
        </label></td>
      </tr>
      <tr>
        <td height="87">新闻内容:</td>
        <td><label>
          <textarea name="t2" cols="40" rows="6" id="t2"></textarea>
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" value="提交">
        </label></td>
      </tr>
    </table>
  </form>
  </body>
</html>
