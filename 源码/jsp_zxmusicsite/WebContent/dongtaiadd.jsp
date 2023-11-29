<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������վ����ϵͳ</title>


<link href="qtimages/style.css" rel="stylesheet" type="text/css" />
</head>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('�Բ���,�����ȵ�½!');</script>");
}
%>

  <% 
HashMap ext = new HashMap(); 
ext.put("username",(String) request.getSession().getAttribute("username")); 
new CommDAO().insert(request,response,"dongtai",ext,true,false,"dongtailist.jsp"); 
%>
<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><a href="dongtailist.jsp"><span class="float_right"><strong>�ҵĶ�̬</strong></span></a>
				<h2>������̬</h2>
		  </div>
		  <div class="right_body">
		  
		  <form  action="dongtaiadd.jsp?f=f"  name="f1"  onsubmit="return checkform();">
                                  <table width="97%" height="386" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#78BAEF" style="border-collapse:collapse">
                                    <tr>
                                      <td>���⣺</td>
                                      <td><input name='title' type='text' id='title' value='' /></td>
                                    </tr>
                                    <tr>
                                      <td>���飺</td>
                                      <td><input name="xinqing" type="radio" value="1" checked>
                                          <img src="img/1.gif" width="64" height="71">
                                          <input type="radio" name="xinqing" value="2">
                                          <img src="img/2.gif" width="64" height="71">
                                          <input type="radio" name="xinqing" value="3">
                                          <img src="img/3.gif" width="64" height="71">
                                          <input type="radio" name="xinqing" value="4">
                                          <img src="img/4.gif" width="64" height="71">
                                          <input type="radio" name="xinqing" value="5">
                                          <img src="img/5.gif" width="64" height="71"></td>
                                    </tr>
                                    <tr>
                                      <td>���ݣ�</td>
                                      <td><textarea name="content" cols="50" rows="10" id="content" onblur='checkform()'></textarea>
                                        *
                                        <label id='clabelneirong' />  
                                    </td>
                                    </tr>
                                    <tr>
                                      <td>&nbsp;</td>
                                      <td><input type="submit" name="Submit42" value="�ύ" onClick="return checklyb();"  />
                                          <input type="reset" name="Submit22" value="����"  /></td>
                                    </tr>
            </table>
            </form>
								
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


<script language=javascript >  
 
 function checkform(){  
var neirongobj = document.getElementById("neirong");  
if(neirongobj.value==""){  
document.getElementById("clabelneirong").innerHTML="&nbsp;&nbsp;<font color=red>��������������</font>";  
return false;  
}else{
document.getElementById("clabelneirong").innerHTML="  ";  
}  


return true;   
}   
</script>  

