<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>������Ϣ</title>
	
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
	document.location.href="yinyuexinxi_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"yinyuexinxi",ext,true,false,""); 
%>

  <body >
 <form  action="yinyuexinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  ����������Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">ר�����ƣ�</td><td><input name='zhuanjimingcheng' type='text' id='zhuanjimingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelzhuanjimingcheng' /></td></tr>
		<tr><td>���ͣ�</td><td><%=Info.getselect("leixing","yinyueleixing","leixing")%>&nbsp;*<label id='clabelleixing' /></td></tr>
		<tr><td>���֣�</td><td><%=Info.getselect("yuzhong","yinyueyuzhong","yuzhong")%></td></tr>
		<tr><td  width="200">���֣�</td><td><input name='geshou' type='text' id='geshou' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">����չʾ��</td><td><input name='gequzhanshi' type='text' id='gequzhanshi' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('gequzhanshi')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">���棺</td><td><input name='fengmian' type='text' id='fengmian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('fengmian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">ר����飺</td><td><textarea name='zhuanjijianjie' cols='50' rows='5' id='zhuanjijianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var zhuanjimingchengobj = document.getElementById("zhuanjimingcheng"); if(zhuanjimingchengobj.value==""){document.getElementById("clabelzhuanjimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>������ר������</font>";return false;}else{document.getElementById("clabelzhuanjimingcheng").innerHTML="  "; } 
	var zhuanjimingchengobj = document.getElementById("zhuanjimingcheng");  
if(zhuanjimingchengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yinyuexinxi&col=zhuanjimingcheng&value="+zhuanjimingchengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelzhuanjimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>ר�������Ѵ���</font>";  
return false;
}else{document.getElementById("clabelzhuanjimingcheng").innerHTML="  ";  
}  
} 
	var leixingobj = document.getElementById("leixing"); if(leixingobj.value==""){document.getElementById("clabelleixing").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelleixing").innerHTML="  "; } 
	var jiageobj = document.getElementById("jiage"); if(jiageobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jiageobj.value)){document.getElementById("clabeljiage").innerHTML=""; }else{document.getElementById("clabeljiage").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


