<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>会员中心[我的名片] - 换物网用户后台</title>
<link rel="stylesheet" type="text/css" href="../css/user_globals.css" />
<link rel="stylesheet" type="text/css" href="../css/user.css" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="favicon.gif" type="image/gif" />
<script language="javascript" type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script language="javascript" src="../js/user_global.js" ></script>
</head>

<body>

<div class="hearder">
  <div class="b_c hearder_ba">
    <div class="user_logo"><img src="../images/user_logo.gif" /></div>
    <div class="user_menu">
      <ul>
        <li class="u_ba user_menu_cd" title="网站首页"><a href="/">网站首页</a></li>
        <li class="u_ba user_menu_ov" title="会员中心"><a href="user.html">会员中心</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="hearder_d">
  <div class="b_c menu_s" >
    <div class="menu_s_l">
      <div class="u_ba s_l_index"><a href="/" title="网站首页">网站首页</a></div>
      <div class="u_ba s_l_message"><a href="/user_message.html" title="0条信息">0</a> 条</div>
      <div class="u_ba s_l_out"><a href="/logout.html" title="退出登录">退出登录</a></div>
    </div>
    <div class="menu_s_r">日期:2013年06月06号 星期四</div>
  </div>
</div><!--内容区开始-->
<div class="content">
  <div class="b_c co_wk">
    <div class="blank10"></div>
    
	<div class="con_l">
  <div class="con_l_title">
    <div class="con_l_title_ba">
      <label class="u_ba"></label>
      我的信息</div>
  </div>
  <div class="con_l_menu">
    <ul>
      <li><a href="/web/user.jsp"  class="con_l_menu_over" >我的名片</a></li>
	  <li><a href="/web/user_reg_up.jsp"   >注册信息修改</a></li>
    </ul>
  </div>
  
  <div class="con_l_title">
    <div class="con_l_title_ba">
      <label class="u_ba"></label>
      我是换客</div>
  </div>
  <div class="con_l_menu">
    <ul>
      <li><a href="/pub.html" target="_blank">我要发布新品</a></li>
	  <li><a href="/user_exchange.html"   >我的交换物品</a></li>
      <li><a href="/user_p_exchange.html"  >我参与的交换</a></li>
    </ul>
  </div>
  <div class="con_l_title">
    <div class="con_l_title_ba">
      <label class="u_ba"></label>
      我的信箱</div>
  </div>
  <div class="con_l_menu">
    <ul>
      <li><a href="/user_send_message.html"   >我要发信息</a></li>
      <li><a href="/user_has_message.html"  >我的发信箱</a></li>
      <li><a href="/user_message.html"  >我的收信箱</a></li>
    </ul>
  </div>
</div>
	
    <div class="con_r">
      <!--用户信息开始-->
      <div class="my_info">
        <div class="my_info_title_ba">
          <label class="u_ba"></label>
          我的名片</div>
        <div class="c"></div>
        <div class="my_info_msg">
          <div class="msg_user" >
            <div class="u_ba msg_user_img">
              <div class="msg_user_img_in"><a href="/user_reg_up.html"><img src="/images/u.gif" width="100" height="100" /></a></div>
            </div>
            <div class="msg_user_msg">
              <div class="user_msg_name">欢迎回来,<font>${sessionScope.user.username}</font></div>
              <div class="user_msg_xy">信誉:<font>0</font></div>
			  <div class="user_msg_da">上次登录:<font>2013-06-06 11:53:14</font></div>
            </div>
          </div>
          <div class="user_tj">
            <ul>
              <li>我的换品数<font>0</font></li>
              <li>成功交换数<font>0</font></li>
            </ul>
          </div>
        </div>
      </div>
      <!--用户信息结束-->
	  <!--信息提示开始-->
	  <div class="c"></div>
	  	  <div class="user_xt_ts"><label>系统提示：</label>用户头像未上传! <a href="/user_reg_up.html">现在去上传头像gogogo...</a></div>
	  	  
	  <div class="c"></div>
	  	  <div class="user_xt_ts"><label>系统提示：</label>用户基本信息未完善! <a href="/user_reg_up.html">现在去上完善gogogo...</a></div>
	  	  
	  	  
    </div>
  </div>
</div>
<!--内容区结束-->
<!-- 底部 -->
<div class="blank10"></div>
<div class="foot">Copyright ©  # All Rights Reserved 粤ICP备12089273号 </div>
<div class="ot_tognji">
  <div class="ot_tognji_baidu"><script src="http://s13.cnzz.com/stat.php?id=4854133&web_id=4854133&show=pic" language="JavaScript"></script></div>
</div>

<!--系统插件开始-->
<div id="footpanel"><div id="footpane_top"></div></div>
<div id="sy_zm_all" onDblClick="sy_close()"></div>
<!--系统插件结束--></body>
</html>