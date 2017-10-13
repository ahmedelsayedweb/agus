/*
| ----------------------------------------------------------------------------------
| TABLE OF CONTENT
| ----------------------------------------------------------------------------------
-SETTING
-Preloader
-Sticky Header
-Scroll Animation
-Animated WOW
-Dropdown Menu Fade
-Menu Android
-Disable Mobile Animated
-Animated Entrances
-Chars Start
-Parallax(Jarallax)
-Video player
-Loader blocks
-Accordion
-Tooltip
-Zoom Images
-Main slider
-OWL Sliders
*/



jQuery(document).ready(function() {

    "use strict";


/////////////////////////////////////////////////////////////////
// SETTING
/////////////////////////////////////////////////////////////////

    var windowHeight = jQuery(window).height();
    var windowWidth = jQuery(window).width();


    var tabletWidth = 767;
    var mobileWidth = 640;



/////////////////////////////////////////////////////////////////
// Preloader
/////////////////////////////////////////////////////////////////


    var jQuerypreloader = jQuery('#page-preloader'),
    jQueryspinner   = jQuerypreloader.find('.spinner-loader');
    jQueryspinner.fadeOut();
    jQuerypreloader.delay(50).fadeOut('slow');



/////////////////////////////////////
//  Sticky Header
/////////////////////////////////////


    if (windowWidth > tabletWidth) {

        var headerSticky = jQuery(".l-theme").data("header");
        var headerTop = jQuery(".l-theme").data("header-top");

        if (headerSticky.length) {
            jQuery(window).on('scroll', function() {
                var winH = jQuery(window).scrollTop();
                var jQuerypageHeader = jQuery('.l-theme');
                if (winH > headerTop) {

                    jQuery('.yamm').addClass("animated");
                    jQuery('.yamm').addClass("animation-done");
                    jQuery('.yamm').addClass("bounce");
                    jQuerypageHeader.addClass('sticky');

                } else {

                    jQuery('.yamm').removeClass("bounce");
                    jQuery('.yamm').removeClass("animated");
                    jQuery('.yamm').removeClass("animation-done");
                    jQuerypageHeader.removeClass('sticky');
                }
            });
        }
    }



/////////////////////////////////////
//  Scroll Animation
/////////////////////////////////////


if (jQuery('.wow').length > 0) {
    window.sr = ScrollReveal({
        reset:true,
        duration: 100,
        delay: 200
    });

    sr.reveal('.wow');
  }



/////////////////////////////////////////////////////////////////
//   Dropdown Menu Fade
/////////////////////////////////////////////////////////////////


    jQuery(".dropdown").hover(
        function() {
            jQuery('.dropdown-menu', this).stop(true, true).slideDown("fast");
            jQuery(this).toggleClass('open');
        },
        function() {
            jQuery('.dropdown-menu', this).stop(true, true).slideUp("fast");
            jQuery(this).toggleClass('open');
        }
    );


    jQuery(".yamm .navbar-nav>li").hover(
        function() {
            jQuery('.dropdown-menu', this).fadeIn("fast");
        },
        function() {
            jQuery('.dropdown-menu', this).fadeOut("fast");
        });


    window.prettyPrint && prettyPrint();
    jQuery(document).on('click', '.yamm .dropdown-menu', function(e) {
        e.stopPropagation();
    });


    jQuery(".yamm .navbar-collapse .nav > li > a").hover(
        function() {
            jQuery('.navbar-collapse').addClass("open");
        },
        function() {
            jQuery('.navbar-collapse').removeClass("open");
        });


/////////////////////////////////////
//  Menu Android
/////////////////////////////////////

jQuery( '.navbar-nav li:has(ul)' ).doubleTapToGo();



/////////////////////////////////////
//  Search Animation
/////////////////////////////////////



    jQuery('.search-trigger, .modal-search__close').on('click', function() {
        jQuery('.modal-search').toggleClass('open');
    });





/////////////////////////////////////
//  Disable Mobile Animated
/////////////////////////////////////

    if (windowWidth < mobileWidth) {

        jQuery("body").removeClass("animated-css");

    }


        jQuery('.animated-css .animated:not(.animation-done)').waypoint(function() {

                var animation = jQuery(this).data('animation');

                jQuery(this).addClass('animation-done').addClass(animation);

        }, {
                        triggerOnce: true,
                        offset: '90%'
        });



//////////////////////////////
// Parallax(Jarallax)
//////////////////////////////

  if (jQuery('.jarallax').length > 0) {

      jQuery('.jarallax').jarallax({
             speed: 0.2
         })
  }


//////////////////////////////
// Animated Entrances
//////////////////////////////



    if (windowWidth > 1200) {

        jQuery(window).scroll(function() {
                jQuery('.animatedEntrance').each(function() {
                        var imagePos = jQuery(this).offset().top;

                        var topOfWindow = jQuery(window).scrollTop();
                        if (imagePos < topOfWindow + 400) {
                                        jQuery(this).addClass("slideUp"); // slideUp, slideDown, slideLeft, slideRight, slideExpandUp, expandUp, fadeIn, expandOpen, bigEntrance, hatch
                        }
                });
        });

    }



  /////////////////////////////////////
  //  Chars Start
  /////////////////////////////////////


    if (jQuery('body').length) {
        jQuery(window).on('scroll', function() {
            var winH = jQuery(window).scrollTop();

            jQuery('.b-progress-list').waypoint(function() {
                jQuery('.js-chart').each(function() {
                    CharsStart();
                });
            }, {
                offset: '80%'
            });
        });
    }


    function CharsStart() {

        jQuery('.js-chart').easyPieChart({
            barColor: false,
            trackColor: false,
            scaleColor: false,
            scaleLength: false,
            lineCap: false,
            lineWidth: false,
            size: false,
            animate: 5000,

            onStep: function(from, to, percent) {
                jQuery(this.el).find('.js-percent').text(Math.round(percent));
            }
        });
    }



/////////////////////////////////////
//  Video player
/////////////////////////////////////


if (jQuery('.player').length > 0) {
  jQuery(".player").flowplayer();
}



/////////////////////////////////////
//  Loader blocks
/////////////////////////////////////


    jQuery( ".js-scroll-next" ).on( "click", function() {

        var hiddenContent =  jQuery( ".js-scroll-next + .js-scroll-content") ;

        jQuery(".js-scroll-next").hide() ;
        hiddenContent.show() ;
        hiddenContent.addClass("animated");
        hiddenContent.addClass("animation-done");
        hiddenContent.addClass("bounceInUp");

    });



/////////////////////////////////////////////////////////////////
// Accordion
/////////////////////////////////////////////////////////////////

    jQuery(".btn-collapse").on('click', function () {
            jQuery(this).parents('.panel-group').children('.panel').removeClass('panel-default');
            jQuery(this).parents('.panel').addClass('panel-default');
            if (jQuery(this).is(".collapsed")) {
                jQuery('.panel-title').removeClass('panel-passive');
            }
            else {jQuery(this).next().toggleClass('panel-passive');
        };
    });




/////////////////////////////////////
//  Tooltip
/////////////////////////////////////


    jQuery('.link-tooltip-1').tooltip({
    template: '<div class="tooltip tooltip-1" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
  });
    jQuery('.link-tooltip-2').tooltip({
    template: '<div class="tooltip tooltip-2" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
  });





/////////////////////////////////////
//  Zoom Images
/////////////////////////////////////



if (jQuery('.js-zoom-gallery').length > 0) {
    jQuery('.js-zoom-gallery').each(function() { // the containers for all your galleries
        jQuery(this).magnificPopup({
            delegate: '.js-zoom-gallery__item', // the selector for gallery item
            type: 'image',
            gallery: {
              enabled:true
            },
      mainClass: 'mfp-with-zoom', // this class is for CSS animation below

      zoom: {
        enabled: true, // By default it's false, so don't forget to enable it

        duration: 300, // duration of the effect, in milliseconds
        easing: 'ease-in-out', // CSS transition easing function

        // The "opener" function should return the element from which popup will be zoomed in
        // and to which popup will be scaled down
        // By defailt it looks for an image tag:
        opener: function(openerElement) {
          // openerElement is the element on which popup was initialized, in this case its <a> tag
          // you don't need to add "opener" option if this code matches your needs, it's defailt one.
          return openerElement.is('img') ? openerElement : openerElement.find('img');
        }
      }
        });
    });
  }


if (jQuery('.js-zoom-images').length > 0) {
    jQuery('.js-zoom-images').magnificPopup({
      type: 'image',
      mainClass: 'mfp-with-zoom', // this class is for CSS animation below

      zoom: {
        enabled: true, // By default it's false, so don't forget to enable it

        duration: 300, // duration of the effect, in milliseconds
        easing: 'ease-in-out', // CSS transition easing function

        // The "opener" function should return the element from which popup will be zoomed in
        // and to which popup will be scaled down
        // By defailt it looks for an image tag:
        opener: function(openerElement) {
          // openerElement is the element on which popup was initialized, in this case its <a> tag
          // you don't need to add "opener" option if this code matches your needs, it's defailt one.
          return openerElement.is('img') ? openerElement : openerElement.find('img');
        }
      }
    });

  }






////////////////////////////////////////////
// Main slider
///////////////////////////////////////////


    if (jQuery('#main-slider').length > 0) {

        var sliderWidth = jQuery("#main-slider").data("slider-width");
        var sliderHeigth = jQuery("#main-slider").data("slider-height");
        var sliderArrows = jQuery("#main-slider").data("slider-arrows");
        var sliderButtons = jQuery("#main-slider").data("slider-buttons");

        jQuery( '#main-slider' ).sliderPro({
            width:  sliderWidth,
            height: sliderHeigth,
            arrows: sliderArrows,
            buttons: sliderButtons,
            fade: true,
            fullScreen: true,
            autoplay: true
        });
    }



/////////////////////////////////////////////////////////////////
// OWL Sliders
/////////////////////////////////////////////////////////////////

    var Core = {

        initialized: false,

        initialize: function() {

                if (this.initialized) return;
                this.initialized = true;

                this.build();

        },

        build: function() {

        // Owl Carousel

            this.initOwlCarousel();
        },
        initOwlCarousel: function(options) {

            jQuery(".enable-owl-carousel").each(function(i) {
                var jQueryowl = jQuery(this);

                var itemsData = jQueryowl.data('items');
                var navigationData = jQueryowl.data('navigation');
                var paginationData = jQueryowl.data('pagination');
                var singleItemData = jQueryowl.data('single-item');
                var autoPlayData = jQueryowl.data('auto-play');
                var transitionStyleData = jQueryowl.data('transition-style');
                var mainSliderData = jQueryowl.data('main-text-animation');
                var afterInitDelay = jQueryowl.data('after-init-delay');
                var stopOnHoverData = jQueryowl.data('stop-on-hover');
                var min480 = jQueryowl.data('min480');
                var min768 = jQueryowl.data('min768');
                var min992 = jQueryowl.data('min992');
                var min1200 = jQueryowl.data('min1200');
				jQuery(function() {
                jQuery(".enable-owl-carousel").owlCarousel({
                    navigation : navigationData,
                    pagination: paginationData,
                    singleItem : singleItemData,
                    autoPlay : autoPlayData,
                    transitionStyle : transitionStyleData,
                    stopOnHover: stopOnHoverData,
                    navigationText : ["<i></i>","<i></i>"],
                    items: itemsData,
                    itemsCustom:[
                                    [0, 1],
                                    [465, min480],
                                    [750, min768],
                                    [975, min992],
                                    [1185, min1200]
                    ],
                    afterInit: function(elem){
                                if(mainSliderData){
                                        setTimeout(function(){
                                                jQuery('.main-slider_zoomIn').css('visibility','visible').removeClass('zoomIn').addClass('zoomIn');
                                                jQuery('.main-slider_fadeInLeft').css('visibility','visible').removeClass('fadeInLeft').addClass('fadeInLeft');
                                                jQuery('.main-slider_fadeInLeftBig').css('visibility','visible').removeClass('fadeInLeftBig').addClass('fadeInLeftBig');
                                                jQuery('.main-slider_fadeInRightBig').css('visibility','visible').removeClass('fadeInRightBig').addClass('fadeInRightBig');
                                        }, afterInitDelay);
                                    }
                    },
                    beforeMove: function(elem){
                        if(mainSliderData){
                                jQuery('.main-slider_zoomIn').css('visibility','hidden').removeClass('zoomIn');
                                jQuery('.main-slider_slideInUp').css('visibility','hidden').removeClass('slideInUp');
                                jQuery('.main-slider_fadeInLeft').css('visibility','hidden').removeClass('fadeInLeft');
                                jQuery('.main-slider_fadeInRight').css('visibility','hidden').removeClass('fadeInRight');
                                jQuery('.main-slider_fadeInLeftBig').css('visibility','hidden').removeClass('fadeInLeftBig');
                                jQuery('.main-slider_fadeInRightBig').css('visibility','hidden').removeClass('fadeInRightBig');
                        }
                    },
                    afterMove: sliderContentAnimate,
                    afterUpdate: sliderContentAnimate,
                });
            });
});
            function sliderContentAnimate(elem){
                var jQueryelem = elem;
                var afterMoveDelay = jQueryelem.data('after-move-delay');
                var mainSliderData = jQueryelem.data('main-text-animation');
                if(mainSliderData){
                    setTimeout(function(){
                        jQuery('.main-slider_zoomIn').css('visibility','visible').addClass('zoomIn');
                        jQuery('.main-slider_slideInUp').css('visibility','visible').addClass('slideInUp');
                        jQuery('.main-slider_fadeInLeft').css('visibility','visible').addClass('fadeInLeft');
                        jQuery('.main-slider_fadeInRight').css('visibility','visible').addClass('fadeInRight');
                        jQuery('.main-slider_fadeInLeftBig').css('visibility','visible').addClass('fadeInLeftBig');
                        jQuery('.main-slider_fadeInRightBig').css('visibility','visible').addClass('fadeInRightBig');
                    }, afterMoveDelay);
                }
            }
        },

    };

    Core.initialize();

});

