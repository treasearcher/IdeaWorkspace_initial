<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员界面</title>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/home.css"/>
    <link rel="stylesheet" type="text/css" href="city/city.css">
    <script type="text/javascript" src="script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="script/home_ban.js"></script>
    <script type="text/javascript" src="script/eg_top_search.js"></script>
    <script type="text/javascript" src="script/city.js"></script>
    <script type="text/javascript" src="script/snncar.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.navmenu li').hover(function(){
                $('span',this).stop().css('height','2px');
                $('span',this).animate({
                    left:'0',
                    width:'100%',
                    right:'0'
                },200);
            },function(){
                $('span',this).stop().animate({
                    left:'50%',
                    width:'0'
                },200);
            });
        });
    </script>
    <!--导航登陆网页版下拉-->
    <script type="text/javascript">
        $(function () {
            var setTime;
            $(".egc-top .nav-cent .operate").hover(function () {
                var _this = $(this);
                setTime = setTimeout(function () {
                    _this.find(".sec-version").slideDown(200);
                    _this.find("i").removeClass("icon-angle-down").addClass("icon-angle-up");
                }, 200);
            }, function () {
                if (setTime) {
                    clearTimeout(setTime);
                }
                $(".egc-top .nav-cent .sec-version").slideUp(200);
                $(".egc-top .nav-cent .operate i").removeClass("icon-angle-up").addClass("icon-angle-down");
            });
        });
    </script>
    <!--底部信息下拉-->
    <script type="text/javascript">
        $(function () {
            var wind_wd = $(window).width();
            if(wind_wd<=735){
                /* $submenu.first().delay(400).slideDown(700);*/
                $('.relate .tit').on('click', function() {
                    $(this).next('.con').slideToggle()
                    $(this).parent().siblings('.items').find('.con').slideUp();
                });
            }else{
                $('.relate .tit').unbind("click");
                $('.relate .con').show();
            }
            $(window).resize(function(){
                var wind_wd = $(window).width();
                if(wind_wd<=735){
                    /* $submenu.first().delay(400).slideDown(700);*/
                    $('.relate .tit').on('click', function() {
                        $(this).next('.con').slideToggle()
                        $(this).parent().siblings('.items').find('.con').slideUp();
                    });
                }else{
                    $('.relate .tit').unbind("click");
                    $('.relate .con').show();
                }
            });
        });
    </script>

    <!--搜搜框获取焦点-->
    <script type="text/javascript">
        $(function () {
            $('.sea-ipt-txt').focus(function() {
                $(this).addClass("on");
                $('.search-btn').addClass("on");
            });
            $('.sea-ipt-txt').blur(function() {
                $(this).removeClass("on");
                $('.search-btn').removeClass("on");
            });
        });
    </script>
    <!--下拉导航关闭-->
    <script type="text/javascript">
        $(function () {
            $('.menu-mb i').click(function() {
                $(".navigation-mb-list").slideDown(300);
            });
            $('.navigation-mb-list .list-close-btn').click(function() {
                $(".navigation-mb-list").slideUp(300);
            });
        });
    </script>
    <!--stress搜索关闭-->
    <script type="text/javascript">
        $(function () {
            var setTime;
            $(".sercat .weixin").hover(function () {
                setTime = setTimeout(function () {
                    $(".sercat .wxewm").show();
                }, 300);
            }, function () {
                if (setTime) {
                    clearTimeout(setTime);
                }
                $(".sercat .wxewm").hide();
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            var scroll_heitht = $('body').offset().top;
            var isShow = true;
            $(window).scroll(function () {
                if ($(window).scrollTop() > scroll_heitht && isShow) {
                    $('.stress-search-box').slideDown(200);
                }else{
                    $('.stress-search-box').slideUp(200);
                }
            });
            $('.stress-close a').click(function(){
                isShow=false;
                $('.stress-search-box').slideUp(200).unbind(window,aa);
            });
        });
    </script>
</head>

<body>
<div class="egc-top">
    <div class="nav-cent">
        <div class="top-l">全国统一客服热线：400-877-9288</div>
        <div class="clear_fix"></div>
    </div>
</div>
<div class="navigation">
    <div class="nav-cent">
        <div class="logo"><a href="index.html"><img src="images/logo.png" width="240" /></a></div>
        <div class="city"> <span id="DY_site_name" class="red city-name Left">青岛</span>
            <div id="JS_hide_city_menu_11" class="city-select cut_handdler Left"> <a href="javascript:void(0);" class="common-bg selector">切换城市</a>
                <div id="JS_header_city_bar_box" class="hide_city_group">
                    <div class="hideMap">
                        <div class="showPanel clearfix">
                            <div class="Left mycity">
                                <div id="JS_current_city_box"> 当前城市：<strong id="JS_city_current_city">青岛</strong> </div>
                                <div id="JS_default_city_delete" style="display: none;"></div>
                            </div>
                        </div>
                        <div class="showPanel showPanel2 clearfix">
                            <div class="hot_city" id="JS_header_city_hot"> </div>
                            <div class="city_words mt10" id="JS_header_city_char"> </div>
                        </div>
                        <div class="scrollBody">
                            <div class="cityMap clearfix">
                                <table id="JS_header_city_list" class="city_list" style="margin-top: 0px;">
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                            <div class="scrollBar"> <span id="JS_header_city_bar" style="margin-top: 0px;"></span> </div>
                        </div>
                    </div>
                </div>
            </div>
            <span class="common-bg city-logo"></span> </div>
        <div class="sea">
            <div class="egc-sea-box">
                <input type="date" class="sea-ipt-txt" placeholder="搜索要查询的日期" />
                <a href="#" class="search-btn">搜索</a> </div>
        </div>
        <div class="hot-phone"> <i></i> <span class="js-change-phone">400-877-9288</span> </div>
    </div>
</div>
<ul class="navmenu">
    <li><a href="#">首页</a><span></span></li>
    <li><a href="#">增加</a><span></span></li>
    <li><a href="#">删除</a><span></span></li>
    <li><a href="#">修改</a><span></span></li>
    <li><a href="#">查询</a><span></span></li>
</ul>
<div class="clear_fix"></div>
<div class="stress-search-box row">
    <div class="stress-close"><a href="javascript:;"></a></div>
    <div class="nav-cents">
        <ul>
            <li class="logo"><a href="#"><img src="images/logo.png"  width="180"/></a></li>
            <li><a href="#">首页</a></li>
            <li><a href="#">增加</a></li>
            <li><a href="#">删除</a></li>
            <li><a href="#">修改</a></li>
            <li><a href="#">查询</a></li>
        </ul>
        <div class="seas">
            <div class="egc-sea-box">
                <input type="date" class="sea-ipt-txt" placeholder="搜索要查询的日期">
                <a href="#" class="search-btn">搜索</a> </div>
        </div>
    </div>
</div>
<div class="clear_fix"></div>
<!--所在位置-->
<div class="crumbp"> <a href="#">首页</a> <em>&gt;</em> <span>查询界面</span> </div>
<div class="mainbox">
    <!--搜索条件-->
    <div class="comfilter-bd">
        <div class="filterBox">
            <dl class="fliter-bd clearfix">
                <dt>天气：</dt>
                <dd class="clickBrandWidget"> <a class="on" href="#">不限</a> <a  class="" href="#" title="晴天"> 晴天 </a> <a  class="" href="#" title="阴天"> 阴天 </a> <a  class="" href="#" title="雨天"> 雨天 </a> <a  class="" href="#" title="小雨"> 小雨 </a> <a  class="" href="#" title="中雨"> 中雨 </a> <a  class="" href="#" title="大雨"> 大雨 </a> <a  class="" href="#" title="小雪"> 小雪 </a> <a  class="" href="#" title="中雪"> 中雪 </a> <a  class="" href="#" title="大雪"> 大雪 </a> <a  class="" href="#" title="多云"> 多云 </a> <a  class="" href="#" title="阵雨"> 阵雨 </a> <a  class="" href="#" title="雨夹雪"> 雨夹雪 </a> <a  class="" href="#" title="暴雨"> 暴雨 </a> <a  class="" href="#" title="暴雪"> 暴雪 </a> <a  class="" href="#" title="雾"> 雾 </a> <a  class="" href="#" title="霾"> 霾 </a>
                </dd>
            </dl>
            <dl class="fliter-bd clearfix">
                <dt>温度：</dt>
                <dd class="clickTagWidget"><a class="on" href="#">不限</a> <a  href="#">-20~-15</a> <a class="" href="#" title=""> -15~-10 </a> <a  class="" href="#" title=""> -10~-5 </a> <a  class="" href="#" title=""> -5~0 </a> <a  class="" href="#" title=""> 0~5 </a> <a  class="" href="#" title=""> 5~10 </a> <a  class="" href="#" title="5~10"> 10~15 </a> <a class="" href="#" title=""> 15~20 </a> <a  class="" href="#" title=""> 20~25 </a> <a  class="" href="#" title=""> 25~30 </a> <a  class="" href="#" title=""> 30~35 </a> <a  class="" href="#" title=""> -40~-35 </a> <a  class="" href="#" title=""> -35~-30 </a> <a  class="" href="#" title=""> -30~-25 </a> <a  class="" href="#" title=""> 35以上 </a> </dd>
            </dl>
            <dl class="fliter-bd clearfix">
                <dt>湿度：</dt>
                <dd class="clickTagWidget"><a class="on" href="#">不限</a> <a  href="#">-20~-15</a> <a class="" href="#" title=""> -15~-10 </a> <a  class="" href="#" title=""> -10~-5 </a> <a  class="" href="#" title=""> -5~0 </a> <a  class="" href="#" title=""> 0~5 </a> <a  class="" href="#" title=""> 5~10 </a> <a  class="" href="#" title="5~10"> 10~15 </a> <a class="" href="#" title=""> 15~20 </a> <a  class="" href="#" title=""> 20~25 </a> <a  class="" href="#" title=""> 25~30 </a> <a  class="" href="#" title=""> 30~35 </a>
            </dl>
        </div>
    </div>
</div>




<table class="table table-striped table-hover" id="table">

    <caption>天气表</caption>


    <thead >
    <th>天气</th>
    <th>温度</th>
    <th>湿度</th>
    <th>最低温度</th>
    <th>最高温度</th>
    <th>薪金</th>
    <th>操作</th>
    </thead>

    <tbody class="table table-striped">
    <c:if test="${ empty  requestScope.salList}">
        <tr>
            <td colspan="6">没有在职信息</td>
        </tr>
    </c:if>
    <c:if test="${ not  empty  requestScope.salList}">


        <c:forEach items="${  requestScope.salList }" var="j">
            <%i++;
            if(i>=10){
            k++;
            i-=10;
            }
            %>
            <tr class="<%=k%>">
                <td>${j.jid }</td>
                <td>${j.jnm }</td>
                <td>${j.jage }</td>
                <td id="${j.jid }_1">${j.pnm }</td>
                <td id="${j.jid }_2">${j.dnm }</td>
                <td id="${j.jid }_3">${j.jsal }</td>
                <td><a id="${j.jid }"  onclick="writeEnable(this)"
                       style="cursor:pointer">编辑</a>
                    <a name="${j.jid }"  onclick="cancel(this)"
                       style="cursor:pointer">取消编辑</a>
                    <a name="${j.jid }" style="cursor:pointer" onclick="keep(this)">保存</a>
                    <a name="${j.jid}" onclick="del(this)" style="cursor:pointer">辞退</a>
                </td>
            </tr>

        </c:forEach>
    </c:if>

    </tbody>
    <tfoot><a href="jobInfo_add.action"></a></tfoot>
</table>





<script>
    $(function(){
        var t=null,$this,i=0;
        //品牌
        $(".brand-all").bind({
            mouseenter:function(){
                $(this).find(".otherbrand").show();
            },
            mouseleave:function(){
                $(this).find(".otherbrand").hide();
            }
        });

    });
</script>
<script type="text/javascript">
    $(".hoverWidget").each(function() {
        $(this).mouseenter(function() {
            $(this).addClass("active")
        }).mouseleave(function() {
            $(this).removeClass("active")
        })
    });
</script>
<div id="leftsead">
    <ul>
        <li>
            <a id="top_btn">
                <img src="images/foot03/ll06.png" width="47" height="49" class="hides"/>
                <img src="images/foot03/l06.png" width="47" height="49" class="shows" />
            </a>
        </li>

        <li>
            <a href="">
                <img src="images/foot03/ll03.png"  width="47" height="49" class="hides"/>
                <img src="images/foot03/l03.png" width="47" height="49" class="shows" />
            </a>
        </li>

        <li>
            <a href="">
                <img src="images/foot03/ll02.png" width="166" height="49" class="hides"/>
                <img src="images/foot03/l04.png" width="47" height="49" class="shows" />
            </a>
        </li>

        <li>
            <a class="youhui">
                <img src="images/foot03/l02.png" width="47" height="49" class="shows" />
                <img src="images/foot03/zfew.jpg" width="196" height="205" class="hides" usemap="#taklhtml"/>
            </a>
        </li>



    </ul>
</div><!--leftsead end-->


<script type="text/javascript">
    $(document).ready(function(){

        $("#leftsead a").hover(function(){
            if($(this).prop("className")=="youhui"){
                $(this).children("img.hides").show();
            }else{
                $(this).children("img.hides").show();
                $(this).children("img.shows").hide();
                $(this).children("img.hides").animate({marginRight:'0px'},'slow');
            }
        },function(){
            if($(this).prop("className")=="youhui"){
                $(this).children("img.hides").hide('slow');
            }else{
                $(this).children("img.hides").animate({marginRight:'-143px'},'slow',function(){$(this).hide();$(this).next("img.shows").show();});
            }
        });

        $("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 600);});

    });
</script>
<script type="text/javascript">
    $(function(){
        $(".selecter").each(function(){
            var s=$(this);
            var z=parseInt(s.css("z-index"));
            var dt=$(this).children("dt");
            var dd=$(this).children("dd");
            var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
            var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
            dt.click(function(){dd.is(":hidden")?_show():_hide();});
            dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
            $("body").click(function(i){ !$(i.target).parents(".selecter").first().is(s) ? _hide():"";});
        })
    })
</script>
</body>
</html>