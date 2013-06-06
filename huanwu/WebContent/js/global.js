// JavaScript Document
function load_user()
{
	$.ajax({
		type: "GET",
		url: "/u.php",
		data: "act=user_info",
		dataType: "JSON",
		beforeSend :function()
		{
			$("#user_info").html('<div class="user_is_l">用户信息加载中...</div>');
		},
		success: function(msg)
		{
			if(msg.is_in == 1)
			{
				$("#user_info").html(msg.user_info);
			}
			else
			{
				$("#user_info").html(msg.user_info);
			}
		}
	});	
}

//会员信自加载
$(function ()
{
	setTimeout("load_user()",1000);
})

//系统全站遮蒙
function sy_zm_all()
{
	var w_he = $(document).height();
	var w_ww = $(document).width();
	$("#sy_zm_all").show();
	$("#sy_zm_all").css("height",w_he).css("width",w_ww);
}
function sy_close()
{
	$("#sy_zm_all").hide();
	$("#sy_ti_all").hide();
	$('#sy_ts_time').val(0)
}

var sy_out_time;

function outoclose(mun,what)
{
	if(mun == 'stop')
	{
		mun = $('#sy_ts_time').val();
	}

	if(mun > 0)
	{
	 	$('#sy_ti_all_outo_close').html(mun+'秒后自动关闭');
		mun = mun - 1;
		$('#sy_ts_time').val(mun);
		setTimeout("outoclose('stop','"+what+"')",1000);
	}
	else
	{
		if(what == 'r')
		{
			window.location.reload();
		}
		sy_close();
	}
}

//系统提示
//outoclose = 1自动关闭
function sy_ti_all(msg,outoc)
{
	sy_zm_all();
	
	//加载提示
	var sy_ti = '<div id="sy_ti_all"><div class="sy_ti_all_outo_close" id="sy_ti_all_outo_close"></div><div class="sy_ti_all_close" onClick="sy_close()"  title="关闭">关闭</div><div id="sy_ti_all_t">系统提示</div><div id="sy_ti_all_msg">'+msg+'</div><input name="sy_ts_time" type="hidden" id="sy_ts_time" /></div>';
	
	if($('#sy_ti_all').length <= 0)
	{
		$("#footpane_top").append(sy_ti);
	}
	else
	{
		$('#sy_ti_all_msg').html(msg);
		$("#sy_ti_all").show();
	}

	if(outoc == 1)
	{
		outoclose(4,'w');
	}
	else if(outoc == 'r')
	{
		outoclose(4,'r');
	}
	
	var w_he = ($(window).height()-$("#sy_ti_all").height())/2;
	var w_ww = ($(window).width()-$("#sy_ti_all").width())/2;
	
	$("#sy_ti_all").css("margin-top",w_he).css("margin-left",w_ww);
}

function add_class(obj)
{
	$('#hk_class').val(obj);
}


//信息栏效果
function c_msg_l(what)
{
	if(what == 'right')
	{
		$("#msg_l").css("background-position","-124px -397px");
	}
	else if(what == 'left')
	{
		$("#msg_l").css("background-position","-124px -431px");
	}
	else
	{
		$("#msg_l").css("background-position","-124px -318px");
	}
}

function c_msg_ch(what)
{
	var msgshow = '请输入您想要查找的换品';
	if(what == 1)
	{
		if($("#s_key").val() == msgshow)
		{
			alert(msgshow); $("#s_key").val(''); $("#s_key").focus(); return false;
		}
		
		if($("#s_key").val() == '')
		{
			alert(msgshow); $("#s_key").focus(); return false;
		}
	}
	if(what == 2)
	{
		if($("#s_key").val() == msgshow)
		{
			$(".msg_r_w_input").css("color","#333333");
			$("#s_key").val(''); return false;
		}
	}
	
	if(what == 3)
	{
		if($("#s_key").val() == '')
		{
			$(".msg_r_w_input").css("color","#999999");
			$("#s_key").val(msgshow); return false;
		}
	}
	
	location.href = '/s.php?k='+ encodeURIComponent($("#s_key").val());
}

