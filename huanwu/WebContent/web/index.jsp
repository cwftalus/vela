<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>javapms资讯门户 - Powered by javapms</title>
<meta content="java,jsp,cms,pms,html5,157it,免费,门户,百姓,生活,管理系统,门户系统" name="keywords" />
<meta content="javapms资讯门户以java门户网站管理系统作为技术支撑，通过新闻，图片，图集，视频，投票，留言等多种方式提供新闻、娱乐、教育、健康等各方面的最新资讯，紧贴百姓生活，做最好的资讯门户网站" name="description" />
<meta name="author" content="javapms"/>
<meta name="copyright" content="Copyright &copy; 2011 - 2013 javapms.com All Rights Reserved."/>
<link rel="shortcut icon" href="/skin/default/img/favicon.ico">
<link href="/skin/default/css/style.css" rel="stylesheet"/>
<script src="/skin/comm/js/jquery.js"></script>
<script src="/skin/default/js/com.js"></script>
<script src="/skin/default/js/jquery.KinSlideshow-1.2.1.min.js"></script>
<!--[if IE]><script src="/skin/default/js/html5.js"></script><![endif]-->
<script language="javascript">
$(function() {
  $("#jdt").KinSlideshow({
	  btn:{
		btn_bgColor:"#7c7c7c",
	  	btn_bgHoverColor:"#ff0000",
	  	btn_fontColor:"#ffffff",
	  	btn_fontHoverColor:"#ffffff",
	 	btn_fontFamily:"Verdana",
	  	btn_borderColor:"#999999",
	  	btn_borderHoverColor:"#FF0000",
	  	btn_borderWidth:0,btn_bgAlpha:0.7
	  }   
  });
  var scrtime;
  $(".comList").hover(function(){
	  clearInterval(scrtime);
	 },function(){
	  scrtime = setInterval(function(){
	  var $ul = $(".comList");
	  var liHeight = $ul.find("li:last").height();
	  $ul.animate({marginTop : liHeight+20 +"px"},1000,function(){
	  $ul.find("li:last").prependTo($ul);
	  $ul.find("li:first").hide();
	  $ul.css({marginTop:0});
	  $ul.find("li:first").fadeIn(1000);
	  }); 
	 },3000);
  }).trigger("mouseleave");
})
</script>
</head>

<body>
<!--header-->
<header> 
  <!--top-->
    <section id="top">
        <div class="s b">
          <div id="uMsg" class="fl">
            您好，欢迎光临javapms资讯门户！
          </div>
          <div id="fav" class="fr">
          <a href="javascript:void(0);" onclick="AddFavorite(window.location,document.title)">加入收藏</a>|<a href="javascript:void(0);" onclick="SetHome(this,window.location)">设为首页</a>|<a href="/guide/index.jsp" target="_blank">网站导航</a> 
          </div>
        </div>
    </section>  <!--/top-->
  <!--nav--> 
<section id="nv" class="s mt5 b">
      <h1><a href="/">javapms资讯门户</a></h1>
      <nav>
        <ul>
        	<li><strong><a href="http://localhost:8080/news/index.jsp" title="新闻">新闻</a></strong>
				<a href="http://localhost:8080/china/index.jsp" target="_blank" title="国内">国内</a>
				<a href="http://localhost:8080/world/index.jsp" target="_blank" title="国际">国际</a>
				<a href="http://localhost:8080/mil/index.jsp" target="_blank" title="军事">军事</a>
				<a href="http://localhost:8080/photo/index.jsp" target="_blank" title="图片">图片</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/sports/index.jsp" title="体育">体育</a></strong>
				<a href="http://localhost:8080/nba/index.jsp" target="_blank" title="NBA">NBA</a>
				<a href="http://localhost:8080/football/index.jsp" target="_blank" title="足球">足球</a>
				<a href="http://localhost:8080/others/index.jsp" target="_blank" title="综合">综合</a>
				<a href="http://localhost:8080/tennis/index.jsp" target="_blank" title="网球">网球</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/ent/index.jsp" title="娱乐">娱乐</a></strong>
				<a href="http://localhost:8080/film/index.jsp" target="_blank" title="电影">电影</a>
				<a href="http://localhost:8080/tv/index.jsp" target="_blank" title="电视">电视</a>
				<a href="http://localhost:8080/music/index.jsp" target="_blank" title="音乐">音乐</a>
				<a href="http://localhost:8080/star/index.jsp" target="_blank" title="明星">明星</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/finance/index.jsp" title="财经">财经</a></strong>
				<a href="http://localhost:8080/stock/index.jsp" target="_blank" title="股票">股票</a>
				<a href="http://localhost:8080/fund/index.jsp" target="_blank" title="基金">基金</a>
				<a href="http://localhost:8080/forex/index.jsp" target="_blank" title="外汇">外汇</a>
				<a href="http://localhost:8080/futuremarket/index.jsp" target="_blank" title="期货">期货</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/tech/index.jsp" title="科技">科技</a></strong>
				<a href="http://localhost:8080/internet/index.jsp" target="_blank" title="互联网">互联网</a>
				<a href="http://localhost:8080/it/index.jsp" target="_blank" title="IT">IT</a>
				<a href="http://localhost:8080/elec/index.jsp" target="_blank" title="家电">家电</a>
				<a href="http://localhost:8080/discovery/index.jsp" target="_blank" title="探索">探索</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/health/index.jsp" title="健康">健康</a></strong>
				<a href="http://localhost:8080/healthcare/index.jsp" target="_blank" title="保健">保健</a>
				<a href="http://localhost:8080/yangsheng/index.jsp" target="_blank" title="养生">养生</a>
				<a href="http://localhost:8080/mingyi/index.jsp" target="_blank" title="名医">名医</a>
				<a href="http://localhost:8080/medicine/index.jsp" target="_blank" title="药品">药品</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/style/index.jsp" title="尚品">尚品</a></strong>
				<a href="http://localhost:8080/clothes/index.jsp" target="_blank" title="服装">服装</a>
				<a href="http://localhost:8080/shipin/index.jsp" target="_blank" title="饰品">饰品</a>
				<a href="http://localhost:8080/car/index.jsp" target="_blank" title="名车">名车</a>
				<a href="http://localhost:8080/foods/index.jsp" target="_blank" title="美食">美食</a>
        	</li>
        	<li><strong><a href="http://localhost:8080/travel/index.jsp" title="旅游">旅游</a></strong>
				<a href="http://localhost:8080/youji/index.jsp" target="_blank" title="游记">游记</a>
				<a href="http://localhost:8080/huwai/index.jsp" target="_blank" title="户外">户外</a>
				<a href="http://localhost:8080/jingdian/index.jsp" target="_blank" title="景点">景点</a>
				<a href="http://localhost:8080/techan/index.jsp" target="_blank" title="特产">特产</a>
        	</li>
        </ul>
      </nav>
