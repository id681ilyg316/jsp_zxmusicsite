<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>音乐信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yinyuexinxi");
     %>
  音乐信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>专辑名称：</td><td width='39%'><%=m.get("zhuanjimingcheng")%></td>
<td  rowspan=6 align=center><a href=<%=m.get("fengmian")%> target=_blank><img src=<%=m.get("fengmian")%> width=228 height=215 border=0></a></td></tr><tr>
<td width='11%' height=44>类型：</td><td width='39%'><%=m.get("leixing")%></td>
</tr><tr>
<td width='11%' height=44>语种：</td><td width='39%'><%=m.get("yuzhong")%></td>
</tr><tr>
<td width='11%' height=44>歌手：</td><td width='39%'><%=m.get("geshou")%></td>
</tr><tr>
<td width='11%' height=44>歌曲展示：</td><td width='39%'><a href="play.jsp?spwj=<%=m.get("gequzhanshi")%>">点此播放</a></td>
</tr><tr>


<td width='11%' height=100  >专辑简介：</td><td width='39%' colspan=2 height=100 ><%=m.get("zhuanjijianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


