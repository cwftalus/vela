// JavaScript Document
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

/*------------------------------------------------------------------------------------*/
//顶部
function n_top()
{
	var w_he = $(window).height();
	//顶部
	$("#footpane_top").css("margin-top",-w_he);
	setTimeout("n_top()",200);
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