</section>  <!--/nav-->
</header>
<!--/header--> 

<!--banner-->
<section class="s mt5">
	<a href="http://www.javapms.com" target="_blank" title="javapms正式发布"><img src="/skin/default/img/banner.jpg" alt="javapms正式发布"/></a>
</section><!--banner-->

<!--main_1-->
<section class="s mt5 b"> 
  <div class="ml">
  	<!--jdt-->
    <div id="jdt">
          <a href="http://localhost:8080/doc/123.jsp" title="贝克汉姆退役后计划曝光 重回大联盟升任老板" target="_blank"><img src="/member/upload/demo/201305/18112706mxzw.jpg" alt="贝克汉姆退役后计划曝光 重回大联盟升任老板"/></a>
          <a href="http://localhost:8080/doc/3.jsp" title="小风衣大作为 雨天穿出好心情" target="_blank"><img src="/member/upload/demo/201305/18112410a0na.jpg" alt="小风衣大作为 雨天穿出好心情"/></a>
    </div>
    <!--/jdt-->
  </div>
  <div class="mc">
        <div class="tt sLine">
			<h2><a href="http://localhost:8080/doc/53.jsp" title="一睹为快全世界排名前十位富豪的房子" target="_blank">一睹为快全世界排名前十位富豪的房子</a></h2>
            <p>
            [<a href="http://localhost:8080/doc/76.jsp" title="黄金引疯抢 盘点那些吸睛纯金单品" target="_blank">黄金引疯抢 盘点那些吸睛纯&hellip;</a>]            [<a href="http://localhost:8080/doc/62.jsp" title="五一欧洲游提高防范意识 少带现金别露富" target="_blank">五一欧洲游提高防范意识 少&hellip;</a>]
            </p>
        </div>
        <ul class="nlist w96">
            <li><a href="http://localhost:8080/doc/68.jsp" title="400多白衣天使成住房公积金“黑户”" target="_blank">400多白衣天使成住房公积金“黑户”</a></li>
            <li><a href="http://localhost:8080/doc/125.jsp" title="F1西班牙站战术回放：阿隆索四停夺冠超预期" target="_blank">F1西班牙站战术回放：阿隆索四停夺冠超预期</a></li>
            <li><a href="http://localhost:8080/doc/124.jsp" title="李娜调侃球迷回应质疑：大家现在都已成专家" target="_blank">李娜调侃球迷回应质疑：大家现在都已成专家</a></li>
            <li><a href="http://localhost:8080/doc/123.jsp" title="贝克汉姆退役后计划曝光 重回大联盟升任老板" target="_blank">贝克汉姆退役后计划曝光 重回大联盟升任老板</a></li>
            <li><a href="http://localhost:8080/doc/122.jsp" title="西甲-巴萨2-1庆夺冠 法尔考破门梅西纪录终结" target="_blank">西甲-巴萨2-1庆夺冠 法尔考破门梅西纪录终结</a></li>
            <li><a href="http://localhost:8080/doc/121.jsp" title="国王杯-C罗破门染红皇马加时1-2负 马竞夺冠" target="_blank">国王杯-C罗破门染红皇马加时1-2负 马竞夺冠</a></li>
         </ul>
     </div>
  </div>
  <div class="mr">
  	<a href="http://www.javapms.com" title="javapms文档专题" target="_blank"><img src="/skin/default/img/topic.jpg" alt="javapms文档专题"/></a>
  </div>
