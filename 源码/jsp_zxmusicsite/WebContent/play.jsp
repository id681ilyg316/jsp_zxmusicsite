<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>音乐信息</title>

<link href="qtimages/style.css" rel="stylesheet" type="text/css" />
</head>

<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><span class="float_right"></span>
				<h2>音乐信息</h2>
			</div>
			<div class="right_body">
			  
			 <br>
<div align="center">
<%
String lurl=request.getParameter("spwj");
String houzhui=lurl.substring(lurl.length()-4,lurl.length());
if (houzhui== ".swf")
{
%>

<p align=center>
   
         <OBJECT CLASSID=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 CODEBASE=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 WIDTH=541 HEIGHT=374>
           <PARAM NAME=movie VALUE=<%=lurl%>> <PARAM NAME=quality VALUE=high> <EMBED SRC=<%=lurl%> QUALITY=high PLUGINSPAGE=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash TYPE=application/x-shockwave-flash WIDTH=541 HEIGHT=374></EMBED>
    </OBJECT>



<% 
}

if (houzhui== ".mpg")
{
%>
    <p align=center>
    <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height=350 >
     <param name=ShowStatusBar value=-1>
     <param name=Filename value=<%=lurl%>>
     <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=lurl%>   width=500 height=100></embed>
    </object>
<% 
}
if ( houzhui.equals(".mid") || houzhui.equals(".wma") || houzhui.equals(".wmv") )
{

%>
    <p align=center>
   
         <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 >
           <param name=ShowStatusBar value=-1>
     <param name=Filename value=<%=lurl%>>
     <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=lurl%>   width=500></embed>
    </object>
   
<%
}
if (houzhui.equals(".mp3") )
{

%>
    <p align=center>
   
         <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height="90" >
           <param name=ShowStatusBar value=-1>
     <param name=Filename value=<%=lurl%>>
     <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=lurl%>   width=500 height="90"></embed>
    </object>
   
<%
}
%>


</div>
						
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

