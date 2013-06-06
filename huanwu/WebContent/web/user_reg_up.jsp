<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>会员中心[注册信息修改] - 换物网用户后台</title>
<link rel="stylesheet" type="text/css" href="../css/user_globals.css" />
<link rel="stylesheet" type="text/css" href="../css/user_exchnage.css" />
<link rel="stylesheet" type="text/css" href="../css/user_reg_up.css" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="favicon.gif" type="image/gif" />
<script language="javascript" type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script language="javascript" type="text/javascript" src="../js/global.js" ></script>
<script language="javascript" type="text/javascript" src="../js/user_global.js" ></script>
<script language="javascript" type="text/javascript" src="../js/region.js" ></script>
<script language="javascript" src="js/jquery.jUploader-1.01.min.js" ></script>
<!--上传初使化文件-->
<script language="javascript" type="text/javascript" src="js/user_reg_up.js" ></script>

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
      <li><a href="/web/user.jsp"   >我的名片</a></li>
	  <li><a href="/web/user_reg_up.jsp"  class="con_l_menu_over" >注册信息修改</a></li>
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
      <div class="my_g" >
        <div class="my_g_title_ba">
          <label class="u_ba"></label>
          注册信息修改</div>
        <div class="c"  ></div>
        <div id="reg_up"  >
		
		 <div class="user_map_up">
		 <div class="user_map_up_msg" id="user_map_up_msg">图片上传中</div>
		 
		 
		 <div class="user_map_map" id="user_map_map"><img src="../images/u.gif" width="100" height="100" /></div>
		 <div class="user_map_sub"><a href="#" id="upload_map">上传头像</a></div>
		 
		 </div>
		
          <div class="r_xb"><span class="xb_one">性　　别：</span> <span class="xb_two">
            <input name="rbt_sex" class="issex"   type="radio" value="1"  />
            男</span> <span class="xb_two">
            <input name="rbt_sex"  type="radio" checked="checked" class="issex" value="0"  />
            女</span> <span><img src="../images/xg_xing.jpg" /></span> </div>
          <div class="r_cs"> <span class="xb_one">所在城市：</span> <span class="cs_two">
                     <select name="country" id="selCountries_0" onchange="region.changed(this, 1, 'selProvinces_0')" style="display:none;">
                      <option value="0">请选择国家</option>
                     <option value="1" selected>中国</option>
                    </select>
                    <select name="province" id="selProvinces_0" onchange="region.changed(this, 2, 'selCities_0')">
                      <option value="0">请选择省</option>
					                       <option value="2"  >北京</option>
                                          <option value="3"  >安徽</option>
                                          <option value="4"  >福建</option>
                                          <option value="5"  >甘肃</option>
                                          <option value="6"  >广东</option>
                                          <option value="7"  >广西</option>
                                          <option value="8"  >贵州</option>
                                          <option value="9"  >海南</option>
                                          <option value="10"  >河北</option>
                                          <option value="11"  >河南</option>
                                          <option value="12"  >黑龙江</option>
                                          <option value="13"  >湖北</option>
                                          <option value="14"  >湖南</option>
                                          <option value="15"  >吉林</option>
                                          <option value="16"  >江苏</option>
                                          <option value="17"  >江西</option>
                                          <option value="18"  >辽宁</option>
                                          <option value="19"  >内蒙古</option>
                                          <option value="20"  >宁夏</option>
                                          <option value="21"  >青海</option>
                                          <option value="22"  >山东</option>
                                          <option value="23"  >山西</option>
                                          <option value="24"  >陕西</option>
                                          <option value="25"  >上海</option>
                                          <option value="26"  >四川</option>
                                          <option value="27"  >天津</option>
                                          <option value="28"  >西藏</option>
                                          <option value="29"  >新疆</option>
                                          <option value="30"  >云南</option>
                                          <option value="31"  >浙江</option>
                                          <option value="32"  >重庆</option>
                                          <option value="33"  >香港</option>
                                          <option value="34"  >澳门</option>
                                          <option value="35"  >台湾</option>
                    					</select>
                    <select name="city" id="selCities_0" onchange="region.changed(this, 3, 'selDistricts_0')">
                      <option value="0">请选择市</option>
					                      </select>
                    <select name="district" id="selDistricts_0" style="display:none">
                      <option value="0">请选择区</option>
					                       </select>
		   
            </span> <span class="cs_four">填写长期居住城市</span> <span><img src="../images/xg_xing.jpg" /></span> </div>
  
          <div class="r_zs"> <span class="xb_one">真实姓名：</span> <span class="zs_two">
            <input name="" type="text" id="txt_trueName" value="" />
            </span> <span><img src="../images/xg_xing.jpg" /></span> <span class="zs_three">请填写真实姓名</span> </div>
          <div class="r_zs"> <span class="xb_one">联系电话：</span> <span class="zs_two">
            <input name="" type="text" id="txt_tel" value="" />
            </span> <span><img src="../images/xg_xing.jpg" /></span> <span class="zs_four">电话、手机</span> </div>
      
          <div class="r_li"> <span class="xb_one">联系地址：</span> <span class="zs_two">
            <input name="" type="text" id="txt_address" value="" />
            </span> </div>
          <div class="r_zs"> <span class="xb_one">电子邮件：</span> <span class="zs_two">
            <input name="" type="text" disabled="disabled" id="txt_email" value="cwftalus@163.com" />
            </span> <span><img src="../images/xg_xing.jpg" /></span> <span class="zs_four">注册邮箱，不可更改</span> </div>
          <div class="r_yz"> <span class="xb_one">Q　　Q ：</span> <span class="zs_two">
            <input name="" type="text" id="txt_qq" value="" />
            </span> </div><input name="tem_map_file" type="hidden" id="tem_map_file" />
          <div class="rc_button"> <a href="javascript:;" class="user_ba"  onclick="editorInfo()">确认修改</a> <a href="javascript:;" class="user_ba"  onclick="btn_cancel()">取消操作</a> </div>
        </div>
      </div>
      <!--用户信息结束-->
    </div>
  </div>
</div>
<!--内容区结束-->
<!-- 底部 -->
<div class="blank10"></div>
<div class="foot">Copyright © 换物网 www.hw100.net All Rights Reserved 粤ICP备12089273号 </div>
<div class="ot_tognji">
  <div class="ot_tognji_baidu"><script src="http://s13.cnzz.com/stat.php?id=4854133&web_id=4854133&show=pic" language="JavaScript"></script></div>
</div>

<!--系统插件开始-->
<div id="footpanel"><div id="footpane_top"></div></div>
<div id="sy_zm_all" onDblClick="sy_close()"></div>
<!--系统插件结束--></body>
</html>
