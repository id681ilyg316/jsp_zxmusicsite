<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����¼</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���й����¼�б���</p>
  <form name="form1" id="form1" action="">
   ����:  ר�����ƣ�<input name="zhuanjimingcheng" type="text" id="zhuanjimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���ͣ�<input name="leixing" type="text" id="leixing" style='border:solid 1px #000000; color:#666666' size="12" />  ���֣�<input name="yuzhong" type="text" id="yuzhong" style='border:solid 1px #000000; color:#666666' size="12" />  ���֣�<input name="geshou" type="text" id="geshou" style='border:solid 1px #000000; color:#666666' size="12" />  ��Ա�ţ�<input name="huiyuanhao" type="text" id="huiyuanhao" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ר������</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>��Ա��</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>�ֻ�</td>
    <td bgcolor='#CCFFFF'>��ַ</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>�ܽ��</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ�֧��</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	double zongjinez=0;


  	 new CommDAO().delete(request,"goumaijilu"); 
    String url = "goumaijilu_list2.jsp?1=1"; 
    String sql =  "select * from goumaijilu where huiyuanhao='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("zhuanjimingcheng")=="" ||request.getParameter("zhuanjimingcheng")==null ){}else{sql=sql+" and zhuanjimingcheng like '%"+request.getParameter("zhuanjimingcheng")+"%'";}
if(request.getParameter("leixing")=="" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+request.getParameter("leixing")+"%'";}
if(request.getParameter("yuzhong")=="" ||request.getParameter("yuzhong")==null ){}else{sql=sql+" and yuzhong like '%"+request.getParameter("yuzhong")+"%'";}
if(request.getParameter("geshou")=="" ||request.getParameter("geshou")==null ){}else{sql=sql+" and geshou like '%"+request.getParameter("geshou")+"%'";}
if(request.getParameter("huiyuanhao")=="" ||request.getParameter("huiyuanhao")==null ){}else{sql=sql+" and huiyuanhao like '%"+request.getParameter("huiyuanhao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	zongjinez=zongjinez+Float.valueOf((String)map.get("zongjine")).floatValue();



     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhuanjimingcheng") %></td>
 <td><%=map.get("leixing") %></td>
 <td><%=map.get("yuzhong") %></td>
 <td><%=map.get("geshou") %></td>
 <td><%=map.get("huiyuanhao") %></td>
 <td><%=map.get("xingming") %></td>
 <td><%=map.get("shouji") %></td>
 <td><%=map.get("dizhi") %></td>
 <td><%=map.get("goumaishuliang") %></td>
 <td><%=map.get("zongjine") %></td>
 
 <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("��")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=goumaijilu"><font color='red'>֧��</font></a> <%}%> </td>
    <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="goumaijilu_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="goumaijilu_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="goumaijilu_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
�����ܽ��:<%=zongjinez%>��  
${page.info }


  </body>
</html>

