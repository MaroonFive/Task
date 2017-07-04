<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
  <head>
    <title>添加留言</title>
    <style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE2 {
	font-size: 24px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px; font-weight: bold; }
-->
    </style>
    <script type="text/javascript">
    function show(){
    if(document.getElementById('1').value==""){
    alert("请输入姓名！");
    return false;
    }
    if(document.getElementById('2').value==""){
    alert("请输入标题！");
    return false;
    }
    if(document.getElementById('3').value==""){
    alert("请输入你要发送的内容！");
    return false;
    }
    return true;
    }
    </script>
</head>
  
  <body style="background-image:url(../image/bookbg.gif)">
     <form name="form1" method="post" action="saveMessage.jsp" onSubmit="return show()">
	 
       <table width="404" height="369" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td height="139" colspan="2"><img src="../image/welcome.jpg" width="750" height="135"></td>
         </tr>
         <tr>
           <td width="137">&nbsp;</td>
           <td width="613" align="center"><span class="STYLE2">欢迎您使用 留言本</span></td>
         </tr>
         <tr>
           <td colspan="2" bordercolor="#999999"><table width="749" border="1" cellspacing="0">
             <tr>
               <td width="92" background="../image/title.gif"><span class="STYLE4">留言</span></td>
               <td width="641">&nbsp;</td>
             </tr>
             <tr>
               <td colspan="2" align="center" background="../image/n07_r1_c3.jpg"><span class="STYLE1">新留言</span></td>
             </tr>
             <tr>
               <td align="right">姓名:</td>
               <td><input type="text" id="1" name="name" value="">
               * </td>
             </tr>
             <tr>
               <td align="right">标题:</td>
               <td><input type="text" id="2" name="title" value=""></td>
             </tr>
             <tr>
               <td align="right" valign="top">内容:</td>
               <td><textarea name="neirong" cols="80" rows="5" id="3" value=""></textarea></td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td><input type="submit" value="提  交"></td>
             </tr>
           </table></td>
         </tr>
         <tr>
           <td height="13" colspan="2" align="center" bordercolor="#999999">&nbsp;</td>
         </tr>
       </table>
     </form>
  </body>
</html>
