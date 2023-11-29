<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��������</title>
    <LINK href="qtimages/css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <p>�������������б���</p>
  <form name="form1" id="form1" action="youqinglianjie_list.jsp">
   ����:��վ����:
     <input name="wangzhanmingcheng" type="text" id="wangzhanmingcheng" />
 
  ��ַ:
  <input name="wangzhi" type="text" id="wangzhi" />
  <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="7%" bgcolor="A4B6D7">���</td>
    <td width="32%" bgcolor='#A4B6D7'>��վ����</td>
    <td width="30%" bgcolor='#A4B6D7'>��ַ</td>
    <td width="21%" bgcolor="A4B6D7">����ʱ��</td>
    
    <td width="10%" bgcolor="A4B6D7">����</td>
  </tr>
 <% 
  new CommDAO().delete(request,"youqinglianjie"); 
    String url = "youqinglianjie_list.jsp?1=1"; 
    String sql =  "select * from youqinglianjie where 1=1";
	if(request.getParameter("wangzhanmingcheng")=="" ||request.getParameter("wangzhanmingcheng")==null ){}else{sql=sql+" and wangzhanmingcheng like '%"+request.getParameter("wangzhanmingcheng").trim()+"%'";}
	if(request.getParameter("wangzhi")=="" ||request.getParameter("wangzhi")==null ){}else{sql=sql+" and wangzhi like '%"+request.getParameter("wangzhi").trim()+"%'";}
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td><%=i %></td>
    <td><%=map.get("wangzhanmingcheng") %></td><td><%=map.get("wangzhi") %></td>
    <td><%=map.get("addtime") %></td>
    <td><a href="youqinglianjie_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="youqinglianjie_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:pointer" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

