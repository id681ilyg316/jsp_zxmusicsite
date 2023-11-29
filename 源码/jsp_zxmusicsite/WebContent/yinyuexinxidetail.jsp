<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>音乐信息</title>

<link href="qtimages/style.css" rel="stylesheet" type="text/css" />
</head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}

function hsghaoyou(nid){ 
	popheight=450;
	pop('hsghaoyou.jsp?&id='+nid,'分享',550,250) ;
	}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"yinyuexinxi");
	
     %>
<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><span class="float_right"></span>
				<h2>音乐信息</h2>
			</div>
			<div class="right_body">
			  
			 
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>专辑名称：</td><td width='39%'><%=mqt.get("zhuanjimingcheng")%></td><td  rowspan=6 align=center><a href=<%=mqt.get("fengmian")%> target=_blank><img src=<%=mqt.get("fengmian")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>类型：</td><td width='39%'><%=mqt.get("leixing")%></td></tr><tr>
         <td width='11%' height=44>语种：</td><td width='39%'><%=mqt.get("yuzhong")%></td></tr><tr>
         <td width='11%' height=44>歌手：</td><td width='39%'><%=mqt.get("geshou")%></td></tr><tr>
         <td width='11%' height=44>歌曲展示：</td><td width='39%'><a href="play.jsp?spwj=<%=mqt.get("gequzhanshi")%>">点此播放</a></td></tr><tr>
         
         
         <td width='11%' height=100  >专辑简介：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("zhuanjijianjie")%></td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
                                   <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='yinyuexinxi' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=分享 onClick="javascript:hsghaoyou('<%=id%>')" />
<input type=button name=Submit53 value=评论 onClick="javascript:hsgpinglun('yinyuexinxi','<%=id%>')"/>
<input type=button name=Submit52 value=收藏 onClick="javascript:location.href='jrsc.jsp?id=<%=mqt.get("id")%>&biao=yinyuexinxi&ziduan=zhuanjimingcheng';" /> 
</td></tr>
    
  </table>
						
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

