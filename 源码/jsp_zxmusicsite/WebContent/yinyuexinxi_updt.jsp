<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"yinyuexinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yinyuexinxi"); 

%>
  <form  action="yinyuexinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  �޸�������Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>ר�����ƣ�</td><td><input name='zhuanjimingcheng' type='text' id='zhuanjimingcheng' value='<%= mmm.get("zhuanjimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���ͣ�</td><td><%=Info.getselect("leixing","yinyueleixing","leixing")%></td></tr><script language="javascript">document.form1.leixing.value='<%=mmm.get("leixing")%>';</script>
     <tr><td>���֣�</td><td><%=Info.getselect("yuzhong","yinyueyuzhong","yuzhong")%></td></tr><script language="javascript">document.form1.yuzhong.value='<%=mmm.get("yuzhong")%>';</script>
     <tr><td>���֣�</td><td><input name='geshou' type='text' id='geshou' value='<%= mmm.get("geshou")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>����չʾ��</td><td><input name='gequzhanshi' type='text' id='gequzhanshi' size='50' value='<%= mmm.get("gequzhanshi")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('gequzhanshi')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>���棺</td><td><input name='fengmian' type='text' id='fengmian' size='50' value='<%= mmm.get("fengmian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('fengmian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>ר����飺</td><td><textarea name='zhuanjijianjie' cols='50' rows='5' id='zhuanjijianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("zhuanjijianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