</section>
<!--/main_1-->

<!--main_2-->
<section class="s mt5 b">
  <div class="ml">
  	<div class="bor">
    	<div class="tit"><h2>最新热评</h2></div>
        <div class="h_comList">
        	<ul class="w96 comList">
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=112" target="_blank" class='ico'></a>评论<a title="丽江酒吧摆“艳遇佛”引游客抚摸" href="http://localhost:8080/doc/112.jsp" target="_blank" class="blue">#丽江酒吧摆“艳遇佛”引游客抚摸#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>还好没小孩子在里面，不然教坏下一代啊</dd>
              </dl>
            </li>
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=112" target="_blank" class='ico'></a>评论<a title="丽江酒吧摆“艳遇佛”引游客抚摸" href="http://localhost:8080/doc/112.jsp" target="_blank" class="blue">#丽江酒吧摆“艳遇佛”引游客抚摸#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>为了赚钱，什么招的使得出来</dd>
              </dl>
            </li>
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=111" target="_blank" class='ico'></a>评论<a title="重庆“女子纤夫”再现川江船工风采" href="http://localhost:8080/doc/111.jsp" target="_blank" class="blue">#重庆“女子纤夫”再现川江船工风采#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>在体育馆里面装模作样的，作秀呐，有本事到江里拉真船啊</dd>
              </dl>
            </li>
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=123" target="_blank" class='ico'></a>评论<a title="贝克汉姆退役后计划曝光 重回大联盟升任老板" href="http://localhost:8080/doc/123.jsp" target="_blank" class="blue">#贝克汉姆退役后计划曝光 重回大联盟升任老板#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>当初的小贝也成老贝了，时光如梭，自然规律，没办法，只能感叹，祝福贝克汉姆，也和&hellip;</dd>
              </dl>
            </li>
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=120" target="_blank" class='ico'></a>评论<a title="季后赛MVP：詹皇高居榜首 库里小加大放异彩" href="http://localhost:8080/doc/120.jsp" target="_blank" class="blue">#季后赛MVP：詹皇高居榜首 库里小加大放异彩#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>大猩猩现在是无敌了，还一群好队友，看好热火夺冠，库里自从蒙塔艾莉丝走后就出彩了&hellip;</dd>
              </dl>
            </li>
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=112" target="_blank" class='ico'></a>评论<a title="丽江酒吧摆“艳遇佛”引游客抚摸" href="http://localhost:8080/doc/112.jsp" target="_blank" class="blue">#丽江酒吧摆“艳遇佛”引游客抚摸#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>真实世界之大，无奇不有啊，这样也能行，服了，就没有相关部门管管？</dd>
              </dl>
            </li>
            <li onmouseover="this.style.background='#E6EFFD';" onmouseout="this.style.background='#F2F6FD';">
              <dl>
                <dt><a href="#" class="user">JAVAPMS网友</a><a href="/comment.jsp?docId=82" target="_blank" class='ico'></a>评论<a title="处处碰壁 菲律宾“特使”狼狈离台" href="http://localhost:8080/doc/82.jsp" target="_blank" class="blue">#处处碰壁 菲律宾“特使”狼狈离台#</a> </dt>
                <dd class="pic"><img src="/skin/default/img/face.png"/></dd>
                <dd>这是应得的下场，大快人心</dd>
              </dl>
            </li>
        	</ul>
        </div>
    </div>
  </div>
  <div class="mc">
  	<div class="tit tLine"><h2>新闻<span class="flt"><a href="http://localhost:8080/china/index.jsp" target="_blank" title="国内">国内</a>|<a href="http://localhost:8080/world/index.jsp" target="_blank" title="国际">国际</a>|<a href="http://localhost:8080/mil/index.jsp" target="_blank" title="军事">军事</a>|<a href="http://localhost:8080/photo/index.jsp" target="_blank" title="图片">图片</a></span></h2><em><a href="http://localhost:8080/news/index.jsp" target="_blank">更多 &raquo;</a></em></div>
    <div class="cont">
        <ul class="nlist w96">
        	<li><a href="http://localhost:8080/doc/68.jsp" title="400多白衣天使成住房公积金“黑户”" target="_blank">400多白衣天使成住房公积金“黑户”</a></li>
        	<li><a href="http://localhost:8080/doc/116.jsp" title="玛莎拉蒂车主车展砸车维权 称其有眼无珠" target="_blank">玛莎拉蒂车主车展砸车维权 称其有眼无珠</a></li>
        	<li><a href="http://localhost:8080/doc/114.jsp" title="韩国女子团体明星美貌排行揭晓" target="_blank">韩国女子团体明星美貌排行揭晓</a></li>
        	<li><a href="http://localhost:8080/doc/113.jsp" title="南航新疆招空乘 千余美女角逐80岗位" target="_blank">南航新疆招空乘 千余美女角逐80岗位</a></li>
        	<li><a href="http://localhost:8080/doc/112.jsp" title="丽江酒吧摆“艳遇佛”引游客抚摸" target="_blank">丽江酒吧摆“艳遇佛”引游客抚摸</a></li>
        	<li><a href="http://localhost:8080/doc/111.jsp" title="重庆“女子纤夫”再现川江船工风采" target="_blank">重庆“女子纤夫”再现川江船工风采</a></li>
        </ul>
    </div>
  	<div class="tit mt5 tLine"><h2>体育<span class="flt"><a href="http://localhost:8080/nba/index.jsp" target="_blank" title="NBA">NBA</a>|<a href="http://localhost:8080/football/index.jsp" target="_blank" title="足球">足球</a>|<a href="http://localhost:8080/others/index.jsp" target="_blank" title="综合">综合</a>|<a href="http://localhost:8080/tennis/index.jsp" target="_blank" title="网球">网球</a></span></h2><em><a href="http://localhost:8080/sports/index.jsp" target="_blank">更多 &raquo;</a></em></div>
    <div class="cont">
        <ul class="nlist w96">
        	<li><a href="http://localhost:8080/doc/125.jsp" title="F1西班牙站战术回放：阿隆索四停夺冠超预期" target="_blank">F1西班牙站战术回放：阿隆索四停夺冠超预期</a></li>
        	<li><a href="http://localhost:8080/doc/124.jsp" title="李娜调侃球迷回应质疑：大家现在都已成专家" target="_blank">李娜调侃球迷回应质疑：大家现在都已成专家</a></li>
        	<li><a href="http://localhost:8080/doc/123.jsp" title="贝克汉姆退役后计划曝光 重回大联盟升任老板" target="_blank">贝克汉姆退役后计划曝光 重回大联盟升任老板</a></li>
        	<li><a href="http://localhost:8080/doc/122.jsp" title="西甲-巴萨2-1庆夺冠 法尔考破门梅西纪录终结" target="_blank">西甲-巴萨2-1庆夺冠 法尔考破门梅西纪录终结</a></li>
        	<li><a href="http://localhost:8080/doc/121.jsp" title="国王杯-C罗破门染红皇马加时1-2负 马竞夺冠" target="_blank">国王杯-C罗破门染红皇马加时1-2负 马竞夺冠</a></li>
        	<li><a href="http://localhost:8080/doc/120.jsp" title="季后赛MVP：詹皇高居榜首 库里小加大放异彩" target="_blank">季后赛MVP：詹皇高居榜首 库里小加大放异彩</a></li>
        </ul>
    </div>
  </div>
  <div class="mr">
  	<div class="bor">
    	<div class="tit"><h2>视频</h2><em><a href="http://localhost:8080/videos/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont">
        <div class="twlist w92 pb5">
          <a href="http://localhost:8080/doc/82.jsp" title="处处碰壁 菲律宾“特使”狼狈离台" target="_blank" class="video"><img src="/member/upload/demo/201305/18110348qo19.jpg"/><i></i></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/82.jsp" title="处处碰壁 菲律宾“特使”狼狈离台" target="_blank">处处碰壁 菲律宾“特使”狼狈离台</a></h2>
            <p>据台湾“中央社”报道，台湾&hellip;<a href="http://localhost:8080/doc/82.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>
        <ul class="nlist2 w92 sLine pb5">
            <li class="m4"><a href="http://localhost:8080/doc/108.jsp" title="黄金涨跌之谜 财经郎眼" target="_blank">黄金涨跌之谜 财经郎眼</a></li>
            <li class="m4"><a href="http://localhost:8080/doc/88.jsp" title="视频体验最经典的简欧风情家居空间设计" target="_blank">视频体验最经典的简欧风情家居空&hellip;</a></li>
            <li class="m4"><a href="http://localhost:8080/doc/86.jsp" title="我国中西部多省份网友目击不明飞行物" target="_blank">我国中西部多省份网友目击不明飞&hellip;</a></li>
        </ul>
        </div>
        <div class="tit"><h2>热点排行</h2></div>
    	<div class="cont">
			<ol class="ph w92">
				<li><a href="http://localhost:8080/doc/53.jsp" title="一睹为快全世界排名前十位富豪的房子" target="_blank">一睹为快全世界排名前十位富豪的房子</a></li>
				<li><a href="http://localhost:8080/doc/121.jsp" title="国王杯-C罗破门染红皇马加时1-2负 马竞夺冠" target="_blank">国王杯-C罗破门染红皇马加时1-2负 马竞夺冠</a></li>
				<li><a href="http://localhost:8080/doc/116.jsp" title="玛莎拉蒂车主车展砸车维权 称其有眼无珠" target="_blank">玛莎拉蒂车主车展砸车维权 称其有眼无珠</a></li>
				<li><a href="http://localhost:8080/doc/114.jsp" title="韩国女子团体明星美貌排行揭晓" target="_blank">韩国女子团体明星美貌排行揭晓</a></li>
				<li><a href="http://localhost:8080/doc/123.jsp" title="贝克汉姆退役后计划曝光 重回大联盟升任老板" target="_blank">贝克汉姆退役后计划曝光 重回大联盟升任老板</a></li>
				<li><a href="http://localhost:8080/doc/85.jsp" title="实拍醉酒女子当街大闹 警车上跳热舞" target="_blank">实拍醉酒女子当街大闹 警车上跳热舞</a></li>
			</ol>
        </div>
    </div>
  </div>
