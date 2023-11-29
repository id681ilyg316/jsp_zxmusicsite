<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�����¼</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"yinyuexinxi");
 String zhuanjimingcheng="";
  	String leixing="";
  	String yuzhong="";
  	String geshou="";
  	String jiage="";
  	
 zhuanjimingcheng=(String)mlbdq.get("zhuanjimingcheng");
  	leixing=(String)mlbdq.get("leixing");
  	yuzhong=(String)mlbdq.get("yuzhong");
  	geshou=(String)mlbdq.get("geshou");
  	jiage=(String)mlbdq.get("jiage");
  	 
 

 HashMap mssdq = new CommDAO().getmaps("huiyuanhao",(String)request.getSession().getAttribute("username"),"huiyuanzhuce");
 String xingming="";
  	String shouji="";
  	String dizhi="";
  	
 xingming=(String)mssdq.get("xingming");
  	shouji=(String)mssdq.get("shouji");
  	dizhi=(String)mssdq.get("dizhi");
  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="goumaijilu_add.jsp?id=<%=id%>";
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

double zongjinej=0;zongjinej=Float.valueOf(request.getParameter("jiage")).floatValue()*Float.valueOf(request.getParameter("goumaishuliang")).floatValue();

ext.put("issh","��");
ext.put("iszf","��");
ext.put("zongjine",zongjinej);

}
new CommDAO().insert(request,response,"goumaijilu",ext,true,false,""); 
%>

  <body >
 <form  action="goumaijilu_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  ���ӹ����¼:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">ר�����ƣ�</td><td><input name='zhuanjimingcheng' type='text' id='zhuanjimingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhuanjimingcheng.value='<%=zhuanjimingcheng%>';document.form1.zhuanjimingcheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">���ͣ�</td><td><input name='leixing' type='text' id='leixing' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';document.form1.leixing.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">���֣�</td><td><input name='yuzhong' type='text' id='yuzhong' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yuzhong.value='<%=yuzhong%>';document.form1.yuzhong.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">���֣�</td><td><input name='geshou' type='text' id='geshou' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.geshou.value='<%=geshou%>';document.form1.geshou.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">��Ա�ţ�</td><td><input name='huiyuanhao' type='text' id='huiyuanhao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.shouji.value='<%=shouji%>';document.form1.shouji.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.dizhi.value='<%=dizhi%>';document.form1.dizhi.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">����������</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelgoumaishuliang' />����������</td></tr>
		<tr><td  width="200">�ܽ�</td><td> �������д��ϵͳ�Զ�����</td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var goumaishuliangobj = document.getElementById("goumaishuliang"); if(goumaishuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(goumaishuliangobj.value)){document.getElementById("clabelgoumaishuliang").innerHTML=""; }else{document.getElementById("clabelgoumaishuliang").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


