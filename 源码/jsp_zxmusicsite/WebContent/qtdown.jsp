
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


<div id="friend_link_main">
	<div id="friend_link_title"><span class="float_right"></span>
		<h2>��������</h2>
	</div>
	<div id="friend_link_body">
		<div id="friend_link_img">
			  <%
    for(HashMap map:new CommDAO().select("select * from youqinglianjie order by id desc",1,8)){
     %>
			<a href="<%=map.get("wangzhi")%>" target="_blank"><%=map.get("wangzhanmingcheng")%></a>
			<%
							}
						%>
							
			
		</div>
		
	</div>
</div>
 
<div id="copyright_main">
	<div id="copyright">
		<p>��Ȩ���� 2015-2030 ��������Ȩ��</p>
	</div>
</div>
