<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:directive.page import="entity.User"/>
<jsp:directive.page import="service.GetnewService"/>
<jsp:directive.page import="entity.News"/>

<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
    <style type="text/css">

#Layer1 {
	position:absolute;
	width:822px;
	height:162px;
	z-index:1;
	left: 107px;
	top: 0px;
}
#Layer2 {
	position:absolute;
	width:908px;
	height:45px;
	z-index:1;
	left: 85px;
	top: 165px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:217px;
	z-index:2;
	left: 792px;
	top: 212px;
	background-color: #E4E2E4;
}
.STYLE2 {color: #FF0000}
#Layer4 {
	position:absolute;
	width:43px;
	height:17px;
	z-index:3;
	left: 826px;
	top: 393px;
}
#Layer5 {
	position:absolute;
	width:46px;
	height:20px;
	z-index:3;
	left: 802px;
	top: 386px;
}
#Layer6 {
	position:absolute;
	width:803px;
	height:932px;
	z-index:3;
	left: 114px;
	top: 205px;
}
#Layer7 {
	position:absolute;
	width:194px;
	height:43px;
	z-index:5;
	left: 738px;
	top: 404px;
}
.STYLE3 {color: #000000}
-->
    </style>
</head>
  
  <body>
   <%String name=(String)session.getAttribute("name");
  String lian;
  String yonghu;
    if(name==null||name=="")
    {
     lian="dengyan.jsp";
     yonghu="未登陆";
     
     }
     else
     {
     lian="jia.html";
     yonghu=name+"已登陆"+"<a href='tuiyan.jsp'>退出</a>";
     List list=(List)application.getAttribute("yong");
     System.out.println(list);
     if(list==null){
     List  listyong =new ArrayList();
      listyong.add(name);
     application.setAttribute("yong",listyong);
     }
     else
     {
     list.add(name);
     }
     
     %>  <%
     }
     %>
  <div id="Layer6">
  <table cellspacing="0" cellpadding="0" width="799" align="center" border="0">
  <tbody>
    <tr>
      <td background="images/d.jpg" height="3"></td>
    </tr>
  </tbody>
</table>
<table cellspacing="0" cellpadding="0" width="799" align="center" border="0">
  <tbody>
    <tr>
      <td valign="top"><table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
          <tr>
            <td width="352"><table cellspacing="0" cellpadding="0" width="100%" border="0">
              <tbody>
                <tr>
                  <td background="image/d02.jpg"><img height="35" 
                  src="image/d_r7_c1.jpg" width="101" /></td>
                  <td align="right" background="image/d02.jpg"><img height="35" 
                  src="image/d_r7_c14.jpg" width="94" /></td>
                </tr>
              <% GetnewService  gs=new GetnewService();
           List list=gs.getnews();
           Iterator  it=list.iterator();
           while(it.hasNext())
           {
           News news=(News)it.next();
         
           %>
           <tr>
                  <td colspan="2" height="26">&nbsp;<a style="color:blue; text-decoration: none;" class="dong06" 
                  href="detailNews.jsp?newsID=<%=news.getNewsId() %>"><%=news.getTitle() %>&nbsp;&nbsp;&nbsp;<font 
                  color="#ff0000"><%=news.getWriterDate().substring(6,10) %>-<%=news.getWriterDate().substring(0,6) %></font></a></td>
                </tr>
                <tr>
                  <td colspan="2"><img height="1" src="images/d03.jpg" 
                width="352" /></td>
                </tr>
           <% 
           }
              
               %>
                
                <tr>
                  <td align="right" colspan="2"><a 
                  href="http://192.168.1.170:8089/company/index.jsp#"><img 
                  height="33" src="image/d_r11_c15.jpg" width="51" 
                border="0" /></a></td>
                </tr>
              </tbody>
            </table></td>
            <td valign="top" align="right"><table cellspacing="0" cellpadding="0" width="268" border="0">
              <tbody>
                <tr>
                  <td><a 
                  href="showproductList.jsp"><img 
                  height="63" src="image/d_r11_5_r1_c1.jpg" width="268" 
                  border="0" /></a></td>
                </tr>
                <tr>
                  <td><a 
                  href="showproductList.jsp"><img 
                  height="59" src="image/d_r11_5_r3_c1.jpg" width="268" 
                  border="0" /></a></td>
                </tr>
                <tr>
                  <td><a 
                  href="showproductList.jsp"><img 
                  height="61" src="image/d_r11_5_r4_c1.jpg" width="268" 
                  border="0" /></a></td>
                </tr>
                <tr>
                  <td><a 
                  href="showproductList.jsp"><img 
                  height="64" src="image/d_r11_5_r5_c1.jpg" width="268" 
                  border="0" /></a></td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table>
          <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
              <tr>
                <td background="image/d_r11_8.jpg"><img height="27" 
            src="image/d_r13_c1.jpg" width="160" /></td>
                <td align="right" background="image/d_r11_8.jpg"><a 
            href="http://192.168.1.170:8089/company/index.jsp#"><img height="27" 
            src="image/d_r13_c21.jpg" width="66" 
      border="0" /></a></td>
              </tr>
            </tbody>
          </table>
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
              <tr>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c1.jpg" width="143" 
            border="0" /></a></td>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c8.jpg" width="143" 
            border="0" /></a></td>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c16.jpg" width="143" 
            border="0" /></a></td>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c22.jpg" width="143" 
            border="0" /></a></td>
              </tr>
              <tr>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c2.jpg" width="143" 
            border="0" /></a></td>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c81.jpg" width="143" 
            border="0" /></a></td>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c116.jpg" width="143" 
            border="0" /></a></td>
                <td align="middle" width="25%"><a 
            href="showproductList.jsp"><img 
            height="112" src="image/d_r11_10_r1_c221.jpg" width="143" 
            border="0" /></a></td>
              </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
              <tr>
                <td width="25%" background="image/d_r11_11_r1_c15.jpg"><img 

            height="27" src="image/d_r11_11_r1_c1.jpg" width="185" /></td>
                <td width="25%" background="image/d_r11_11_r1_c15.jpg">&nbsp;</td>
                <td width="25%" background="image/d_r11_11_r1_c15.jpg"><img 
            height="27" src="image/d_r11_11_r1_c21.jpg" width="160" /></td>
                <td align="right" width="25%" 
            background="image/d_r11_11_r1_c15.jpg"><a 
            href="http://192.168.1.170:8089/company/index.jsp#"><img height="27" 
            src="image/d_r11_11_r1_c30.jpg" width="63" border="0" /></a></td>
              </tr>
              <tr>
                <td width="50%" bgcolor="#fcfcfc" colspan="2"><table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                      <tr>
                        <td width="28" height="29"><img height="32" 
                  src="image/d_r11_12_r1_c1.jpg" width="28" /></td>
                        <td class="d06" style="FONT-WEIGHT: bold" align="middle" 
                  width="100">&nbsp;业务专线：</td>
                        <td class="d06" style="FONT-WEIGHT: bold">010-88888888</td>
                      </tr>
                      <tr>
                        <td width="28" height="29"><img height="32" 
                  src="image/d_r11_12_r1_c1.jpg" width="28" /></td>
                        <td class="d06" align="middle" width="100">&nbsp;<span 
                  style="FONT-WEIGHT: bold">售后服务：</span></td>
                        <td class="d06" style="FONT-WEIGHT: bold">010-66666666</td>
                      </tr>
                      <tr>
                        <td width="28" height="29"><img height="32" 
                  src="image/d_r11_12_r1_c1.jpg" width="28" /></td>
                        <td class="bold" align="middle" width="100">&nbsp;<span class="d06" 
                  style="FONT-WEIGHT: bold">传&nbsp;&nbsp;&nbsp;&nbsp;真：</span></td>
                        <td class="d06" 
              style="FONT-WEIGHT: bold">010-88888888</td>
                      </tr>
                    </tbody>
                </table></td>
                <td width="50%" bgcolor="#fcfcfc" colspan="3"><table cellspacing="0" cellpadding="0" width="287" align="center" 
              border="0">
                  <tbody>
                      <tr>
                        <td align="middle" width="97" height="47"><img height="32" 
                  src="image/f1.gif" width="90" /></td>
                        <td align="middle" width="97" height="47"><img height="32" 
                  src="image/f2.gif" width="90" /></td>
                        <td align="middle" width="97" height="47"><img height="32" 
                  src="image/f3.gif" width="90" /></td>
                      </tr>
                      <tr>
                        <td align="middle" width="97" height="47"><img height="33" 
                  src="image/d_r11_13_r6_c13.jpg" width="90" /></td>
                        <td align="middle" width="97" height="47"><img height="33" 
                  src="image/d_r11_13_r1_c1.jpg" width="90" /></td>
                        <td align="middle" width="97" height="47"><img height="33" 
                  src="image/d_r11_13_r1_c7.jpg" 
            width="88" /></td>
                      </tr>
                  </tbody>
                </table></td>
              </tr>
            </tbody>
        </table></td>
      <td valign="top" width="175" bgcolor="#fcfcfc"><table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
          <tr>
            <td height="251" valign="top"><a 
            href="image/cg2.jpg"></a></td>
          </tr>
          <tr>
            <td height="590"><!-- 指向链接图片url -->
                  <div id="demo" 
            style="BACKGROUND: #214984; OVERFLOW: hidden; WIDTH: 180px; COLOR: #ffffff; HEIGHT: 600px">
                    <div id="demo1">
                      <!-- 定义图片 -->
                      <img height="112" 
            src="image/d_r11_10_r1_c1.jpg" width="179" align="middle" 
            border="0" /> <img height="112" src="image/d_r11_10_r1_c8.jpg" 
            width="179" align="middle" border="0" /> <img height="112" 
            src="image/d_r11_10_r1_c16.jpg" width="179" align="middle" 
            border="0" /> <img height="112" src="image/d_r11_10_r1_c22.jpg" 
            width="179" align="middle" border="0" /> <img height="112" 
            src="image/d_r11_10_r1_c2.jpg" width="180" align="middle" 
            border="0" /> <img height="112" src="image/d_r11_10_r1_c81.jpg" 
            width="180" align="middle" border="0" /> <img height="112" 
            src="image/d_r11_10_r1_c116.jpg" width="181" align="middle" 
            border="0" /> <img height="110" src="image/d_r11_10_r1_c221.jpg" 
            width="181" align="middle" border="0" /> </div>
                    <div id="demo2"></div>
                  </div>
              <script>
var speed=30;
demo2.innerHTML=demo1.innerHTML;
demo.scrollTop=demo.scrollHeight;
function Marquee(){
if(demo1.offsetTop-demo.scrollTop>=0)
demo.scrollTop+=demo2.offsetHeight;
else{
demo.scrollTop--;
}
}
var MyMar=setInterval(Marquee,speed);
demo.onmouseover=function() {clearInterval(MyMar)}
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed);}
  </script>
            </td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<style type="text/css">