function h_cla()
{
	if($('#if_munu_hide').val() == 0)
	{
		$("#menu_sum").fadeOut(200);
	}
}

/* 主菜单显示 */
function class_sum(what)
{
	if($('#menu_sum').css('display') == 'none')
	{
		$("#menu_sum").animate({ 
			"margin-left": 123, "opacity": 'show'
		}, 350 );
	}
	else
	{
		setTimeout("h_cla()",300);
	}
}

function show_myinfo()
{
	if($('.sy_user_ce').css('display') == 'none')
	{
		$('.sy_user_ce').show();
		$('#sy_user_name').addClass("sy_user_name_ov");
		
		$('.sy_user_ce').hover(function()
		{
			if($('.sy_user_ce').css('display') == 'none')
			{
				$('#sy_user_name').addClass("sy_user_name_ov");
				$('.sy_user_ce').show();
			}

		 }, function() {
			
			$('#sy_user_name').removeClass("sy_user_name_ov");
			$('.sy_user_ce').hide();
		});
	}
}

function hide_myinfo()
{
	$('.sy_user_ce').hide();
	$('#sy_user_name').removeClass("sy_user_name_ov");
}

function go_url(url)
{
	if(url == '')
	{
		url = '/'
	}
	
	location.href = url;
}

function addBookmark()
{ 
	var title=document.title;
	var url=document.location.href;
	if (window.sidebar)
	{
		window.sidebar.addPanel(title, url,"");
	}
	else if( window.opera && window.print )
	{
		var mbm = document.createElement('a');
		mbm.setAttribute('rel','sidebar');
		mbm.setAttribute('href',url);
		mbm.setAttribute('title',title);
		mbm.click();
	}
	else if( document.all )
	{
		window.external.AddFavorite( url, title);	
	}
	
} 

/*------------------------------------------------------------------------------------*/
//顶部
function n_top()
{
	var w_he = $(window).height();
	//顶部
	$("#footpane_top").css("margin-top",-w_he);
	setTimeout("n_top()",200);
}

function s_k(obj)
{
	if($(obj).val() == '请输入您想了解的信息...')
	{
		$(obj).val('');	
	}
	else if($(obj).val() == '')
	{
		$(obj).val('请输入您想了解的信息...')	
	}
}

//全站浮动
n_top();

	
//判断是不是IE
if ($.browser.msie && $.browser.version >= 6 && $.browser.version <8)
{
	
	if ($("body").css("background-image") == "none")
	{
		//没有加这个的话，ie6使用表达式时就会发现跳动现象
		$("body").css("background-attachment","fixed").css("background-image","url(about:blank)");
		
	}
	else
	{
		$("body").css({"background-attachment" : "fixed"});
	}
}

var base64DecodeChars = new Array(
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63,
     52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1,
     -1,   0,   1,   2,   3,   4,   5,   6,   7,   8,   9, 10, 11, 12, 13, 14,
     15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1,
     -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
     41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1);

function base64decode(str)
{
     var c1, c2, c3, c4;
     var i, len, out;

     len = str.length;
     i = 0;
     out = "";
     while(i < len) {
         /* c1 */
         do {
             c1 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
         } while(i < len && c1 == -1);
         if(c1 == -1)
             break;

         /* c2 */
         do {
             c2 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
         } while(i < len && c2 == -1);
         if(c2 == -1)
             break;

         out += String.fromCharCode((c1 << 2) | ((c2 & 0x30) >> 4));

         /* c3 */
         do {
             c3 = str.charCodeAt(i++) & 0xff;
             if(c3 == 61)
                 return out;
             c3 = base64DecodeChars[c3];
         } while(i < len && c3 == -1);
         if(c3 == -1)
             break;

         out += String.fromCharCode(((c2 & 0XF) << 4) | ((c3 & 0x3C) >> 2));

         /* c4 */
         do {
             c4 = str.charCodeAt(i++) & 0xff;
             if(c4 == 61)
                 return out;
             c4 = base64DecodeChars[c4];
         } while(i < len && c4 == -1);
         if(c4 == -1)
             break;
         out += String.fromCharCode(((c3 & 0x03) << 6) | c4);
     }
     return out;
}