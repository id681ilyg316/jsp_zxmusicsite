<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<div id="left">
			<div class="left_title">
				<h2>网站公告</h2>
			</div>
			<div class="left_body">
				<ul class="ul_a">
					 <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='网站公告' order by id desc ",1,15)){
	
     %>
					<li><a href="gg_detail.jsp?id=<%=map.get("id")%>" ><%=Info.ensubStr(map.get("biaoti"),18)%></a></li>
					
							 <%
								}
						%>					
				</ul>
			</div>
			
			<div class="left_bottom"></div>
			<div class="left_title">
	<h2>联系方式</h2>
</div>
<div class="left_body">
	 <% HashMap m1 = new CommDAO().getmaps("leibie","联系方式","dx");out.print(m1.get("content")); %>
</div>
<div class="left_bottom"></div>
 
		</div>