BODY {
	MARGIN: 0px
}
</style>
<table cellspacing="0" cellpadding="0" width="800" align="center" border="0">
  <tbody>
    <tr>
      <td align="middle" width="800" background="image/d_r11_15.jpg" 
  height="29"></td>
    </tr>
  </tbody>
</table>
  
  
  </div>
 
  <div id="Layer1">
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="820" height="167">
      <param name="movie" value="image/2.swf">
      <param name="quality" value="high">
      <embed src="image/2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="820" height="167"></embed>
    </object>
  </div>
  <div id="Layer2">
    <table cellspacing="0" cellpadding="0" width="858" align="center" border="0">
  <tbody>
    <tr>
      <td width="864"><img height="40" src="image/d_r3_c1.jpg" width="60" /><img height="40" 
      src="image/d_r3_c5.jpg" width="64" border="0" /><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a href="showproductList.jsp"><img 
      id="image1" height="40" src="image/d_r3_c7.jpg" width="94" border="0" 
      name="image1" /></a><img height="40" src="image/top_red.jpg" width="20" 
      border="0" /><a href="showNewsList.jsp"><img 
      height="40" src="image/d_r3_c8.jpg" width="93" border="0" /></a><img 
      height="40" src="image/top_red.jpg" width="20" border="0" /><a href="<%=lian %>"><img height="40" 
      src="image/d_r3_c9.jpg" width="95" border="0" /></a><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a href="jsps/messageBoard.jsp"><img height="40" src="image/d_r3_c10.jpg" width="93" 
      border="0" /></a><img height="40" src="image/top_red.jpg" width="20" 
      border="0" /><a href="admin/login.jsp"><img 
      height="40" src="image/d_r3_c13.jpg" width="85" border="0" /></a><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a href="guanyuwomen.jsp"><img src="image/d_r3_c12.jpg" width="94" height="40"border="0"></a><img 
      height="40" src="image/top_red.jpg" width="20" border="0" /></td>
    </tr>
  </tbody>
</table>
  </div>
  <br>
  <div id="Layer3" style="top: 208px; height: 223px; left: 736px; width: 178px; z-index:4 ">
    <pre class="STYLE2"> 
          <span class="STYLE3">会员登陆</span><br><br><%=yonghu%><form action="dengyan.jsp" >
<span class="STYLE3">用户名：<input name="t1" type="text" value="" size="15"><br>
密　码：</span><input name="t2" type="password" value="" size="15"><br>
<input type="submit" name="s1"  value="登陆">      <a style="color:blue; text-decoration: none;" href="zhuce.jsp" > *注册*</a> 
	</form></pre>
  </div>
  

  <div id="Layer7"><img src="image/d_r11_6.jpg" width="188" height="48"></div>
  </body>
</html>
