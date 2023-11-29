<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>管理页面</title>
<style type="text/css">
<!--
.menutitle {
	color: #FFFFFF;
	
	font-size: 12px;
	padding-top: 4px;
}
.menubg {
	border: 1px solid #82ADCA;
	background-color: #F2F8FD;
}
.menubg1 {
	background-color: #F2F8FD;
	font-size: 12px;
	color: #001B51;
	height: 20px;
	text-align: center;
	padding-top: 3px;
	letter-spacing: 2px;
}
.menubgg {
	background-color: #F2F8FD;
	font-size: 12px;
	color: #001B51;
	height: 18px;
	text-align: left;
	padding-left: 5px;
	padding-top: 3px;
	letter-spacing: 2px;
}
.menubg2 {
	font-size: 12px;
	color: #004FA6;
	text-align: center;
	height: 20px;
	background-image: url(images/menu_bg.gif);
	background-repeat: no-repeat;
	background-position: center;
	padding-top: 3px;
	letter-spacing: 2px;
}
 
a:link {font-size:12px; color: #001B51;text-decoration: none;}
a:visited {font-size:12px; color: #001B51;text-decoration: none;}
a:hover {font-size:12px; color: #004FA6;text-decoration: none;}
.title {cursor:pointer;}
-->
html {
overflow-x:hidden; overflow-y:auto;
SCROLLBAR-HIGHLIGHT-COLOR: buttonface;
SCROLLBAR-SHADOW-COLOR: buttonface;
SCROLLBAR-3DLIGHT-COLOR: buttonhighlight;
SCROLLBAR-TRACK-COLOR: #eeeeee;
SCROLLBAR-DARKSHADOW-COLOR: buttonshadow;
}
</style>
<SCRIPT language=javascript1.2>
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
</SCRIPT>
<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
</head>

<body onLoad="MM_preloadImages('images/menu_bg.gif','images/menu_title3b.jpg')">
<div id="container">
  <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="14"></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26"></td>
        <td width="113" background="images/menu_title2.jpg"><table width="113" height="26" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td class="menutitle">个人资料管理</td>
            </tr>
          </table></td>
        <td width="36"><img src="images/menu_title3b.jpg" width="36" height="26" class="arrow"></td>
      </tr>
    </table>
  </div>
  <div class="content">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="11" rowspan="2" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><img src="images/menu_5.gif" width="166" height="3"></td>
              <td width="11" rowspan="2" background="images/menu_3.gif">&nbsp;</td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="menubg">
                  <tr>
                    <td height="5"></td>
                  </tr>
                  <tr>
                    <td class="menubg1" onMouseover="this.className='menubg2'" onMouseout="this.className='menubg1'"><a href="huiyuanzhuce_updt2.jsp" target="right">个人资料管理</a> </td>
                  </tr>
                  <tr>
                    <td height="5"></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15"></td>
      </tr>
    </table>
  </div>
  
  
     
     <div class="title">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td colspan="3"><img src="images/menu_1.gif" width="188" height="14" /></td>
       </tr>
       <tr>
         <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
         <td width="113" background="images/menu_title2.jpg"><table width="113" height="26" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td class="menutitle">好友管理</td>
             </tr>
         </table></td>
         <td width="36"><img src="images/menu_title3b.jpg" width="36" height="26" class="arrow" /></td>
       </tr>
     </table>
   </div>
   <div class="content">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td><table width="188" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td width="11" rowspan="2" background="images/menu_2.gif">&nbsp;</td>
               <td width="166"><img src="images/menu_5.gif" width="166" height="3" /></td>
               <td width="11" rowspan="2" background="images/menu_3.gif">&nbsp;</td>
             </tr>
             <tr>
               <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="menubg">
                   <tr>
                     <td height="5"></td>
                   </tr>
                   <tr>
                     <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><a href="wodehaoyou_list.jsp" target="right">我的好友列表</a></td>
                  </tr>
                   <tr>
                     <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><a href="tianjiahaoyou_list.jsp" target="right">好友添加</a></td>
                  </tr>
                  
                   <tr>
                     <td height="5"></td>
                   </tr>
               </table></td>
             </tr>
         </table></td>
       </tr>
     </table>
   </div>
  <div class="bottom">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
       </tr>
     </table>
     </div>
     
     
     <div class="title">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td colspan="3"><img src="images/menu_1.gif" width="188" height="14" /></td>
       </tr>
       <tr>
         <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
         <td width="113" background="images/menu_title2.jpg"><table width="113" height="26" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td class="menutitle">音乐信息管理</td>
             </tr>
         </table></td>
         <td width="36"><img src="images/menu_title3b.jpg" width="36" height="26" class="arrow" /></td>
       </tr>
     </table>
   </div>
   <div class="content">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td><table width="188" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td width="11" rowspan="2" background="images/menu_2.gif">&nbsp;</td>
               <td width="166"><img src="images/menu_5.gif" width="166" height="3" /></td>
               <td width="11" rowspan="2" background="images/menu_3.gif">&nbsp;</td>
             </tr>
             <tr>
               <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="menubg">
                   <tr>
                     <td height="5"></td>
                   </tr>
                   <tr>
                     <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><a href="yinyuexinxi_add.jsp" target="right">音乐信息添加</a></td>
                  </tr>
                   <tr>
                     <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><a href="yinyuexinxi_list.jsp" target="right">音乐信息查询</a></td>
                  </tr>
                  
                   <tr>
                     <td height="5"></td>
                   </tr>
               </table></td>
             </tr>
         </table></td>
       </tr>
     </table>
   </div>
  <div class="bottom">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
       </tr>
     </table>
     </div>
	 
     
     
	 <div class="title">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td colspan="3"><img src="images/menu_1.gif" width="188" height="14" /></td>
       </tr>
       <tr>
         <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
         <td width="113" background="images/menu_title2.jpg"><table width="113" height="26" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td class="menutitle">收到的分享</td>
             </tr>
         </table></td>
         <td width="36"><img src="images/menu_title3b.jpg" width="36" height="26" class="arrow" /></td>
       </tr>
     </table>
   </div>
   <div class="content">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td><table width="188" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td width="11" rowspan="2" background="images/menu_2.gif">&nbsp;</td>
               <td width="166"><img src="images/menu_5.gif" width="166" height="3" /></td>
               <td width="11" rowspan="2" background="images/menu_3.gif">&nbsp;</td>
             </tr>
             <tr>
               <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="menubg">
                   <tr>
                     <td height="5"></td>
                   </tr>
                   <tr>
                     <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><a href="shoudaodefenxiang_list.jsp" target="right">收到的分享</a></td>
                  </tr>
                  
                  
                   <tr>
                     <td height="5"></td>
                   </tr>
               </table></td>
             </tr>
         </table></td>
       </tr>
     </table>
   </div>
  <div class="bottom">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
       </tr>
     </table>
     </div>
	 
	  
  <div class="title">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td colspan="3"><img src="images/menu_1.gif" width="188" height="14" /></td>
       </tr>
       <tr>
         <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
         <td width="113" background="images/menu_title2.jpg"><table width="113" height="26" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td class="menutitle">收藏记录管理</td>
             </tr>
         </table></td>
         <td width="36"><img src="images/menu_title3b.jpg" width="36" height="26" class="arrow" /></td>
       </tr>
     </table>
   </div>
   <div class="content">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td><table width="188" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td width="11" rowspan="2" background="images/menu_2.gif">&nbsp;</td>
               <td width="166"><img src="images/menu_5.gif" width="166" height="3" /></td>
               <td width="11" rowspan="2" background="images/menu_3.gif">&nbsp;</td>
             </tr>
             <tr>
               <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="menubg">
                   <tr>
                     <td height="5"></td>
                   </tr>
                   <tr>
                     <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><a href="shoucangjilu_list2.jsp" target="right">我的收藏记录</a></td>
                  </tr>
                  
                  
                   <tr>
                     <td height="5"></td>
                   </tr>
               </table></td>
             </tr>
         </table></td>
       </tr>
     </table>
   </div>
  <div class="bottom">
     <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
       </tr>
     </table>
     </div>
	 
 
	 
	
	 
	
	 
	 
     <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="14" /></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
        <td width="113" background="images/menu_title2.jpg"><table width="113" height="26" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td class="menutitle">版权信息</td>
            </tr>
        </table></td>
        <td width="36"><img src="images/menu_title3b.jpg" width="36" height="26" class="arrow" /></td>
      </tr>
    </table>
  </div>
  <div >
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="11" rowspan="2" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><img src="images/menu_5.gif" width="166" height="3" /></td>
              <td width="11" rowspan="2" background="images/menu_3.gif">&nbsp;</td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="menubg">
                  <tr>
                    <td height="5"></td>
                  </tr>
                  <tr>
                    <td class="menubgg"  align="left"> 版权所有：</td>
                  </tr>
                  <tr>
                    <td class="menubgg"  align="left">www.xxxxxx.com</td>
                  </tr>
                  <tr>
                    <td class="menubgg"  > 音乐网站</td>
                  </tr>
				  <tr>
                    <td class="menubgg"  > 服务电话：<br /></td>
                  </tr>
				  <tr>
				    <td class="menubgg"  >xxxx-xxxxxx</td>
			      </tr>
                  <tr>
                    <td height="5"></td>
                  </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
      </tr>
    </table>
   
  </div>
   
   <br />
  </div>
<SCRIPT language=javascript1.2>
	var toggles  = document.getElementsByClassName('title');
	var contents = document.getElementsByClassName('content');
	var arrows = document.getElementsByClassName('arrow');
	var myAccordion = new fx.Accordion(
		toggles, contents, {opacity: true, duration: 500}
	);
	myAccordion.showThisHideOpen(contents[0]);
</SCRIPT>
</body>
</html>
