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
    <title>音乐信息</title>
  </head>

  <body >
  <p>已有音乐信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>专辑名称</td>
    <td bgcolor='#CCFFFF'>类型</td>
    <td bgcolor='#CCFFFF'>语种</td>
    <td bgcolor='#CCFFFF'>歌手</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>歌曲展示</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>封面</td>
    
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

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
    <td width='90' align='center'><a href='play.jsp?spwj=<%=map.get("gequzhanshi") %>' target='_blank'>点此播放</a></td>
    <td width='90' align='center'><a href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>
    
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

