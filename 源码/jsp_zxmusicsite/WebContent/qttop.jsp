<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
<div id="top_main">
	<div id="top">
	<div id="hsglogo">
		������վ
		</div>
		<div id="top_menu">
		
		
		<div id="search_bar">
			
            <%
				 if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
					
				%>

						<table width="600" height="30" border="0" align="right" cellpadding="0" cellspacing="0">
                          <form action="jspmylwzrtA6A9?ac=login&amp;a=a" name="f11" id="f11" style="display: inline">
                            <tr>
                              <td  height="30" align="right" >�û���
                                <input name="username" type="text" id="username" class="search_text2" placeholder="�������û���" />
								
                                ����
                                <input name="pwd1" type="password" id="pwd1" class="search_text2" placeholder="����������" />
                               Ȩ�� 
                            <select name="cx" id="cx"  >
                              <option value="ע���Ա">ע���Ա</option>
                            </select>
                                ��֤��
                              <input name="pagerandom" type="text" id="pagerandom" class="search_text2" placeholder="��������֤��"/></td>
                              <td align="right"  style=" padding-left:3px; padding-right:3px;"><a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a></td>
                              <td align="right"><input type="submit" name="Submit3" value="��½" style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" onClick="return checklog();" />
                                  </td>
                            </tr>
							 <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("����������");
		return false;
	}
}
           
                                  </script>
                          </form>
		  </table>
						   <%}else{ %>
                        <table width="460" height="30" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="30" align="right" valign="middle">�û���:<%=request.getSession().getAttribute("username")%>������Ȩ��:<%=request.getSession().getAttribute("cx")%>
                                <input type="button" name="Submit" value="�˳�" onClick="location.href='logout.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" />
                            <input type="button" name="Submit2" value="���˺�̨" onClick="location.href='main.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" /></td>
                          </tr>
          </table>
                        <%} %>
		  </div>
<div id="search_bar">
				<form name="pcfinal" action="news.jsp" >
					<input name="keyword" type="text" class="search_text" placeholder="������ؼ���" maxlength="50" />
					<select name="lb" >
                      <%
						    for(HashMap mlb:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=mlb.get("ss") %>"><%=mlb.get("ss") %></option>
							<%
							}
						   %>
                    </select>
					<input class="search_button" name="submit" type="submit" value="����" />
				</form>
		  </div>
	  </div>
	</div>
</div>
 
<div id="navigation_main"  >

	<div id="navigation" >
		<ul>
			<li id="navigation_home"><a  class="current_nav"href="index.jsp">��վ��ҳ</a></li>
			<li class="main_nav"><a href="news.jsp?lb=wzgg" target="_self">��վ����</a></li>
		
			<li class="main_nav"><a href="huiyuanzhuceadd.jsp" target="_self">��Աע��</a></li>
			<li class="main_nav"><a href="yinyuexinxilist.jsp" target="_self">������Ϣ</a></li>
			<li class="main_nav"><a href="news.jsp?lb=yyzx" target="_self">������Ѷ</a></li>
			<li class="main_nav"><a href="dongtailist.jsp" target="_self">�ҵĶ�̬</a></li>
			<li class="main_nav"><a href="login.jsp" target="_self">��̨����</a></li>
		</ul>
	</div>
</div>

<div class="current_location" >
<ul>
	
</ul>
</div>
<div id="banner"> 
	<script type="text/javascript">
		var swf_width=975;
		var swf_height=220;
		//-- ���� �Զ�����ʱ��(��)|������ɫ|���ֱ���ɫ|���ֱ���͸����|����������ɫ|��ǰ������ɫ|��ͨ����ɫ�� --
		var config='5|0xffffff|0x000000|10|0xffffff|0xDB4D0B|0x000000';
		var files='',links='', texts='';
		<%
		String tt="";
	  for(HashMap map:new CommDAO().select("select id,biaoti,shouyetupian from xinwentongzhi where shouyetupian<>'' and shouyetupian  like '%.jpg' order by id asc ",1,6)){
		tt=(String)map.get("biaoti");
		tt=tt.replace("'","");
		tt=tt.replace("%","");
		tt=tt.replace("?","");
		tt=tt.replace("!","");
		tt=tt.replace("(","");
		tt=tt.replace(")","");
		tt=tt.replace("|","");
		
		%>
		files+='|<%=map.get("shouyetupian")%>';
		links+='|gg_detail.jsp?id=<%=map.get("id")%>';
		texts+='|<%=tt%>';
		<%
		}
		%>

		
		files=files.substring(1);
		links=links.substring(1);
		texts=texts.substring(1);
		document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');
		document.write('<param name="movie" value="qtimages/focus.swf" />');
		document.write('<param name="quality" value="high" />');
		document.write('<param name="menu" value="false" />');
		document.write('<param name=wmode value="opaque" />');
		document.write('<param name="FlashVars" value="config='+config+'&bcastr_flie='+files+'&bcastr_link='+links+'&bcastr_title='+texts+'" />');
		document.write('<embed src="qtimages/focus.swf" wmode="opaque" FlashVars="config='+config+'&bcastr_flie='+files+'&bcastr_link='+links+'&bcastr_title='+texts+'& menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
		document.write('</object>');
		</script> 
</div> 

