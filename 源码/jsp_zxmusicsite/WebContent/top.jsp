<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('对不起，您已超时或未登陆,请在IE中重新打开登陆！');window.close();</script>");
	out.close();
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<SCRIPT language=javascript>
<!--
function Submit_onclick(){
	if(parent.mainframe.cols=="220,*"){
		parent.mainframe.cols="0%,*";
		//document.getElementById("ImgArrow").src="images/ar.gif";
	}else{
		parent.mainframe.cols="220,*"
		//document.getElementById("ImgArrow").src="images/al.gif";
	}
}
//-->
</SCRIPT>

<style type="text/css">
<!--
BODY {
	FONT-SIZE: 12px;
	FONT-FAMILY:  "宋体";
	background-color: #F5FAFE;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.time {
	color: #FFFFFF;
	filter: DropShadow(Color=#333333, OffX=1, OffY=1, Positive=1);
	padding-top: 4px;
	font-size: 12px;
}
.STYLE1 {color: #FF0000}
.STYLE4 {color: #000000; font-weight: bold; }
-->
</style>
</head>

<body>
<table width="100%" height="36" border="0" cellpadding="0" cellspacing="0" background="images/topbar_bg.jpg">
  <tr>
    <td width="97" background="images/topbar_1.jpg"><a href="index.jsp" target="_blank" onClick="this.blur();"><img src="images/topbar_1b.jpg" name="index" width="97" height="36" border="0" id="index" style="filter:alpha(opacity=100);-moz-opacity:1" onMouseOver="bt['index']=true;ov('index')" onMouseOut="bt['index']=false;out('index')" /></a></td>
    <td width="94" background="images/topbar_2.jpg"><a href="javascript:Submit_onclick();" onClick="this.blur();"><img src="images/topbar_2b.jpg" width="94" height="36" border="0" id="help" style="filter:alpha(opacity=100);-moz-opacity:1" onMouseOver="bt['help']=true;ov('help')" onMouseOut="bt['help']=false;out('help')" /></a></td>
    <td width="94" background="images/topbar_3.jpg"><a href="logout.jsp" target="_parent" onClick="this.blur();"><img src="images/topbar_3b.jpg" name="logout" width="94" height="36" border="0" id="logout" style="filter:alpha(opacity=100);-moz-opacity:1" onMouseOver="bt['logout']=true;ov('logout')" onMouseOut="bt['logout']=false;out('logout')" /></a></td>
    <td width="255"><div align="left" class="STYLE1"><font style="FONT-FAMILY:Arial, Helvetica, sans-serif;FONT-SIZE:13px;" color="#000000"><span class="time">当前用户：</span></font><font color="#FFFFFF"><%=request.getSession().getAttribute("username")%> [<%=request.getSession().getAttribute("cx")%>]</font>&nbsp;&nbsp;&nbsp;<a href="sy.php" target="right" class="STYLE1"><font color="#FFFFFF">管理首页</font></a></div></td>
    <td><div style="font-family:宋体; color:#FFFFFF;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:20px ;">
            <div align="left">&nbsp;音乐网站</div>
    </div></td>
    <td width="32"><img src="images/topbar_time.jpg" width="32" height="36" /></td>
    <td width="187" class="time">
    <script language=JavaScript > 
today=new Date(); 
function initArray(){ 
this.length=initArray.arguments.length 
for(var i=0;i<this.length;i++) 
this[i+1]=initArray.arguments[i] } 
var d=new initArray( "星期日", "星期一", "星期二", "星期三", "星期四","星期五", "星期六"); 
document.write( today.getFullYear(),"年", today.getMonth()+1,"月", today.getDate(),"日 ", d[today.getDay()+1]
); 
</script></td>
  </tr>
</table>
</body>
</html>

