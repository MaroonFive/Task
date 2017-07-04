<%@ page language="java" import="java.util.*,service.*,entity.*" pageEncoding="UTF-8"%>


<html>
  <head>
   
    <title>My JSP 'managetProduct.jsp' starting page</title>

  </head>
  
  <body bgcolor="#CCCCCC">
  <table border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td bgcolor="#666666">商品编号</td>
  <td bgcolor="#666666">商品名称</td>
  <td bgcolor="#666666">商品商标</td>
  <td bgcolor="#666666">商品型号</td>
  <td bgcolor="#666666">商品价格</td>
  <td bgcolor="#666666">修改</td>
  <td bgcolor="#666666">删除</td>
  </tr>
    <%
    request.setCharacterEncoding("GBK");
    	ProductService ps= new ProductService();//实例化ProductService层
    	//将ps.getAllProducts()方法放到list里面
    	List list = ps.getAllProducts();
    	//使用遍历器来便利list里的值
    	Iterator it = list.iterator();
    	//如果遍历器里有下一个
    	while(it.hasNext()){
    	//实例化实体类
    		Product product = (Product)it.next();
    		
    		%>
    		<tr>
    		
    		<td><%=product.getSerialNumber() %></td>
    		<td><%=product.getProductName() %></td>
    		<td><%=product.getBrand() %></td>
    		<td><%=product.getModel() %></td>
    		<td><%=product.getPrice() %></td>
    		<td><a style="color:blue; text-decoration: none;" href="updateProduct.jsp?productId=<%=product.getProductId() %>">修改</a></td>
    		<td><a style="color:blue; text-decoration: none;" href="deleteProduct.jsp?productId=<%=product.getProductId() %>">删除</a></td>
    		</tr>
    		<%
    	}
     %>
     </table>
  </body>
</html>
