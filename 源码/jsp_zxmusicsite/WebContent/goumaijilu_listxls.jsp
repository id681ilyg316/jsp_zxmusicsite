<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=goumaijilu.xls");
%>
<html>
  <head>
    <title>购买记录</title>
  </head>

  <body >
  <p>已有购买记录列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>专辑名称</td>    <td bgcolor='#CCFFFF'>类型</td>    <td bgcolor='#CCFFFF'>语种</td>    <td bgcolor='#CCFFFF'>歌手</td>    <td bgcolor='#CCFFFF'>会员号</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF'>手机</td>    <td bgcolor='#CCFFFF'>地址</td>    <td bgcolor='#CCFFFF'>购买数量</td>    <td bgcolor='#CCFFFF'>总金额</td>        <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "goumaijilu_list.jsp?1=1"; 
    String sql =  "select * from goumaijilu where 1=1";
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
    <td><%=map.get("zhuanjimingcheng") %></td>    <td><%=map.get("leixing") %></td>    <td><%=map.get("yuzhong") %></td>    <td><%=map.get("geshou") %></td>    <td><%=map.get("huiyuanhao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("dizhi") %></td>    <td><%=map.get("goumaishuliang") %></td>    <td><%=map.get("zongjine") %></td>        <td align='center'><%=map.get("iszf")%></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=goumaijilu" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

