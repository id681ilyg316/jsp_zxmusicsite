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

<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><a href="dongtaiadd.jsp"><span class="float_right"><strong>发布动态</strong></span></a>
				<h2>我的动态</h2>
		  </div>
		  <div class="right_body">
		    <% 
    String url = "dongtailist.jsp?1=1";
	String username= (String)request.getSession().getAttribute("username");
    String sql =  "select * from dongtai where username='"+username+"'  order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,4,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
            <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#7FB7C6" class="tb">
              <!--DWLayoutTable-->
              <tr>
                <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF">
                <img width='70'height='70' src="img/<%=map.get("xinqing") %>.gif" border="0" /> </td>
                <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 发布于:<%=map.get("addtime") %> &nbsp;</td>
              </tr>
              <tr>
                <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=map.get("content") %></td>
              </tr>
              <tr>
                <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;标题：<%=map.get("title") %> &nbsp; &nbsp;</td>
              </tr>
              <tr>
                <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;发布人：<%=map.get("username") %></td>
              </tr>
            </table>
            <%} %>
${page.info } </div>
			
	  </div>
			
			
		</div>
		<div class="float_clear"></div>
	</div>
	<div id="content_bottom"></div>
</div>
<%@ include file="qtdown.jsp"%>

</body>
</html>