</section>
<!--/main_2--> 

<!--ad-->
<section class="s mt5">
	<a href="http://www.javapms.com" target="_blank" title="javapms建站套餐"><img src="/skin/default/img/ad.jpg" alt="javapms建站套餐"/></a>
</section>
<!--/ad-->

<!--main_3-->
<section class="s mt5 bor b">
	<div class="mblk borR fl">
    	<div class="tit"><h2>娱乐<span class="flt"><a href="http://localhost:8080/film/index.jsp" target="_blank" title="电影">电影</a>|<a href="http://localhost:8080/tv/index.jsp" target="_blank" title="电视">电视</a>|<a href="http://localhost:8080/music/index.jsp" target="_blank" title="音乐">音乐</a>|<a href="http://localhost:8080/star/index.jsp" target="_blank" title="明星">明星</a></span></h2><em><a href="http://localhost:8080/ent/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont mt5">        
        <div class="twlist2 mb5 w94">
          <a href="http://localhost:8080/doc/84.jsp" title="王石女友田朴珺未生孩子 复出40万一集" target="_blank"><img src="/member/portal/demo/201305/15160134mxyz.jpg"/></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/84.jsp" title="王石女友田朴珺未生孩子 复出40万一集" target="_blank">王石女友田朴珺未生孩子 复出40万一集</a></h2>
            <p>2013年5月13日晚，王石离异后的现任女友田朴珺低调出席电影《中国合伙人》&hellip;<a href="http://localhost:8080/doc/84.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>        
        <ul class="nlist2 w94 sLine pb5">
            <li><a href="http://localhost:8080/doc/94.jsp" title="容祖儿新歌再被指抄袭 类似前科大起底" target="_blank">容祖儿新歌再被指抄袭 类似前科大起底</a></li>
            <li><a href="http://localhost:8080/doc/93.jsp" title="央视青歌赛 谭玮演唱抗震歌曲" target="_blank">央视青歌赛 谭玮演唱抗震歌曲</a></li>
            <li><a href="http://localhost:8080/doc/92.jsp" title="陆贞”赵丽颖被曝坐台整容 回应:无聊" target="_blank">陆贞”赵丽颖被曝坐台整容 回应:无聊</a></li>
            <li><a href="http://localhost:8080/doc/91.jsp" title="网传抗日传奇剧被限播 卫视称未收到通知" target="_blank">网传抗日传奇剧被限播 卫视称未收到通知</a></li>
            <li><a href="http://localhost:8080/doc/90.jsp" title="大影节《1942》最佳 黄渤颜丙燕称帝后" target="_blank">大影节《1942》最佳 黄渤颜丙燕称帝后</a></li>
            <li><a href="http://localhost:8080/doc/89.jsp" title="医师曝朱莉切乳手术细节 皮特陪伴打气" target="_blank">医师曝朱莉切乳手术细节 皮特陪伴打气</a></li>
        </ul>
        </div>
        
    	<div class="tit"><h2>财经<span class="flt"><a href="http://localhost:8080/stock/index.jsp" target="_blank" title="股票">股票</a>|<a href="http://localhost:8080/fund/index.jsp" target="_blank" title="基金">基金</a>|<a href="http://localhost:8080/forex/index.jsp" target="_blank" title="外汇">外汇</a>|<a href="http://localhost:8080/futuremarket/index.jsp" target="_blank" title="期货">期货</a></span></h2><em><a href="http://localhost:8080/finance/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont mt5">
        <div class="twlist2 mb5 w94">
          <a href="http://localhost:8080/doc/104.jsp" title="美元指数强势触及84关口 欧美传声筒今竞相亮相 " target="_blank"><img src="/member/portal/demo/201305/162343172n95.jpg"/></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/104.jsp" title="美元指数强势触及84关口 欧美传声筒今竞相亮相 " target="_blank">美元指数强势触及84关口 欧美传声筒今竞相亮相 </a></h2>
            <p>美元指数高位整理，现交投于83.80附近。隔夜欧元区多国一季度GDP数据普遍逊&hellip;<a href="http://localhost:8080/doc/104.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>        
        <ul class="nlist2 w94">
            <li><a href="http://localhost:8080/doc/108.jsp" title="黄金涨跌之谜 财经郎眼" target="_blank">黄金涨跌之谜 财经郎眼</a></li>
            <li><a href="http://localhost:8080/doc/107.jsp" title="大商所加紧胶合板纤维板期货上市准备工作" target="_blank">大商所加紧胶合板纤维板期货上市准备工作</a></li>
            <li><a href="http://localhost:8080/doc/106.jsp" title="部分基金经理周一抄底上海家化被套 被迫参加股东大会" target="_blank">部分基金经理周一抄底上海家化被套 被迫参加&hellip;</a></li>
            <li><a href="http://localhost:8080/doc/105.jsp" title="杠杆基金双盈B及创业板ETF今年涨幅超40%" target="_blank">杠杆基金双盈B及创业板ETF今年涨幅超40%</a></li>
            <li><a href="http://localhost:8080/doc/102.jsp" title="A股千万富翁数创年内新低" target="_blank">A股千万富翁数创年内新低</a></li>
            <li><a href="http://localhost:8080/doc/101.jsp" title="创业板指重回千点 五大风险因素正在聚集" target="_blank">创业板指重回千点 五大风险因素正在聚集</a></li>
        </ul>
        </div>
    </div>
    
	<div class="mblk fl ml10">
    	<div class="tit"><h2>科技<span class="flt"><a href="http://localhost:8080/internet/index.jsp" target="_blank" title="互联网">互联网</a>|<a href="http://localhost:8080/it/index.jsp" target="_blank" title="IT">IT</a>|<a href="http://localhost:8080/elec/index.jsp" target="_blank" title="家电">家电</a>|<a href="http://localhost:8080/discovery/index.jsp" target="_blank" title="探索">探索</a></span></h2><em><a href="http://localhost:8080/tech/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont mt5">
        <div class="twlist2 mb5 w94">
          <a href="http://localhost:8080/doc/95.jsp" title="谷歌开发者大会开幕：地图成为最大亮点" target="_blank"><img src="/member/portal/demo/201305/16114632frwb.jpg"/></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/95.jsp" title="谷歌开发者大会开幕：地图成为最大亮点" target="_blank">谷歌开发者大会开幕：地图成为最大亮点</a></h2>
            <p>北京时间5月16日凌晨消息，谷歌2013年I/O开发者大会今天在美国加州旧金山芳&hellip;<a href="http://localhost:8080/doc/95.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>        
        <ul class="nlist2 w94 sLine pb5">
            <li><a href="http://localhost:8080/doc/100.jsp" title="英研制先进无人四旋翼直升机 可自动追踪拍摄" target="_blank">英研制先进无人四旋翼直升机 可自动追踪拍摄</a></li>
            <li><a href="http://localhost:8080/doc/99.jsp" title="联合国提倡多吃昆虫缓解粮荒：解决蛋白质短缺" target="_blank">联合国提倡多吃昆虫缓解粮荒：解决蛋白质短缺</a></li>
            <li><a href="http://localhost:8080/doc/98.jsp" title="金山称WPS月活跃用户年底有望过亿" target="_blank">金山称WPS月活跃用户年底有望过亿</a></li>
            <li><a href="http://localhost:8080/doc/97.jsp" title="富士康开辟新客户乏力：苹果公司另结新欢" target="_blank">富士康开辟新客户乏力：苹果公司另结新欢</a></li>
            <li><a href="http://localhost:8080/doc/96.jsp" title="华为中兴否认在欧盟从事不公平贸易" target="_blank">华为中兴否认在欧盟从事不公平贸易</a></li>
            <li><a href="http://localhost:8080/doc/65.jsp" title="美50名大学生建造零能耗太阳能住房" target="_blank">美50名大学生建造零能耗太阳能住房</a></li>
        </ul>
        </div>
        
        <div class="tit"><h2>健康<span class="flt"><a href="http://localhost:8080/healthcare/index.jsp" target="_blank" title="保健">保健</a>|<a href="http://localhost:8080/yangsheng/index.jsp" target="_blank" title="养生">养生</a>|<a href="http://localhost:8080/mingyi/index.jsp" target="_blank" title="名医">名医</a>|<a href="http://localhost:8080/medicine/index.jsp" target="_blank" title="药品">药品</a></span></h2><em><a href="http://localhost:8080/health/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont mt5">
        <div class="twlist2 mb5 w94">
          <a href="http://localhost:8080/doc/7.jsp" title="H7N9来袭 关爱家人的5款美食疗方" target="_blank"><img src="/member/portal/demo/201305/16160114emfy.jpg"/></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/7.jsp" title="H7N9来袭 关爱家人的5款美食疗方" target="_blank">H7N9来袭 关爱家人的5款美食疗方</a></h2>
            <p>关爱家人从一点一滴做起，保证充足的睡眠和合理的饮食，多吃蔬菜、水果和滋&hellip;<a href="http://localhost:8080/doc/7.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>        
        <ul class="nlist2 w94">
            <li><a href="http://localhost:8080/doc/115.jsp" title="十种食物吃多会丢命" target="_blank">十种食物吃多会丢命</a></li>
            <li><a href="http://localhost:8080/doc/78.jsp" title="柠檬水十大健康功效" target="_blank">柠檬水十大健康功效</a></li>
            <li><a href="http://localhost:8080/doc/77.jsp" title="感冒嗓子疼喝杯柠檬蜂蜜水" target="_blank">感冒嗓子疼喝杯柠檬蜂蜜水</a></li>
            <li><a href="http://localhost:8080/doc/57.jsp" title="“炒”菜工程的N个诀窍 如何防止肉类水分流失" target="_blank">“炒”菜工程的N个诀窍 如何防止肉类水分流失</a></li>
            <li><a href="http://localhost:8080/doc/56.jsp" title="肚子胀气爱放屁惹尴尬 盘点容易引起胀气的食物" target="_blank">肚子胀气爱放屁惹尴尬 盘点容易引起胀气的食物</a></li>
            <li><a href="http://localhost:8080/doc/47.jsp" title="千万别空腹喝的八种饮品" target="_blank">千万别空腹喝的八种饮品</a></li>
        </ul>
        </div>
    </div>
    
	<div class="mblk borL fr">
    	<div class="tit"><h2>尚品<span class="flt"><a href="http://localhost:8080/clothes/index.jsp" target="_blank" title="服装">服装</a>|<a href="http://localhost:8080/shipin/index.jsp" target="_blank" title="饰品">饰品</a>|<a href="http://localhost:8080/car/index.jsp" target="_blank" title="名车">名车</a>|<a href="http://localhost:8080/foods/index.jsp" target="_blank" title="美食">美食</a></span></h2><em><a href="http://localhost:8080/style/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont mt5">
        <div class="twlist2 mb5 w94">
          <a href="http://localhost:8080/doc/15.jsp" title="印花包臀裙轻松搞定S线条" target="_blank"><img src="/member/portal/demo/201305/161143591r2c.jpg"/></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/15.jsp" title="印花包臀裙轻松搞定S线条" target="_blank">印花包臀裙轻松搞定S线条</a></h2>
            <p>是女人都想要的S线条如何获得？也许你身材不错，个子高挑，但如果穿得不当&hellip;<a href="http://localhost:8080/doc/15.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>        
        <ul class="nlist2 w94 sLine pb5">
            <li><a href="http://localhost:8080/doc/3.jsp" title="小风衣大作为 雨天穿出好心情" target="_blank">小风衣大作为 雨天穿出好心情</a></li>
            <li><a href="http://localhost:8080/doc/76.jsp" title="黄金引疯抢 盘点那些吸睛纯金单品" target="_blank">黄金引疯抢 盘点那些吸睛纯金单品</a></li>
            <li><a href="http://localhost:8080/doc/75.jsp" title="周大福黄金首饰频曝生锈 珠宝并无鉴定证书" target="_blank">周大福黄金首饰频曝生锈 珠宝并无鉴定证书</a></li>
            <li><a href="http://localhost:8080/doc/51.jsp" title="营养丰富的西红柿炖牛肉家常做法" target="_blank">营养丰富的西红柿炖牛肉家常做法</a></li>
            <li><a href="http://localhost:8080/doc/35.jsp" title="如何鉴别优质五花肉 教你3种五花肉简易做法" target="_blank">如何鉴别优质五花肉 教你3种五花肉简易做法</a></li>
            <li><a href="http://localhost:8080/doc/29.jsp" title="从树皮衣看衣料的发展过程" target="_blank">从树皮衣看衣料的发展过程</a></li>
        </ul>
        </div>
        
        <div class="tit"><h2>旅游<span class="flt"><a href="http://localhost:8080/youji/index.jsp" target="_blank" title="游记">游记</a>|<a href="http://localhost:8080/huwai/index.jsp" target="_blank" title="户外">户外</a>|<a href="http://localhost:8080/jingdian/index.jsp" target="_blank" title="景点">景点</a>|<a href="http://localhost:8080/techan/index.jsp" target="_blank" title="特产">特产</a></span></h2><em><a href="http://localhost:8080/travel/index.jsp" target="_blank">更多 &raquo;</a></em></div>
        <div class="cont mt5">
        <div class="twlist2 mb5 w94">
          <a href="http://localhost:8080/doc/87.jsp" title="以背包客的名义 去东北感受清凉一夏" target="_blank"><img src="/member/portal/demo/201305/16100036m0td.jpg"/></a>
          <div class="in_text">
            <h2><a href="http://localhost:8080/doc/87.jsp" title="以背包客的名义 去东北感受清凉一夏" target="_blank">以背包客的名义 去东北感受清凉一夏</a></h2>
            <p>“上午在哈尔滨看冰雪，中午在大连叹海鲜，下午在沈阳赏古迹，晚上到长春听&hellip;<a href="http://localhost:8080/doc/87.jsp" target="_blank" class="blue">[详情]</a></p>
          </div>
        </div>        
        <ul class="nlist2 w94">
            <li><a href="http://localhost:8080/doc/62.jsp" title="五一欧洲游提高防范意识 少带现金别露富" target="_blank">五一欧洲游提高防范意识 少带现金别露富</a></li>
            <li><a href="http://localhost:8080/doc/36.jsp" title="五一期间江西18个旅游景点门票优惠 " target="_blank">五一期间江西18个旅游景点门票优惠 </a></li>
            <li><a href="http://localhost:8080/doc/72.jsp" title="消协：注意选择正规旅行社 出游注意留证据" target="_blank">消协：注意选择正规旅行社 出游注意留证据</a></li>
            <li><a href="http://localhost:8080/doc/55.jsp" title="“五一”机票已经升温，一些短期旅游线尤其热门" target="_blank">“五一”机票已经升温，一些短期旅游线尤其热门</a></li>
            <li><a href="http://localhost:8080/doc/54.jsp" title="“五一”假期热门航线返程机票吃紧" target="_blank">“五一”假期热门航线返程机票吃紧</a></li>
            <li><a href="http://localhost:8080/doc/43.jsp" title="江西至少有107人正在四川旅游 已报平安" target="_blank">江西至少有107人正在四川旅游 已报平安</a></li>
        </ul>
        </div>
    </div>
