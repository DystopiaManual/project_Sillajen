<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 한글처리
	request.setCharacterEncoding("utf-8");
%>
<div class="mv">
                <h2 class="slide">
                    <div class="txt1">“A global leader in oncolytic<br> immunotherapeutics”</div>
                    <div class="txt2">Targeting, Attacking, and Eradicating Cancers&reg;</div>
                    <img src="./images/main_visual_bg_01.jpeg" alt="메인이미지1">
                </h2>
                <h2 class="slide">
                    <div class="txt1">“A global leader in oncolytic <br>immunotherapeutics”</div>
                    <div class="txt2">Targeting, Attacking, and Eradicating Cancers&reg;</div>
                    <img src="./images/main_visual_bg_02.jpeg" alt="메인이미지2">
                </h2>
                <h2 class="slide">
                    <div class="txt1">“A global leader in oncolytic <br>immunotherapeutics”</div>
                    <div class="txt2">Targeting, Attacking, and Eradicating Cancers&reg;</div>
                    <video class="mv_video" muted autoplay loop>
                        <source src="./videos/sillajen_mv_d_960x540.mp4" type="video/mp4">
                    </video>
                </h2>
                <a href="#" class="swiper-button-prev" onclick="plusSlides(-1)">
                    <img src="./images/mv-left-btn.png" alt="">
                </a>
                <a href="#" class="swiper-button-next" onclick="plusSlides(1)">
                    <img src="./images/mv-right-btn.png" alt="">
                </a>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>   <!-- &#10094 는 '<' 부호를 뜻함 -->
                <a class="next" onclick="plusSlides(1)">&#10095;</a> 

                <!-- Dot Dot Dot -->
                <aside class="circle">
                    <div style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span> 
                        <span class="dot" onclick="currentSlide(2)"></span> 
                        <span class="dot" onclick="currentSlide(3)"></span> 
                    </div>
                </aside>
                <!-- /Dot Dot Dot -->

        </div>