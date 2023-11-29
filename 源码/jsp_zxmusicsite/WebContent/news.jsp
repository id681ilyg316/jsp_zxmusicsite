<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>音乐网站管理系统</title>


<link href="qtimages/style.css" rel="stylesheet" type="text/css" />


</head>
 <%
  String lbb=request.getParameter("lb");
 String lb=lbb;
 if("wzgg".equals(lbb)){
	 lb="网站公告";
 }
 if("yyzx".equals(lbb)){
	 lb="音乐资讯";
 }
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
%>
<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><span class="float_right"></span>
				<h2><%=lb%></h2>
			</div>
			<div class="right_body">
			  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
                <% 
    String url = "news.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("keyword").trim()+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                <tr>
                  <td width="29" align="center"><%=i %></td>
                  <td width="428"><a href="gg_detail.jsp?id=<%=map.get("id") %>"><%=map.get("biaoti") %></a></td>
                  <td width="74">被点击<%=map.get("dianjilv") %>次</td>
                  <td width="146" align="center"><%=map.get("addtime") %></td>
                </tr>
                <%} %>
              </table>
			  <div align="center"><br />
			    ${page.info }</div>
			
			</div>
			
			
		</div>
		<div class="float_clear"></div>
	</div>
	<div id="content_bottom"></div>
</div>
<%@ include file="qtdown.jsp"%>

</body>
</html>

