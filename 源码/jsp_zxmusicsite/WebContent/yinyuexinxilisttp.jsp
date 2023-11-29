<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������Ϣ</title>

<link href="qtimages/style.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>

<body> 
<%@ include file="qttop.jsp"%>
<div id="content_main">
	<div id="content_title"></div>
	<div id="content_body">
		<%@ include file="qtleft.jsp"%>
		<div id="right">
			<div class="right_title"><span class="float_right"></span>
				<h2>������Ϣ</h2>
			</div>
			<div class="right_body">
			  
			 <form name="form1" id="form1" action="">
   ����:  ר�����ƣ�<input name="zhuanjimingcheng" type="text" id="zhuanjimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���ͣ�<%=Info.getselect("leixing","yinyueleixing","leixing"," 1=1 ")%>  ���֣�<%=Info.getselect("yuzhong","yinyueyuzhong","yuzhong"," 1=1 ")%>  ���֣�<input name="geshou" type="text" id="geshou" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="�л���ͼ"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yinyuexinxilist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"yinyuexinxi"); 
    String url = "yinyuexinxilisttp.jsp?1=1"; 
    String sql =  "select * from yinyuexinxi where 1=1";
	
if(request.getParameter("zhuanjimingcheng")=="" ||request.getParameter("zhuanjimingcheng")==null ){}else{sql=sql+" and zhuanjimingcheng like '%"+request.getParameter("zhuanjimingcheng")+"%'";}
if(request.getParameter("leixing")=="" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+request.getParameter("leixing")+"%'";}
if(request.getParameter("yuzhong")=="" ||request.getParameter("yuzhong")==null ){}else{sql=sql+" and yuzhong like '%"+request.getParameter("yuzhong")+"%'";}
if(request.getParameter("geshou")=="" ||request.getParameter("geshou")==null ){}else{sql=sql+" and geshou like '%"+request.getParameter("geshou")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
                            <td align="center"><table width="150" height="153" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="126" align="center"><a href="yinyuexinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("fengmian")%>" width="109" height="126" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("zhuanjimingcheng")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
${page.info }
						
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

