
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');parent.location=parent.location;</script>");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>分享</title>

<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>


<% 
String id=request.getParameter("id");
if(request.getParameter("huiyuanusername")!=null){
	HashMap ext = new HashMap();
	ext.put("username", (String) request.getSession().getAttribute("username"));
	ext.put("haoyouname", (String) request.getParameter("huiyuanusername"));
	ext.put("yinyueid", (String) request.getParameter("id"));
	new CommDAO().insert(request,response,"fenxiang",ext,true,false,""); 
}
%>


<body>

   <script language="javascript">
   function check()
{
	   return true;
}

   </script>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'width="50">会员号</td>
    <td bgcolor='#CCFFFF'width="50">姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF' width='150' align='center'>照片</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	

  	 //new CommDAO().delete(request,"huiyuanzhuce"); 
    String url = "wodehaoyou_list.jsp?1=1"; 
    String sql =  "select * from huiyuanzhuce where 1=1";
	
if(request.getParameter("huiyuanhao")=="" ||request.getParameter("huiyuanhao")==null ){}else{sql=sql+" and huiyuanhao like '%"+request.getParameter("huiyuanhao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	

     %>
     <% 
    String sql2=" select * from haoyou where username='"
    +((String) request.getSession().getAttribute("username"))+"' and haoyouname='"
    +map.get("huiyuanhao")+"'";
    List<HashMap> mapss = new CommDAO().select(sql2);
    if(mapss!=null&&mapss.size()>0){
    %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huiyuanhao") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    
  <td width="60" align="center"><a href="hsghaoyou.jsp?f=f&id=<%=id%>&huiyuanusername=<%=map.get("huiyuanhao") %>" onClick="return confirm('真的要分享给该好友？')">分享</a></td>
  </tr>
  	<%
  }}
   %>
</table>
</body>
</html>
