$(document).ready(function(){
    /* $('.main_office_sec_content>li').on('click',function(){
        $(this).toggleClass('min_heigth');
        $(this).children('.office_toggle').stop().toggle(300);
        $(this).children().stop().slideToggle();
    }); */
});

$(document).ready(function(){
    $('.main_office_sec_content>li').on('click',function(){
        $(this).toggleClass('tnt');
        $(this).children('.office_toggle').stop().toggle(300);
        $(this).children().stop().slideToggle();
    });

/*     $('.main_office_sec_content>li').on('click',function(){
        $(this).stop().toggleClass('margintest');
        $('.margintest').parents('ul').css('padding-bottom','1000px');
        $(this).children('.office_toggle').stop().toggle(300);
        $(this).children().stop().slideToggle();
    });     */
});