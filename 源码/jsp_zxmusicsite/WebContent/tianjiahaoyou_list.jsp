<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ա�б�</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


<% 
if(request.getParameter("huiyuanusername")!=null){
	HashMap ext = new HashMap();
	ext.put("username", (String) request.getSession().getAttribute("username"));
	ext.put("haoyouname", (String) request.getParameter("huiyuanusername"));
	new CommDAO().insert(request,response,"haoyou",ext,true,false,""); 
}
%>

  <body >
  <p>���л�Ա�б���</p>
  <form name="form1" id="form1" action="">
   ����:  ��Ա�ţ�<input name="huiyuanhao" type="text" id="huiyuanhao" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> 
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'width="50">��Ա��</td>
    <td bgcolor='#CCFFFF'width="50">����</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>
    <td bgcolor='#CCFFFF' width='150' align='center'>��Ƭ</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	

  	 new CommDAO().delete(request,"huiyuanzhuce"); 
    String url = "huiyuanzhuce_list.jsp?1=1"; 
    String sql =  "select * from huiyuanzhuce where 1=1";
	
if(request.getParameter("huiyuanhao")=="" ||request.getParameter("huiyuanhao")==null ){}else{sql=sql+" and huiyuanhao like '%"+request.getParameter("huiyuanhao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("shouji")=="" ||request.getParameter("shouji")==null ){}else{sql=sql+" and shouji like '%"+request.getParameter("shouji")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huiyuanhao") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    <% 
    String sql2=" select * from haoyou where username='"
    +((String) request.getSession().getAttribute("username"))+"' and haoyouname='"
    +map.get("huiyuanhao")+"'";
    List<HashMap> mapss = new CommDAO().select(sql2);
    
    %>
    <td width="60" align="center">
    <%if(mapss==null||mapss.size()<=0){%>
    <a href="tianjiahaoyou_list.jsp?f=f&huiyuanusername=<%=map.get("huiyuanhao") %>" onClick="return confirm('���Ҫ���ӣ�')">���Ӻ���</a>  
   <% }
   %>
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

