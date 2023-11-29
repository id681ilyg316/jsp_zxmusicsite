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
  String id=request.getParameter("id");
   new CommDAO().commOper("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
%>
<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><span class="float_right"></span>
				<h2>内容详细</h2>
			</div>
			<div class="right_body">
			  
			  <%
    HashMap m = new CommDAO().getmap(id,"xinwentongzhi");
     %>
                        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                          <tr>
                            <td height="46" align="center" class="artli_img_title"><strong><%=m.get("biaoti") %> (被访问<%=m.get("dianjilv") %>次) </strong></td>
                          </tr>
                          <tr>
                            <td height="110" align="left"><%=m.get("neirong") %></td>
                          </tr>
                          <tr>
                            <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" ></td>
                          </tr>
                        </table>
						
						</div>
			
			</div>
			
			
		</div>
		<div class="float_clear"></div>
	</div>
	<div id="content_bottom"></div>
</div>
<%@ include file="qtdown.jsp"%>

</body>
</html>
