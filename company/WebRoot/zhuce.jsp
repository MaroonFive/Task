<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
<title>�ޱ����ĵ�</title>
</head>
<script type="text/javascript">
function yanzheng(){
var z1=document.getElementById('z1').value;
var z2=document.getElementById('z2').value;
var z3=document.getElementById('z3').value;

	if(z1==""){
	alert("�������û�����");
	return false;
	}
	if(z2==""){
	alert("���������룡");
	return false;
	}
	if(z2.length<6){
	alert("����������6-12λ��");
	return false;
	}
	if(z3==""){
	alert("������ȷ�����룡");
	return false;
	}
	if(z2!=z3){
	alert("�����ȷ���������һ�£�");
	return false;
	}
	return true;
}
</script>
<body>
<%String name=(String)session.getAttribute("name");
  String lian;
  String yonghu;
    if(name==null||name=="")
    {
     lian="dengyan.jsp";
     
     
     }
     else
     {
     lian="liao.jsp";
     
     }
     %>
<center>
<form id="form1" name="form1" method="post" action="zhuyan.jsp" onsubmit="return yanzheng()">
  <table width="806" height="109" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2"><table cellspacing="0" cellpadding="0" width="836" align="center" border="0">
        <tbody>
          <tr>
            <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="836" height="161">
              <param name="movie" value="image/2.swf" />
              <param name="quality" value="high" />
              <embed src="image/2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="836" height="161"></embed>
            </object></td>
          </tr>
        </tbody>
      </table>
        <table cellspacing="0" cellpadding="0" width="799" align="center" border="0">
          <tbody>
            <tr>
              <td background="Ʒ�칫˾_files/d.jpg" height="3"></td>
            </tr>
          </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" width="799" align="center" border="0">
          <tbody>
            <tr>
              <td><img height="40" src="image/d_r3_c1.jpg" width="60" /><img height="40" 
      src="image/top_red.jpg" width="36" border="0" /><img height="40" 
      src="image/top_red.jpg" width="36" border="0" /><a 
      href="index.jsp"><img height="40" 
      src="image/d_r3_c5.jpg" width="64" border="0" /></a><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a 
      href="showProductList.jsp"><img 
      id="image1" height="40" src="image/d_r3_c7.jpg" width="94" border="0" 
      name="image1" /></a><img height="40" src="image/top_red.jpg" width="20" 
      border="0" /><a href="showNewsList.jsp"><img 
      height="40" src="image/d_r3_c8.jpg" width="94" border="0" /></a><img 
      height="40" src="image/top_red.jpg" width="20" border="0" /><a 
      
      href="<%=lian %>"><img height="40" 
      src="image/d_r3_c9.jpg" width="94" border="0" /></a><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><a 
      href="index.jsp" 
      target="_blank"><img height="40" src="image/d_r3_c10.jpg" width="94" 
      border="0" /></a><img height="40" src="image/top_red.jpg" width="20" 
      border="0" /><a href="index.jsp"><img 
      height="40" src="image/d_r3_c13.jpg" width="94" border="0" /></a><img 
      height="40" src="image/top_red.jpg" width="20" border="0" /><img height="40" 
      src="image/top_red.jpg" width="20" border="0" /><img height="40" 
      src="image/d_r3_c25.jpg" width="36" /></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
    <tr>
      <td colspan="2" valign="top"><!-- TemplateBeginEditable name="EditRegion1" -->��ҳ&gt;ע��<!-- TemplateEndEditable --></td>
    </tr>
    <tr>
      <td width="289" valign="top"><table cellspacing="0" cellpadding="0" width="275" border="0" height="266">
        <tbody>
          <tr>
            <td width="197" ><a 
            href="showNewsList.jsp"><img 
            height="25" src="image/cg1_r1_c2.jpg" width="174" 
            border="0"/></a></td>
          </tr>
          <tr>
            <td ><a 
            href="showproductList.jsp"><img 
            height="25" src="image/cg1_r2_c2.jpg" width="175" 
            border="0" /></a></td>
          </tr>
          <tr>
            <td ><a 
            href="shouhoufuwu.jsp"><img height="25" 
            src="image/cg1_r4_c2.jpg" width="175" border="0" /></a></td>
          </tr>
          <tr>
            <td ><a 
            href="guanyuwomen.jsp"><img height="25" 
            src="image/cg1_r6_c2.jpg" width="175" border="0" /></a></td>
          </tr>
          <tr height="1">
            <td valign="center" align="middle">&nbsp;</td>
          </tr>
          <tr>
            <td><table cellspacing="0" cellpadding="0" width="297" border="0">
                <tbody>
                  <tr>
                    <td colspan="2"><img height="28" 
                  src="image/cg1_r10_c1.jpg" width="188" /></td>
                  </tr>
                  <tr>
                    <td width="33"><img height="28" src="image/cg5_1.jpg" 
                  width="21" /></td>
                    <td class="d06" width="158"><font size="2">ҵ��ר��:010-88888888</font></td>
                  </tr>
                  <tr>
                    <td width="33" colspan="2"><img 
                src="image/tiao.jpg" width="175" height="2" /></td>
                  </tr>
                  <tr>
                    <td width="33"><img height="28" src="image/cg5_1.jpg" 
                  width="21" /></td>
                    <td class="d06" width="158"><font size="2">�ۺ����:010-66666666</font></td>
                  </tr>
                  <tr>
                    <td width="33" colspan="2"><img 
                src="image/tiao1.jpg" width="297" height="1" /></td>
                  </tr>
                  <tr>
                    <td width="33"><img height="28" src="image/cg5_1.jpg" 
                  width="21" /></td>
                    <td class="d06" 
                width="158"><font size="2">��&nbsp;&nbsp;&nbsp;&nbsp;��:010-12345678</font></td>
                  </tr>
                  <tr>
                    <td width="33" colspan="2"><img 
                src="image/tiao1.jpg" width="297" height="1" /></td>
                  </tr>
                </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
      <td width="553" valign="top" bgcolor="#CC3333"><!-- TemplateBeginEditable name="EditRegion2" -->
      <center>
        <table width="324" height="155" border="1" cellpadding="0" cellspacing="0" >
          <tr><td align="center" colspan="2">�û�ע��</td></tr>
          <tr>
              <td height="27" align="center" bgcolor="#CCCCCC">�û�����</td>
            <td><input type="text"  value="" id="z1"  name="z1"></td>
          </tr>
            <tr>
              <td height="29" align="center" bgcolor="#CCCCCC">�ܡ��룺</td>
              <td><input type="password"  value="" id="z2" name="z2">              </td>
            </tr>
            <tr>
              <td height="28" align="center" bgcolor="#CCCCCC">ȷ������:</td>
              <td><input type="password"  value="" id="z3" name="z3"></td>
            </tr>
            <tr background=" align="center"">
              <td height="36" colspan="2" align="center"><input type="submit"  value="�ύ"></td>
            </tr>
        </table>
      </center>
      
      <!-- TemplateEndEditable --></td>
    </tr>
    <tr>
      <td colspan="2" background="image/d_r11_15.jpg">&nbsp;</td>
    </tr>
  </table>
</form>
</center>
</body>
</html>
