<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Աע����ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"huiyuanzhuce");
     %>
  ��Աע����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>��Ա�ţ�</td><td width='39%'><%=m.get("huiyuanhao")%></td><td  rowspan=7 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>���룺</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%' height=44>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>�ֻ���</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%' height=44>���֤��</td><td width='39%'><%=m.get("shenfenzheng")%></td></tr><tr><td width='11%' height=44>��ַ��</td><td width='39%'><%=m.get("dizhi")%></td></tr><tr><td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


