<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="service.MessageService"/>
<jsp:directive.page import="entity.Message"/>
<jsp:directive.page import="entity.Revert"/>

<html>
  <head>
    
    <title>My JSP 'revertMessage.jsp' starting page</title>
  </head>
  
  <body background="../image/bookbg.gif">
  <div align="right"><marquee scrolldelay="100" direction="left"><h1>��ӭ��ʹ�� ���Ա�</h1></marquee></div>
  <%
        int messageid = Integer.parseInt(request.getParameter("messageid"));
		MessageService ms = new MessageService();
		Message me = ms.getMessage(messageid);
		
		
   %>
  <table width="729" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="781">���⣺<%=me.getTitle() %></td>
    </tr>
    <tr>
      <td><a style="color:blue; text-decoration: none;" href="messageBoard.jsp">���� </a></td>
    </tr>
    <tr>
      <td><img src="../image/T_left.gif" width="671" height="21"><img src="../image/T_right.gif" width="56" height="21"></td>
    </tr>
    <tr>
      <td>�� <%=me.getTitle() %> </td>
    </tr>
    <tr>
      <td><textarea name="textfield" cols="100" rows="8" value=""><%=me.getContent() %></textarea></td>
    </tr>
    <tr>
      <td><%=me.getSendName() %>д��<%=me.getSendTime() %></td>
    </tr>
    <tr>
      <td><img src="../image/T_bottomleft.gif" width="369" height="17"><img src="../image/T_bottomright.gif" width="358" height="17"></td>
    </tr>
  </table>
  <p><br>
  </p>
  
    <%
						List list=ms.getRevertsByMessageId(messageid);
						Iterator it=list.iterator();
						while(it.hasNext()){
						Revert r=(Revert)it.next();
						%>
<table width="729" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="781">�ظ�����:</td>
    </tr>
					<tr>
      <td><img src="../image/T_left.gif" width="671" height="21"><img src="../image/T_right.gif" width="56" height="21"></td>
    </tr>
    <tr>
      <td><textarea name="textarea" cols="100" rows="8" value=""><%=r.getContent() %></textarea></td>
    </tr>
    
    <tr>
      <td><%=r.getSendName() %>д��<%=r.getSendTime() %></td>
    </tr>
    <tr>
      <td><img src="../image/T_bottomleft.gif" width="369" height="17"><img src="../image/T_bottomright.gif" width="358" height="17"></td>
    </tr>
  </table>	
						<% 
						}
     %>
    
  <p>&nbsp;</p>

  
   <script type="text/javascript">
    function show(){
    if(document.getElementById('1').value==""){
    alert("������������");
    return false;
    }
    if(document.getElementById('2').value==""){
    alert("��������⣡");
    return false;
    }
    if(document.getElementById('3').value==""){
    alert("��������Ҫ���͵����ݣ�");
    return false;
    }
    return true;
    }
    </script>
    <form action="saveRevert.jsp" method="post" onsubmit="return show()">
  <table width="729" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" align="center" background="../image/n07_r1_c3.jpg"><strong>���ٻظ�</strong></td>
    </tr>
    <input type="hidden" id="hidden1" name="hidden1" value="<%=me.getId() %>">
    <tr>
      <td width="97" align="right">������</td>
      <td width="666"><input type="text" id="1" name="name" value=""> 
      * </td>
    </tr>
    <tr>
      <td align="right">���⣺</td>
      <td><input type="text" id="2" name="title" value=""></td>
    </tr>
    <tr>
      <td align="right" valign="top">���ݣ�</td>
      <td><textarea name="content" id="3" cols="80" rows="8" value=""></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="��  ��"></td>
    </tr>
  </table>
  </form>
  <p>&nbsp; </p>
  </body>
</html>
