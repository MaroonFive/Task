<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.GetnewService"/>
<jsp:directive.page import="entity.News"/>
<jsp:directive.page import="service.GetAllnewservice"/>

<html>
  <head>
    
    <title>My JSP 'shanchu.jsp' starting page</title>

  </head>
  
  <body bgcolor="#cccccc">
   <form action="">
   <table align="center"  border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <td align="center" width="200" bgcolor="#666666">新闻标题</td>
    <td align="center" width="200" bgcolor="#666666">发布时间</td>
    <td align="center" width="200" bgcolor="#666666">删除</td>
   <%
    String num = request.getParameter("page");
        int pageNum=0;
        if(num==null){
           pageNum=1;
        }else{
           try{ 
             pageNum = Integer.parseInt(num);
           }catch(Exception ex){
             ex.printStackTrace();
             pageNum = 1;
           }
        }
        GetAllnewservice  gs=new GetAllnewservice();
        int allRows= gs.getCount();
        int allPage= (allRows+5-1)/5;
        pageNum=pageNum<1?1:pageNum;
        pageNum=pageNum>allPage?allPage:pageNum;
        List list = gs.getPageList(pageNum);
        Iterator it = list.iterator();
        while(it.hasNext())
        {
        News news=(News)it.next();
        %>
        <tr>
        <td align="center" width="200"><%=news.getTitle() %> </td>
        <td align="center" width="200"><%=news.getWriterDate() %></td>
        <td align="center" width="200"><a style="color:blue; text-decoration: none;" href="shanchu1.jsp?newsID=<%=news.getNewsId() %>">删除</a></td>
        </tr>
        
        <%
        }
    
     %>  
    <tr>
      <td colspan="4" align="center">
        <a style="color:blue; text-decoration: none;" href="shanchu.jsp?page=<%=(pageNum-1) %>">上一页</a>
        <a style="color:blue; text-decoration: none;" href="shanchu.jsp?page=<%=(pageNum+1) %>">下一页</a>
      </td></tr>
    </table>
   </form>
  </body>
</html>
