<%@ page language="java" import="java.util.*,entity.*,service.*"
	pageEncoding="GBK"%>

<html>
	<head>

		<title>无标题文档</title>

		<link href="css/css.css" type="text/css" rel="stylesheet" />

	</head>

	<body>
		<center>
		<form id="form1" name="form1" method="post" action="">
  <table width="802" height="109" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" align="left"><table cellspacing="0" cellpadding="0" width="799" align="center" border="0">
        <tbody>
          <tr>
            <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="799" height="161">
              <param name="movie" value="images/2.swf" />
              <param name="quality" value="high" />
              <embed src="image/2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="799" height="161"></embed>
            </object></td>
          </tr>
        </tbody>
      </table>        </td>
    </tr>
    <tr>
      <td colspan="2" align="left" valign="top"><table cellspacing="0" cellpadding="0" width="799" align="center" border="0">
  <tbody>
    <tr>
      <td><img height="40" src="image/d_r3_c1.jpg" width="60" /><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a 
      href="index.jsp"><img height="40" 
      src="image/d_r3_c5.jpg" width="64" border="0" /></a><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a 
      href="showproductList.jsp?type=1"><img 
      id="image1" height="40" src="image/d_r3_c7.jpg" width="94" border="0" 
      name="image1" /></a><img height="40" src="image/top_red.jpg" width="20" 
      border="0" /><a href="showNewsList.jsp"><img 
      height="40" src="image/d_r3_c8.jpg" width="93" border="0" /></a><img 
      height="40" src="image/top_red.jpg" width="20" border="0" /><a 
      onclick="openChat()" 
      href="mainChat.jsp"><img height="40" 
      src="image/d_r3_c9.jpg" width="95" border="0" /></a><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a 
      href="messageBoard.jsp" 
      target="_blank"><img height="40" src="image/d_r3_c10.jpg" width="93" 
      border="0" /></a><img height="40" src="image/top_red.jpg" width="20" 
      border="0" /><a href="login.html"><img 
      height="40" src="image/d_r3_c13.jpg" width="85" border="0" /></a><img 
      height="40" src="image/top_red.jpg" width="20" border="0" /><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><img height="40" 
      src="image/d_r3_c25.jpg" width="36" /></td>
    </tr>
  </tbody>
</table></td>
    </tr>
    <tr>
						<td colspan="2" valign="top">
							首页&gt; 站内新闻
						</td>
					</tr>
					<tr>
						<td width="297" valign="top">
							<table cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td width="310" align="left">
											<a href="showNewsList.jsp"><img height="25"
													src="image/cg1_r1_c2.jpg" width="175" border="0" />
											</a>
										</td>
									</tr>
									<tr>
										<td>
											<a href="showproductList.jsp"><img height="25"
													src="image/cg1_r2_c2.jpg" width="175" border="0" />
											</a>
										</td>
									</tr>
									<tr>
										<td>
											<a href="shouhoufuwu.jsp"><img height="25"
													src="image/cg1_r4_c2.jpg" width="175" border="0" />
											</a>
										</td>
									</tr>
									<tr>
										<td>
											<a href="guanyuwomen.jsp"><img height="25"
													src="image/cg1_r6_c2.jpg" width="175" border="0" />
											</a>
										</td>
									</tr>
									<tr height="1">
										<td valign="center" align="middle">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											<table cellspacing="0" cellpadding="0" width="297" border="0">
												<tbody>
													<tr>
														<td colspan="2">
															<img height="28" src="image/cg1_r10_c1.jpg" width="188" />
														</td>
													</tr>
													<tr>
														<td width="45">
															<img height="28" src="image/cg5_1.jpg" width="21" />
														</td>
														<td class="d06" width="252">
															业务专线:010-88888888
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<img src="image/tiao.jpg" width="175" height="2" />
														</td>
													</tr>
													<tr>
														<td width="45">
															<img height="28" src="image/cg5_1.jpg" width="21" />
														</td>
														<td class="d06" width="252">
															售后服务:010-66666666
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<img src="image/tiao1.jpg" width="197" height="1" />
														</td>
													</tr>
													<tr>
														<td width="45">
															<img height="28" src="image/cg5_1.jpg" width="21" />
														</td>
														<td class="d06" width="252">
															传&nbsp;&nbsp;&nbsp;&nbsp;真:010-12345678
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<img src="image/tiao1.jpg" width="297" height="1" />
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
						<td width="505" valign="top">
							<table width="504" height="219" border="0" cellpadding="0"
								cellspacing="0">
								<%
									String num = request.getParameter("id");
									int id = 0;
									try {
										id = Integer.parseInt(num);
									} catch (Exception e) {
										id = 1;
									}
									ProductService ps = new ProductService();
									Product p = ps.getProduct(id);
								%>

								<table border="1" cellpadding="0" cellspacing="0" width="420">
									<image src="<%=p.getPicture()%>" />
									<tr>
										<td bgcolor="#999999" width="100">
											产品编号
										</td>
										<td><%=p.getSerialNumber()%></td>
									</tr>
									<tr>
										<td bgcolor="#999999">
											产品名称
										</td>
										<td><%=p.getProductName()%></td>
									</tr>
									<tr>
										<td bgcolor="#999999">
											产品品牌
										</td>
										<td><%=p.getBrand()%></td>
									</tr>
									<tr>
										<td bgcolor="#999999">
											产品型号
										</td>
										<td><%=p.getModel()%></td>
									</tr>
									<tr>
										<td bgcolor="#999999">
											产品价格
										</td>
										<td><%=p.getPrice()%></td>
									</tr>
								</table>
								<img src="image/n10.jpg" width="165" height="72">
								
							

								<tr>
									<td colspan="2" background="image/d_r11_15.jpg">
										&nbsp;
									</td>
								</tr>
							</table>
	</body>
</html>
