<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��������</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yinyueyuzhong_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







}
new CommDAO().insert(request,response,"yinyueyuzhong",ext,true,false,""); 
%>

  <body >
 <form  action="yinyueyuzhong_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  ������������:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">���֣�</td><td><input name='yuzhong' type='text' id='yuzhong' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyuzhong' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yuzhongobj = document.getElementById("yuzhong"); if(yuzhongobj.value==""){document.getElementById("clabelyuzhong").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelyuzhong").innerHTML="  "; } 
	var yuzhongobj = document.getElementById("yuzhong");  
if(yuzhongobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yinyueyuzhong&col=yuzhong&value="+yuzhongobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyuzhong").innerHTML="&nbsp;&nbsp;<font color=red>�����Ѵ���</font>";  
return false;
}else{document.getElementById("clabelyuzhong").innerHTML="  ";  
}  
} 
	


return true;   
}   
popheight=450;
</script>  


