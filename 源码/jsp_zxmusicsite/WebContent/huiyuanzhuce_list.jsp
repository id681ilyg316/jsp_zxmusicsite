<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Աע��</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���л�Աע���б���</p>
  <form name="form1" id="form1" action="">
   ����:  ��Ա�ţ�<input name="huiyuanhao" type="text" id="huiyuanhao" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  �ֻ���<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" />  ����֤��<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='huiyuanzhuce_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��Ա��</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>
    <td bgcolor='#CCFFFF'>�ֻ�</td>
    <td bgcolor='#CCFFFF'>����֤</td>
    <td bgcolor='#CCFFFF'>��ַ</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    
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
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <td><%=map.get("dizhi") %></td>
    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    
    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=huiyuanzhuce" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="huiyuanzhuce_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="huiyuanzhuce_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="huiyuanzhuce_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

