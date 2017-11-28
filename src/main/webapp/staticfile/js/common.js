$(document).ready(function(){

    $(".header li").hover(
        function(){$(this).addClass("hover").find(".hidebox").show();},
        function(){$(this).removeClass("hover").find(".hidebox").hide();}
    );

    $(".lastrow li").hover(
        function(){$(this).addClass("hover").find(".hidebox").show();},
        function(){$(this).removeClass("hover").find(".hidebox").hide();}
    );

    $(".projectbox_left .top p").hover(
        function(){$(this).addClass("hover"); $(".projectbox_left .top .hidebox").show();}
    );

    $(".projectbox_left .top").hover(
        function(){$(this).removeClass("hover"); $(".projectbox_left .top .hidebox").hide();;}
    )
});

//tab切换
;(function($){

    $.fn.tabso=function( options ){

        var opts=$.extend({},$.fn.tabso.defaults,options );

        return this.each(function(i){
            var _this=$(this);
            var $menus=_this.children( opts.menuChildSel );
            var $container=$( opts.cntSelect ).eq(i);

            if( !$container) return;

            if( opts.tabStyle=="move"||opts.tabStyle=="move-fade"||opts.tabStyle=="move-animate" ){
                var step=0;
                if( opts.direction=="left"){
                    step=$container.children().children( opts.cntChildSel ).outerWidth(true);
                }else{
                    step=$container.children().children( opts.cntChildSel ).outerHeight(true);
                }
            }

            if( opts.tabStyle=="move-animate" ){ var animateArgu=new Object();	}

            $menus[ opts.tabEvent]( function(){
                var index=$menus.index( $(this) );
                $( this).addClass( opts.onStyle )
                    .siblings().removeClass( opts.onStyle );
                switch( opts.tabStyle ){
                    case "fade":
                        if( !($container.children( opts.cntChildSel ).eq( index ).is(":animated")) ){
                            $container.children( opts.cntChildSel ).eq( index ).siblings().css( "display", "none")
                                .end().stop( true, true ).fadeIn( opts.aniSpeed );
                        }
                        break;
                    case "move":
                        $container.children( opts.cntChildSel ).css(opts.direction,-step*index+"px");
                        break;
                    case "move-fade":
                        if( $container.children( opts.cntChildSel ).css(opts.direction)==-step*index+"px" ) break;
                        $container.children( opts.cntChildSel ).stop(true).css("opacity",0).css(opts.direction,-step*index+"px").animate( {"opacity":1},opts.aniSpeed );
                        break;
                    case "move-animate":
                        animateArgu[opts.direction]=-step*index+"px";
                        $container.children( opts.cntChildSel ).stop(true).animate( animateArgu,opts.aniSpeed,opts.aniMethod );
                        break;
                    default:
                        $container.children( opts.cntChildSel ).eq( index ).css( "display", "block")
                            .siblings().css( "display","none" );
                }

            });

            $menus.eq(0)[ opts.tabEvent ]();

        });
    };

    $.fn.tabso.defaults={
        cntSelect : ".content_wrap",
        tabEvent : "mouseover",
        tabStyle : "normal",
        direction : "top",
        aniMethod : "swing",
        aniSpeed : "fast",
        onStyle : "current",
        menuChildSel : "*",
        cntChildSel : "*"
    };

})(jQuery);

//吸顶



//
(function($){
    $.fn.capacityFixed1 = function(options) {
        var opts = $.extend({},$.fn.capacityFixed1.deflunt,options);
        var FixedFun = function(element) {
            var top = opts.top;
            element.css({
                "top":top
            });
            $(window).scroll(function() {
                var scrolls = $(this).scrollTop();
                if (scrolls > top) {

                    if (window.XMLHttpRequest) {
                        element.css({
                            position: "fixed",
                            top: 60
                        });
                    } else {
                        element.css({
                            top: scrolls
                        });
                    }
                }else {
                    element.css({
                        position: "absolute",
                        top: top
                    });
                }
            });
            element.find(".close-ico").click(function(event){
                element.remove();
                event.preventDefault();
            })
        };
        return $(this).each(function() {
            FixedFun($(this));
        });
    };
    $.fn.capacityFixed1.deflunt={
        right : 0,//相对于页面宽度的右边定位
        top:66
    };
})(jQuery);


//
(function($){
    $.fn.capacityFixed2 = function(options) {
        var opts = $.extend({},$.fn.capacityFixed2.deflunt,options);
        var FixedFun = function(element) {
            var top = opts.top;
            element.css({
                "top":top
            });
            $(window).scroll(function() {
                var scrolls = $(this).scrollTop();
                if (scrolls > top) {

                    if (window.XMLHttpRequest) {
                        element.css({
                            position: "fixed",
                            top: 60
                        });
                    } else {
                        element.css({
                            top: scrolls
                        });
                    }
                }else {
                    element.css({
                        position: "absolute",
                        top: top
                    });
                }
            });
            element.find(".close-ico").click(function(event){
                element.remove();
                event.preventDefault();
            })
        };
        return $(this).each(function() {
            FixedFun($(this));
        });
    };
    $.fn.capacityFixed2.deflunt={
        right : 0,//相对于页面宽度的右边定位
        top:116
    };
})(jQuery);


//弹出
$(document).ready(function($){
    $('.senior').click(function(){
        $('.popover').slideDown();
    })
    $('.close').click(function(){
        $('.popover').slideUp();

    })


    $('.jian').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('.popover1').slideDown(200);
    })
    $('.close1').click(function(){
        $('.theme-mask').hide();
        $('.popover1').slideUp(200);

    })

    $('.editlink').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('.editboxmax').show();
    })
    $('.close2').click(function(){
        $('.theme-mask').hide();
        $('.editboxmax').hide();

    })


    $('.del').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('#tan2').slideDown(200);
    })
    $('.close').click(function(){
        $('.theme-mask').hide();
        $('#tan2').slideUp(200);

    })

    $('.jin').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('.popover3').slideDown(200);
    })
    $('.close').click(function(){
        $('.theme-mask').hide();
        $('.popover3').slideUp(200);

    })

    $('.add').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('.uploadimgbox').slideDown(200);
    })
    $('.upres,.close2').click(function(){
        $('.theme-mask').hide();
        $('.uploadimgbox').slideUp(200);

    })

    $('.gonggao').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('.popover6').slideDown(200);
    })
    $('.popover6 .close').click(function(){
        $('.theme-mask').hide();
        $('.popover6').slideUp(200);

    })


    $('.mmlink').click(function(){
        $('.theme-mask').show();
        $('.theme-mask').height($(document).height());
        $('.mmbox').slideDown(200);
    })
    $('.mmbox .close').click(function(){
        $('.theme-mask').hide();
        $('.mmbox').slideUp(200);

    })


})

$(function(){
    $('.man').each(function(index){

        //隐藏所有分类的第二行
        var $category = $('.man:eq('+index+') dl:gt(9)')
        $category.hide();

        var $toggelBtn=$(this).find('.bt');
        var $toggelText=$(this).find('.bt');

        $toggelBtn.click(function(){
            if($category.is(":visible")){
                $category.hide();
                $toggelBtn.css("background","url(images/down.jpg)no-repeat right center ");
                $toggelText.text("展开全部");

            }else{
                $category.show();
                $toggelBtn.css("background","url(images/up.jpg)no-repeat right center ");
                $toggelText.text("收起全部");
            }

            return false;
        });

    });

    function formSubmit (url,sTarget){
        document.forms[0].target = sTarget
        document.forms[0].action = url;
        document.forms[0].submit();
        return true;
    };
});