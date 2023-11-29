<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����¼</title>
	
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

new CommDAO().update(request,response,"goumaijilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"goumaijilu"); 

%>
  <form  action="goumaijilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  �޸Ĺ����¼:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>ר�����ƣ�</td><td><input name='zhuanjimingcheng' type='text' id='zhuanjimingcheng' value='<%= mmm.get("zhuanjimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���ͣ�</td><td><input name='leixing' type='text' id='leixing' value='<%= mmm.get("leixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���֣�</td><td><input name='yuzhong' type='text' id='yuzhong' value='<%= mmm.get("yuzhong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���֣�</td><td><input name='geshou' type='text' id='geshou' value='<%= mmm.get("geshou")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��Ա�ţ�</td><td><input name='huiyuanhao' type='text' id='huiyuanhao' value='<%= mmm.get("huiyuanhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='<%= mmm.get("dizhi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>����������</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='<%= mmm.get("goumaishuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�ܽ�</td><td><input name='zongjine' type='text' id='zongjine' value='<%= mmm.get("zongjine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


