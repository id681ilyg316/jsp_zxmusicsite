
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


<div id="friend_link_main">
	<div id="friend_link_title"><span class="float_right"></span>
		<h2>友情链接</h2>
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
		<p>版权所有 2015-2030 保留所有权利</p>
	</div>
</div>
