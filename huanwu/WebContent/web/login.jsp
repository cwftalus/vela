<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>换客</title>
<link rel="stylesheet" type="text/css" href="../css/globals.css" />
<link rel="stylesheet" type="text/css" href="../css/user_login.css" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="favicon.gif" type="image/gif" />
<script language="javascript" type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script language="javascript" src="../js/global.js" ></script>
<script language="javascript" src="../js/user.js" ></script>
</head>

<body>
<div class="hearder">
  <!-- 顶部 -->
  <div class="h_t_c">
    <div class="b_c h_t_c_h" >
      <div id="logo_img"><a href="/" title="换物网"></a></div>
      <div class="h_t_m">
        <div class="glo_ba h_t_put"><a href="/pub.html" title="我要换,发布您想交换的东西！"></a></div>
        <div class="c"></div>
        <div id="user_info">
          <div class="glo_ba u_l"><a href="/login.html" title="点击登录"></a></div>
          <div class="glo_ba u_r"><a href="/reg.html" title="点击注册"></a></div>
        </div>
      </div>
    </div>
  </div>
  <!-- 导航 -->
  <div class="h_m_c">
    <div class="b_c h_m_m">
      <div onMouseOver="$('#menu_sum').show(); $('#if_munu_hide').val(1); " onMouseOut="$('#if_munu_hide').val(0); setTimeout('h_cla()',1000);" >
        <div id="menu_sum" class="menu_sum">
          <div class="menu_sum_wk">  <a href="/hw_class_1.html"  >电脑/配件</a>  <a href="/hw_class_2.html"  >手机/配件</a>  <a href="/hw_class_3.html"  >数码影音</a>  <a href="/hw_class_4.html"  >家用电器</a>  <a href="/hw_class_5.html"  >家具装饰</a>  <a href="/hw_class_6.html"  >日用/厨卫</a>  <a href="/hw_class_7.html"  >二手车</a>  <a href="/hw_class_8.html"  >服饰/箱包</a>  <a href="/hw_class_9.html"  >母婴/儿童</a>  <a href="/hw_class_10.html"  >音像/图书</a>  <a href="/hw_class_11.html"  >商用/办公</a>  <a href="/hw_class_12.html"  >玩具/宠物</a>  <a href="/hw_class_13.html"  >礼品/藏品</a>  <a href="/hw_class_14.html"  >音乐/运动</a>  <a href="/hw_class_15.html"  >技能交换</a>  <a href="/hw_class_16.html"  >其它</a>  </div>
          <div class="c">
            <input name="" id="if_munu_hide" type="hidden" value="0">
          </div>
        </div>
      </div>
      <ul>
        <li><a href="/"  >物品首页</a></li>
        <li class="menu_b"></li>
        <li class="menu_fl"><font class="glo_ba menu_fl"></font><a href="javascript:;" id="class_sum_fl" onMouseOver="$('#if_munu_hide').val(1); class_sum(1)" onMouseOut="$('#if_munu_hide').val(0); class_sum(2)"  >总分类</a></li>
        <li class="menu_b"></li>
        <li ><a href="/hw_new.html"  >最新换品</a></li>
        <li class="menu_b"></li>
        <li><a href="/hw_hot.html"  >人气换品</a></li>
        <li class="menu_b"></li>
        <li><a href="/hw_success.html"  >成功换出</a></li>
        <li class="menu_b"></li>
        <li><a href="/news_uuuuuuua.html">换物规则</a></li>
        <li class="menu_r">
          <label class="glo_ba menu_r_label"></label>
          <a href="/feedback.html">意见反馈</a></li>
      </ul>
    </div>
  </div>
</div><!-- 网站区开始-->
 <div class="content">
  <div class="log_l1"></div>
  <div class="log_l2"></div>
  <div class="log_login">
    <div class="log_login_l"><img src="../images/login_1.gif" /></div>
	<div class="log_login_r">
	 <div class="login_r_title"><label class="user_ba"></label></div>
	 <div class="user_ba user_login_err"></div>
	 <div class="login_r_user">
	  <font>用户名：</font><label><input type="text"  class="user_login_inpu" onmouseover="user_login_css(this)" onclick="user_input(this)" onblur="user_input(this)" id="login_user" value="用户名/邮箱" maxlength="25" />
	  </label>
	 </div>
	 <div class="login_r_pass">
	  <font>密&nbsp;&nbsp;码：</font><label><input type="password" onclick="h_msg()"  class="user_login_inpu" onmouseover="user_login_css(this)" id="login_pass" maxlength="25" />
	  </label>
	 </div>
	 <div class="c"></div>
	 <div class="login_r_put"><input name="url" type="hidden" id="url" value="" />
	  <a href="javascript:;" onclick="user_login()" title="点击登录" class="user_ba"></a> <font title="忘记密码？点这里找回密码">忘记密码？点这里找回密码</font></label>
	 </div>
	 <div class="blank20"></div>
	  <div class="blank10"></div>
	 <div class="user_login_helan"></div>
	 <div class="other_login"><font>用其他账号登录：</font><label><img src="../images/other_login.gif" border="0" usemap="#Map" />
<map name="Map" id="Map">
  <area shape="rect" coords="2,0,18,17" href="/other_user/qq/oauth/qq_login.php" title="QQ联合登录" target="_blank" />
</map></label></div>
	 <div class="user_login_helan"></div>
	 <div class="blank20"></div>
	 <div class="blank10"></div>
	 <div class="other_reg user_ba"><a href="/web/reg.jsp" title="免费注册会员"></a></div>
	 
	</div>
  </div>
  <div class="c"></div>
</div>
<div class="blank10"></div>

<!-- 底部 -->
<div class="c"></div>
<div class="foot">
  <div class="b_c foot_1"> </div>
  
  
    
  
  
  <div class="b_c foot_2">
    <div class="copy">
	投诉：hw100net@126.com 友情链接申请：QQ:452616452 漏洞/发展建议(<a href="/feedback.html"><span style="color:#e53333;">在线提交</span></a>) <br />
Copyright &copy; 换物网 www.hw100.net All Rights Reserved 粤ICP备12089273号	 </div>
  </div>
  
  <div class="tongji">  
  当前在线人数 1395   最高于( 2013-03-07 10:29:51 同时在线 6904 人)
  </div>
  
  
  <div class="ot_tognji">
  <script src="http://s13.cnzz.com/stat.php?id=4854133&web_id=4854133&show=pic" language="JavaScript"></script>  </div>
 

</div>

<!--系统插件开始-->
<div id="footpanel"><div id="footpane_top"></div></div>
<div id="sy_zm_all" onDblClick="sy_close()"></div>
<!--系统插件结束-->

<script type="text/javascript">
/*换物网两边悬浮*/
var cpro_id = "u1188310";
</script>
<script src="http://cpro.baidustatic.com/cpro/ui/f.js" type="text/javascript"></script> 
</body>
</html>