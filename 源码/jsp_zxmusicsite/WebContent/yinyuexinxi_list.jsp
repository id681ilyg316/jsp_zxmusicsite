<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����������Ϣ�б���</p>
  <form name="form1" id="form1" action="">
   ����:  ר�����ƣ�<input name="zhuanjimingcheng" type="text" id="zhuanjimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���ͣ�<%=Info.getselect("leixing","yinyueleixing","leixing"," 1=1 ")%>  ���֣�<%=Info.getselect("yuzhong","yinyueyuzhong","yuzhong"," 1=1 ")%>  ���֣�<input name="geshou" type="text" id="geshou" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yinyuexinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ר������</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>����չʾ</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>����</td>
    
    
	<td width="90" align="center" bgcolor="#CCFFFF">���۹���</td>
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yinyuexinxi"); 
    String url = "yinyuexinxi_list.jsp?1=1"; 
    String sql =  "select * from yinyuexinxi where 1=1";
	
if(request.getParameter("zhuanjimingcheng")=="" ||request.getParameter("zhuanjimingcheng")==null ){}else{sql=sql+" and zhuanjimingcheng like '%"+request.getParameter("zhuanjimingcheng")+"%'";}
if(request.getParameter("leixing")=="" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+request.getParameter("leixing")+"%'";}
if(request.getParameter("yuzhong")=="" ||request.getParameter("yuzhong")==null ){}else{sql=sql+" and yuzhong like '%"+request.getParameter("yuzhong")+"%'";}
if(request.getParameter("geshou")=="" ||request.getParameter("geshou")==null ){}else{sql=sql+" and geshou like '%"+request.getParameter("geshou")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhuanjimingcheng") %></td>
    <td><%=map.get("leixing") %></td>
    <td><%=map.get("yuzhong") %></td>
    <td><%=map.get("geshou") %></td>
    <td width='90' align='center'><a href='play.jsp?spwj=<%=map.get("gequzhanshi") %>' target='_blank'>��˲���</a></td>
    <td width='90' align='center'><a href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>
    
    
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=yinyuexinxi">���۹���</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yinyuexinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="yinyuexinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="yinyuexinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

