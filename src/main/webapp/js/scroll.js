$(document).ready(function(){

    $(document).on('scroll',function(){
        var scrT = $(this).scrollTop();
        console.log('현재 scrollTop = '+scrT);
        if(scrT<=300){
            $('header').css({backgroundColor:'rgba(0,0,0,0.5)', transition:'0.5s'});
            $('.top').fadeOut();
            
        }else{
            $('header').css({backgroundColor:'#2b5db2',opacity:'1' ,transition:'0.5s'});
            $('.top').css({opacity:'0.7'}).fadeIn();
			
        }
		
		
		
    });

    $('.top').on('click',function(e){
        e.preventDefault();
        $('body,html').stop().animate({scrollTop:0},500,'swing');
    });

    $('main_gnb').mouseenter(function(){
        $('header').css({backgroundColor:'#2b5db2',opacity:'1'});
    });
    $('main_gnb').mouseleave(function(){
        $('header').css({backgroundColor:'#2b5db2',opacity:'1'});
    });

});