</section>
<!--/main_3-->

<!--main_4-->
<section class="s mt5 bor b">
	<div class="t_tit"><h2>新视界</h2><em><a href="#" target="_blank">更多 &raquo;</a></em></div>
    <div class="cont">
      <div class="mt5 w98 b">
    	<div class="cl">
          <div class="flashshow"><a href="http://localhost:8080/doc/112.jsp" title="丽江酒吧摆“艳遇佛”引游客抚摸" target="_blank"><img src="/member/portal/demo/201305/17234728zpom.jpg" alt="丽江酒吧摆“艳遇佛”引游客抚摸"/></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/112.jsp" title="丽江酒吧摆“艳遇佛”引游客抚摸" target="_blank">丽江酒吧摆“艳遇佛”引游客抚摸</a></p>
          </div>
        </div>
        <div class="cm b">
          <div class="flashshow"><a href="http://localhost:8080/doc/116.jsp" title="玛莎拉蒂车主车展砸车维权 称其有眼无珠" target="_blank"><img src="/member/upload/demo/201305/21221105osrh.jpg" alt="玛莎拉蒂车主车展砸车维权 称其有眼无珠" width="285" height="165" /></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/116.jsp" title="玛莎拉蒂车主车展砸车维权 称其有眼无珠" target="_blank">玛莎拉蒂车主车展砸车维权 称其有眼无珠</a></p>
          </div>
          <div class="flashshow"><a href="http://localhost:8080/doc/115.jsp" title="十种食物吃多会丢命" target="_blank"><img src="/member/upload/demo/201305/21221449vh03.jpg" alt="十种食物吃多会丢命" width="170" height="165" /></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/115.jsp" title="十种食物吃多会丢命" target="_blank">十种食物吃多会丢命</a></p>
          </div>
          <div class="flashshow"><a href="http://localhost:8080/doc/114.jsp" title="韩国女子团体明星美貌排行揭晓" target="_blank"><img src="/member/upload/demo/201305/21221212sg9v.jpg" alt="韩国女子团体明星美貌排行揭晓" width="170" height="165" /></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/114.jsp" title="韩国女子团体明星美貌排行揭晓" target="_blank">韩国女子团体明星美貌排行揭晓</a></p>
          </div>
          <div class="flashshow"><a href="http://localhost:8080/doc/113.jsp" title="南航新疆招空乘 千余美女角逐80岗位" target="_blank"><img src="/member/upload/demo/201305/21221241rkvn.jpg" alt="南航新疆招空乘 千余美女角逐80岗位" width="170" height="165" /></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/113.jsp" title="南航新疆招空乘 千余美女角逐80岗位" target="_blank">南航新疆招空乘 千余美女角逐80岗位</a></p>
          </div>
          <div class="flashshow"><a href="http://localhost:8080/doc/111.jsp" title="重庆“女子纤夫”再现川江船工风采" target="_blank"><img src="/member/upload/demo/201305/21221334dkal.jpg" alt="重庆“女子纤夫”再现川江船工风采" width="285" height="165" /></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/111.jsp" title="重庆“女子纤夫”再现川江船工风采" target="_blank">重庆“女子纤夫”再现川江船工风采</a></p>
          </div>
          <div class="flashshow"><a href="http://localhost:8080/doc/110.jsp" title="沈阳浑南新区一小型飞机坠毁 3人受伤" target="_blank"><img src="/member/upload/demo/201305/21221410zspv.jpg" alt="沈阳浑南新区一小型飞机坠毁 3人受伤" width="170" height="165" /></a>
            <p class="flashtext"></p>
            <p class="flash_tit"><a href="http://localhost:8080/doc/110.jsp" title="沈阳浑南新区一小型飞机坠毁 3人受伤" target="_blank">沈阳浑南新区一小型飞机坠毁 3人受伤</a></p>
          </div>
        </div>
      </div>
    </div>
</section>
<!--/main_4-->

<!--flink-->
<section class="s flink mt5">
<h2>友情链接</h2>
<p>
<a href="http://www.javapms.com" target="_blank">JAVAPMS官网</a>|
<a href="http://www.jmenhu.com" target="_blank">百姓生活网</a>
</p>
</section><!--flink-->

<!--footer--> 
<footer class="s mt5">
<a href="#">关于我们</a> | <a href="#">服务条款</a> | <a href="#">开放平台</a> | <a href="#">广告服务</a> | <a href="#">人才招聘</a> | <a href="#">客服中心</a> | <a href="#">网站导航</a> <br/>
ICP备案号：赣ICP备11006121号-1 &nbsp; Copyright &copy; 2011 - 2013 <a href="http://www.javapms.com" target="_blank"javapms.com</a> All Rights Reserved
</footer><!--/footer-->
</body>
</html>