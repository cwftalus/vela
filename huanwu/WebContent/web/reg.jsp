<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>换客</title>
<link rel="stylesheet" type="text/css" href="../css/globals.css" />
<link rel="stylesheet" type="text/css" href="../css/user_reg.css" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="favicon.gif" type="image/gif" />
<script language="javascript" type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script language="javascript" src="../js/global.js" ></script>
<script language="javascript" src="../js/user_reg.js" ></script>
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
  <div class="log_reg">
    <div class="log_reg_title">
	 <label class="user_ba"></label><font>注册完成后, 该帐号将作为您在本站的通行帐号, 您可以享受本站提供的各种服务. </font>
	</div>
	<div class="blank10"></div>
	<div class="log_reg_msg">
	  <div class="reg_msg_l">
	   <div class="reg_msg_user">
	   <!-- onblur="ch_user(this)"暂时不做检查 -->
	    <font>用户名:</font><label><input name="username" type="text" class="reg_msg_user_label_input" id="user"  onclick="onclick_input(this)" maxlength="20"  />
	    </label><div class="user_show user_ba reg_in" id="reg_msg_user_show"></div>
	   </div>
	   <div class="user_ts">用户名由2到16位的中文字符、英文字母、数字组成</div>
	   <div class="reg_msg_pass">
	    <font>密&nbsp;&nbsp;码:</font><label><input name="password" class="reg_msg_pass_label_input" onclick="onclick_input(this)" onblur="ch_pass(this)" type="password" id="pass" />
	    </label><div class="user_show user_ba reg_in" id="reg_msg_pass_show"></div>
	   </div>
	   <div class="reg_msg_pass">
	    <font>确认密码:</font><label><input name="pass1" class="reg_msg_pass_label_input" onclick="onclick_input(this)" onblur="ch_pass1(this)" type="password" id="pass1" />
	    </label><div class="user_show user_ba reg_in" id="reg_msg_pass1_show"></div>
	   </div>
	   <div class="reg_msg_mail">
	   <!-- onblur="ch_mail(this)" -->
	    <font>Email:</font><label><input name="email" class="reg_msg_mail_label_input" onclick="onclick_input(this)"  type="text" id="mail" />
	    </label><div class="user_show user_ba reg_in" id="reg_msg_mail_show"></div>
	   </div>
	   <div class="user_ts">请准确填写您的邮箱,在忘记密码或者您使用邮件通知功能时,会发送邮件到该邮箱。</div>
	   <input name="url" type="hidden" id="url" value="" />
	   <div class="user_reg_put user_ba" id="reg_input"><a href="javascript:;" onclick="reg()" title="提交注册"></a></div>
	   <div id="res_sent_msg"></div>
	  </div>
	  <div class="reg_msg_en"><img src="../images/user_reg_r_ba.gif" width="120" height="265" /></div>
	  <div class="reg_msg_r">
	   <div class="reg_msg_title">已有帐号?</div>
	   <div class="user_ba reg_msg_log"><a href="/web/login.jsp" title="登录会员"></a></div>
	  </div>
	
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
  		当前在线人数 1339   最高于( 2013-03-07 10:29:51 同时在线 6904 人)
  </div>
  
  
  <div class="ot_tognji">
  <script src="http://s13.cnzz.com/stat.php?id=4854133&web_id=4854133&show=pic" language="JavaScript"></script>  </div>
 

</div>

<!--系统插件开始-->
<div id="footpanel"><div id="footpane_top"></div></div>
<div id="sy_zm_all" onDblClick="sy_close()"></div>
<!--系统插件结束-->

</body>
</html>