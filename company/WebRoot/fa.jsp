<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
  <head>
    
    <title>My JSP 'fa.jsp' starting page</title>


  </head>
  
  <body background="image/31.jpg">
  <embed src="image/company.mp3" width="8" height="8"></embed>
  <form name="form1" method="post" action="Chat.jsp" >
    <label>
    <textarea name="t1" cols="30" rows="5"></textarea>
    </label>
    <label>
    <input type="submit" value="发送">
    </label>
    <label>选择字体颜色
    <select name="s1">
      <option selected="selected">无</option>
      <option value="blue">蓝色</option>
      <option value="red">红色</option>
      <option value="green">绿色</option>
    </select>
    </label>
    字体大小
    <label>
    <select name="z1">
      <option selected="selected">10</option>
      <option>16</option>
      <option>24</option>
      <option>32</option>
    </select>
    </label>
  </form>
  <br>
  </body>
</html>
