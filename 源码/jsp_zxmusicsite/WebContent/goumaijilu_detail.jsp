<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����¼��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"goumaijilu");
     %>
  �����¼��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>ר�����ƣ�</td><td width='39%'><%=m.get("zhuanjimingcheng")%></td><td width='11%'>���ͣ�</td><td width='39%'><%=m.get("leixing")%></td></tr><tr><td width='11%'>���֣�</td><td width='39%'><%=m.get("yuzhong")%></td><td width='11%'>���֣�</td><td width='39%'><%=m.get("geshou")%></td></tr><tr><td width='11%'>��Ա�ţ�</td><td width='39%'><%=m.get("huiyuanhao")%></td></tr><tr><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td><td width='11%'>�ֻ���</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%'>��ַ��</td><td width='39%'><%=m.get("dizhi")%></td><td width='11%'>����������</td><td width='39%'><%=m.get("goumaishuliang")%></td></tr><tr><td width='11%'>�ܽ�</td><td width='39%'><%=m.get("zongjine")%></td><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


