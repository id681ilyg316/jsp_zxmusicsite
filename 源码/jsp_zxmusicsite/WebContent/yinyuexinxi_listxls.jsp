<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yinyuexinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>

  <body >
  <p>����������Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ר������</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>����չʾ</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>����</td>
    
    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "yinyuexinxi_list.jsp?1=1"; 
    String sql =  "select * from yinyuexinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhuanjimingcheng") %></td>
    <td><%=map.get("leixing") %></td>
    <td><%=map.get("yuzhong") %></td>
    <td><%=map.get("geshou") %></td>
    <td width='90' align='center'><a href='play.jsp?spwj=<%=map.get("gequzhanshi") %>' target='_blank'>��˲���</a></td>
    <td width='90' align='center'><a href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>
    
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

