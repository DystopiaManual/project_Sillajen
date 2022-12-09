$(document).ready(function(){


    // a href="#" 이벤트제거
    $("a").click(function() {
        if ($(this).attr("href") == "#") {
        return false;
        }
    });


    
    $('.header_gnb').mouseenter(function(){
        $(this).children('.main_2depth_menu').stop().slideDown('fast');
        $('header').css({backgroundColor:'#2b5db2',opacity:'1' ,transition:'0.5s'});
        
    });
    $('.header_gnb').mouseleave(function(){
        $(this).children('.main_2depth_menu').stop().slideUp('fast');
        $('header').css({backgroundColor:'#434343',opacity:'0.8' ,transition:'0.5s'});

    });

    // GNB Right
    $('.menus').on('click',function(e){

        e.preventDefault();
        $('.sitemap').stop().fadeIn();
    });
    $('.close').on('click',function(e){
        e.preventDefault();
        $('.sitemap').stop().fadeOut();
    });

    $('.kor').on('click',function(e){

        e.preventDefault();      
        $(this).toggleClass('main_header_lang', 500);
        $('.select_lang').stop().slideToggle();
    });

    // 새로고침 했을 때 스크롤이 최상단이 아닐 경우, 헤더 배경색 적용
    if($('html,body').scrollTop() > 0) {
        $('header').addClass('scrolled');
        }
    $(window).resize(function(){
        if($('html,body').scrollTop() > 0) {
            $('header').addClass('scrolled');
        }
      });

});
