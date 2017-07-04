<%@ page language="java" import="java.util.*,service.*,entity.*" pageEncoding="GBK"%>
<jsp:directive.page import="dao.MessageDAO"/>
<html>
  <head>
    
    <title>留言本</title>
    <style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
-->
    </style>
</head>
  <body background="../image/bookbg.gif">
  <form name="form1" method="post" action="">
    <table width="613" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="4"><img src="../image/welcome.jpg" width="750" height="135"></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td colspan="2" align="center"><span class="STYLE1"><marquee scrolldelay="100" direction="left"><h1>欢迎您使用 留言本</h1></marquee></span></td>
      </tr>
      <tr>
        <td colspan="4" align="center"><table width="744" border="1" cellpadding="0" cellspacing="0">
          <tr>
            <td background="../image/title.gif" colspan="4"><a style="color:blue; text-decoration: none;" href="newMessage.jsp"><img border="0" src="../image/post.gif" width="100" height="29"></a></td>
          </tr>
          <tr>
            <td colspan="4"><img src="../image/T_left.gif" width="140" height="21"><img src="../image/T_right.gif" width="56" height="21"></td>
          </tr>
          <tr>
            <td align="center">回复</td>
            <td align="center">标题</td>
            <td align="center">作者</td>
            <td align="center">时间</td>
          </tr>
          <%
          String pageNum=request.getParameter("typenum");
          int num=0;
          if(pageNum==null){
          	num=1;
          }else{
	          try{
	          		num=Integer.parseInt(pageNum);
	          }catch(Exception ex){
		          ex.printStackTrace();
		          num=1;
	          }
	      }
          
          MessageService md = new MessageService();
          int zongtiaoshu=md.getCount();
          int zongyeshu=(zongtiaoshu+5-1)/5;
          num=num<1?1:num;
          num=num>zongyeshu?zongyeshu:num;
          List list=md.nextPage(num);
          Iterator it=list.iterator();
		  //List list=md.getMessages();
		  //for (int i = 0; i < list.size(); i++) {
		  //Message me = (Message)list.get(i);
		  while(it.hasNext()){
		  Message me=(Message)it.next();
           %>
          <tr>
            <td align="center"><%=me.getRevertNum() %></td>
            <td align="center"><a style="color:blue; text-decoration: none;" href="revertMessage.jsp?messageid=<%=me.getId() %>"><%=me.getTitle() %></a></td>
            <td align="center"><%=me.getSendName() %></td>
            <td align="center"><%=me.getSendTime() %></td>
          </tr>
          
          <%
          }
           %>
           <tr><td colspan="4" align="right">
           <a style="color:blue; text-decoration: none;" href="messageBoard.jsp?typenum=<%=num<=1?1:num-1 %>">上一页</a> 
           <a style="color:blue; text-decoration: none;" href="messageBoard.jsp?typenum=<%=(num+1) %>">下一页</a> 
           </td></tr>
        </table></td>
      </tr>
    </table>
  </form>
  </body>
</html>
