/*
<<<<<<< HEAD
Authorï¿½ï¿½ï¿½ÅºÆ»ï¿½
Dateï¿½ï¿½2011.11.25 0:12
Versionï¿½ï¿½SimpleTree 1.0
*/

$(function () {
    $.fn.extend({
        SimpleTree: function (options) {

            //ï¿½ï¿½Ê¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
            var option = $.extend({
                click: function (a) {
                }
            }, options);

            option.tree = this;
            /* ï¿½Ú²ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¶Ôµï¿½Ç°ï¿½Ëµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½Ô±ï¿½ï¿½Ú¶ï¿½ï¿½ï¿½ï¿½ï¿½Ê¹ï¿½Ã¸Ã²Ëµï¿½ï¿½ï¿½ */

            option._init = function () {
                /*
                 * ï¿½ï¿½Ê¼ï¿½ï¿½ï¿½Ëµï¿½Õ¹ï¿½ï¿½×´Ì¬ï¿½ï¿½ï¿½Ô¼ï¿½ï¿½Ö²ï¿½Úµï¿½ï¿½ï¿½ï¿½Ê½
                 */
                this.tree.find("ul ul").hide();
                /* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¼ï¿½ï¿½Ëµï¿½ */
                this.tree.find("ul ul").prev("li").removeClass("open");
                /* ï¿½Æ³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¼ï¿½ï¿½Ëµï¿½ï¿½ï¿½ï¿½Úµï¿½ï¿½ open ï¿½ï¿½Ê½ */

                this.tree.find("ul ul[show='true']").show();
                /* ï¿½ï¿½Ê¾ show ï¿½ï¿½ï¿½ï¿½Îª true ï¿½ï¿½ï¿½Ó¼ï¿½ï¿½Ëµï¿½ */
                this.tree.find("ul ul[show='true']").prev("li").addClass("open");
                /* ï¿½ï¿½ï¿½ show ï¿½ï¿½ï¿½ï¿½Îª true ï¿½ï¿½ï¿½Ó¼ï¿½ï¿½Ëµï¿½ï¿½ï¿½ï¿½Úµï¿½ï¿½ open ï¿½ï¿½Ê½ */
            }
            /* option._init() End */

            /* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ð³ï¿½ï¿½ï¿½ï¿½Ó²ï¿½ï¿½ï¿½Ó¦ï¿½ï¿½ï¿½ï¿½ï¿½Â¼ï¿½ */
            this.find("a").click(function () {
                $(this).parent("li").click();
                return false;
            });

            /* ï¿½Ëµï¿½ï¿½ï¿½ <li> ï¿½ï¿½ï¿½Üµï¿½ï¿½ï¿½ */
            this.find("li").click(function () {
                /*
                 * ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ëµï¿½ï¿½ï¿½ <li>
                 * 1.ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½Ô¶ï¿½ï¿½ï¿½Äµï¿½ï¿½ï¿½ï¿½Â¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ <li> ï¿½ï¿½Ç©ï¿½ÐµÄµï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ý¹ï¿½È¥
                 * 2.ï¿½Þ¸Äµï¿½Ç°ï¿½Ëµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó²Ëµï¿½ï¿½ï¿½ï¿½ï¿½Ê¾×´Ì¬ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ true ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îª falseï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Îª trueï¿½ï¿½
                 * 3.ï¿½ï¿½ï¿½Â³ï¿½Ê¼ï¿½ï¿½ï¿½Ëµï¿½
                 */

                option.click($(this).find("a")[0]);
                /* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ */

                /*
                 * ï¿½ï¿½ï¿½ï¿½ï¿½Ç°ï¿½Úµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó²Ëµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ show ï¿½ï¿½ï¿½Ôµï¿½ÖµÎª trueï¿½ï¿½ï¿½ï¿½ï¿½Þ¸ï¿½ï¿½ï¿½ show ï¿½ï¿½ï¿½ï¿½Îª false
                 * ï¿½ï¿½ï¿½ï¿½ï¿½Þ¸ï¿½ï¿½ï¿½ show ï¿½ï¿½ï¿½ï¿½Îª true
                 */
                if ($(this).next("ul").attr("show") == "true") {
                    $(this).next("ul").attr("show", "false");
                } else {
                    $(this).next("ul").attr("show", "true");
                }

                /* ï¿½ï¿½Ê¼ï¿½ï¿½ï¿½Ëµï¿½ */
                option._init();
            });

            /* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ð¸ï¿½ï¿½Úµï¿½ï¿½ï¿½Ê½ */
            this.find("ul").prev("li").addClass("folder");

            /* ï¿½ï¿½ï¿½Ã½Úµã¡°ï¿½Ç·ï¿½ï¿½ï¿½ï¿½ï¿½Ó½Úµã¡±ï¿½ï¿½ï¿½ï¿½ */
            this.find("li").find("a").attr("hasChild", false);
            this.find("ul").prev("li").find("a").attr("hasChild", true);

            /* ï¿½ï¿½Ê¼ï¿½ï¿½ï¿½Ëµï¿½ */
            option._init();

        }/* SimpleTree Function End */

    });
=======
Author£ºÕÅºÆ»ª
Date£º2011.11.25 0:12
Version£ºSimpleTree 1.0
*/

$(function(){
	$.fn.extend({
		SimpleTree:function(options){
			
			//³õÊ¼»¯²ÎÊý
			var option = $.extend({
				click:function(a){ }
			},options);
			
			option.tree=this;	/* ÔÚ²ÎÊý¶ÔÏóÖÐÌí¼Ó¶Ôµ±Ç°²Ëµ¥Ê÷µÄÒýÓÃ£¬ÒÔ±ãÔÚ¶ÔÏóÖÐÊ¹ÓÃ¸Ã²Ëµ¥Ê÷ */
			
			option._init=function(){
				/*
				 * ³õÊ¼»¯²Ëµ¥Õ¹¿ª×´Ì¬£¬ÒÔ¼°·Ö²æ½ÚµãµÄÑùÊ½
				 */				
				this.tree.find("ul ul").hide();	/* Òþ²ØËùÓÐ×Ó¼¶²Ëµ¥ */
				this.tree.find("ul ul").prev("li").removeClass("open");	/* ÒÆ³ýËùÓÐ×Ó¼¶²Ëµ¥¸¸½ÚµãµÄ open ÑùÊ½ */
				
				this.tree.find("ul ul[show='true']").show();	/* ÏÔÊ¾ show ÊôÐÔÎª true µÄ×Ó¼¶²Ëµ¥ */
				this.tree.find("ul ul[show='true']").prev("li").addClass("open");	/* Ìí¼Ó show ÊôÐÔÎª true µÄ×Ó¼¶²Ëµ¥¸¸½ÚµãµÄ open ÑùÊ½ */
			}/* option._init() End */
			
			/* ÉèÖÃËùÓÐ³¬Á´½Ó²»ÏìÓ¦µ¥»÷ÊÂ¼þ */
			this.find("a").click(function(){ $(this).parent("li").click(); return false; });
			
			/* ²Ëµ¥Ïî <li> ½ÓÊÜµ¥»÷ */
			this.find("li").click(function(){
				/*
				 * µ±µ¥»÷²Ëµ¥Ïî <li>
				 * 1.´¥·¢ÓÃ»§×Ô¶¨ÒåµÄµ¥»÷ÊÂ¼þ£¬½«¸Ã <li> ±êÇ©ÖÐµÄµÚÒ»¸ö³¬Á´½Ó×öÎª²ÎÊý´«µÝ¹ýÈ¥
				 * 2.ÐÞ¸Äµ±Ç°²Ëµ¥ÏîËùÊôµÄ×Ó²Ëµ¥µÄÏÔÊ¾×´Ì¬£¨Èç¹ûµÈÓÚ true ½«ÆäÉèÖÃÎª false£¬·ñÔò½«ÆäÉèÖÃÎª true£©
				 * 3.ÖØÐÂ³õÊ¼»¯²Ëµ¥
				 */
				
				option.click($(this).find("a")[0]);	/* ´¥·¢µ¥»÷ */
				
				/* 
				 * Èç¹ûµ±Ç°½ÚµãÏÂÃæ°üº¬×Ó²Ëµ¥£¬²¢ÇÒÆä show ÊôÐÔµÄÖµÎª true£¬ÔòÐÞ¸ÄÆä show ÊôÐÔÎª false
				 * ·ñÔòÐÞ¸ÄÆä show ÊôÐÔÎª true
				 */
				if($(this).next("ul").attr("show")=="true"){
					$(this).next("ul").attr("show","false");					
				}else{
					$(this).next("ul").attr("show","true");
				}
				
				/* ³õÊ¼»¯²Ëµ¥ */
				option._init();
			});
			
			/* ÉèÖÃËùÓÐ¸¸½ÚµãÑùÊ½ */
			this.find("ul").prev("li").addClass("folder");
			
			/* ÉèÖÃ½Úµã¡°ÊÇ·ñ°üº¬×Ó½Úµã¡±ÊôÐÔ */
			this.find("li").find("a").attr("hasChild",false);
			this.find("ul").prev("li").find("a").attr("hasChild",true);
			
			/* ³õÊ¼»¯²Ëµ¥ */
			option._init();
			
		}/* SimpleTree Function End */
		
	});
>>>>>>> origin/master
});