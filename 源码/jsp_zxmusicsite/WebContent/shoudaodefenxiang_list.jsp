<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>收到的分享</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

  <body >

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'width="50">来自好友</td>    <td bgcolor='#CCFFFF'width="50">分享的音乐</td>    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	 //new CommDAO().delete(request,"huiyuanzhuce"); 
  String username = (String) request.getSession().getAttribute("username");
    String url = "shoudaodefenxiang_list.jsp?1=1"; 
    String sql =  "select * from fenxiang where haoyouname='"+username+"'";
	
    sql+=" order by id desc";
    System.out.println(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("username") %></td>    <td><%
    String idd=(String) map.get("yinyueid");
    HashMap mqt = new CommDAO().getmap(idd,"yinyuexinxi");
    String str=(String) mqt.get("zhuanjimingcheng");
    out.print(str);
    %></td>
        <td width="60" align="center">
    <a href="yinyuexinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">音乐详情</a>  
    </td>
  
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

