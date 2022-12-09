<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 한글처리
	request.setCharacterEncoding("utf-8");
%>
	        <header class="logo header_scroll">
            <h1>
                <a href="./sillajen_index.jsp?content=./sillajen_content_main.jsp">
                    <img src="./images/sillajen_logo_white.svg" alt="LOGO" class="logo_img">
                </a>
            </h1>
            <!-- MODIFY -->
            <nav class="header_gnb">
                <div class="header_gnb">
                    <!-- 1DEPTH GNB 메뉴 시작 -->
                    <div class="main_1depth_menu header_scroll">
                        <div class="main_1depth_gnb">
                            <ul class="main_gnb">
                                <li><a href="#">회사소개</a></li>
                                <li><a href="#">핵심기술</a></li>
                                <li><a href="#">파이프라인</a></li>
                                <li><a href="#">파트너십</a></li>
                                <li><a href="Silla_getBoardListCtrl">IR/PR</a></li>
                                <li><a href="#">자회사소개</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- 1DEPTH GNB 메뉴 끝 -->
                    <!-- 2DEPTH GNB 메뉴 시작 -->
                    <div class="main_2depth_menu">
                        <ul class="main_2depth_gnb cf">
                            <li>
                                <ul class="main_sub_gnb">
                                    <li><a href="#">회사연혁</a></li>
                                    <li><a href="#">Jennerex</a></li>
                                    <li><a href="#">찾아오시는길</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul class="main_sub_gnb">
                                    <li><a href="#">SOLVE&reg;플랫폼</a></li>
                                    <li><a href="#">GEEV&reg;플랫폼</a></li>
                                    <li><a href="#">논문</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul class="main_sub_gnb">
                                    <li><a href="#">파이프라인 개요</a></li>
                                    <li><a href="#">펙사백 (JX-594)</a></li>
                                    <li><a href="#">BAL0891</a></li>
                                    <li><a href="#">SJ-600 Series</a></li>
                                    <li><a href="#">JX-900 Series</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul class="main_sub_gnb">
                                    <li><a href="#">펙사벡 파트너십</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul class="main_sub_gnb">
                                    <li><a href="#">공지 &amp; 뉴스</a></li>
                                    <li><a href="#">공고</a></li>
                                    <li><a href="#">공시</a></li>
                                    <li><a href="#">주가정보</a></li>
                                    <li><a href="#">문의하기</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul class="main_sub_gnb">
                                    <li><a href="#">신라젠 바이오</a></li>
                                    <li><a href="#">찾아오시는 길 </a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- 2DEPTH GNB 메뉴 끝 -->
            </nav>
            <!-- GBN Right -->
            <div class="gnb_right header_scroll cf">
                <div class="login_icon" title="로그인">
                    <a href="./sillajen_index.jsp?content=./sillajen_content_login.jsp">
                        <img src="./images/loginicon.png" alt="로그인아이콘">
                    </a>
                </div>
                <div class="menus" title="사이트맵">
                    <div class="menu"></div>
                    <div class="menu"></div>
                    <div class="menu"></div>
                </div>
                <div class="language">
                    <div class="kor">
                        <p>
                            KOR
                            <i class="fa fa-chevron-down"></i>                            
                            <ul class="select_lang">
                            <li>KOR</li>
                            <li>ENG</li>
                            </ul>
                        </p>
                    </div>
                </div>
            </div>
            <!-- /햄버거 메뉴 -->
            <!-- 사이트맵 -->
            <div class="sitemap">
                
                <ul class="sitemap_list">
                    <h2>신라젠 사이트맵
                        <button class="close">
                            <div class="close1"></div>
                            <div class="close2"></div>
                        </button>
                    </h2>

                    <li >
                        <p>
                            <span class="sitemap_category">
                                회사소개
                            </span>
                        </p>
                        <ul class="sitemap_menulist">
                            <li><a href="#">회사연혁</a></li>
                            <li><a href="#">Jennerex</a></li>
                            <li><a href="#">찾아오시는 길</a></li>                            
                        </ul>
                    </li>
                    <li>
                        <p>
                            <span class="sitemap_category">
                                핵심기술
                            </span>
                        </p>
                        <ul class="sitemap_menulist">
                            <li><a href="#">SOLVE&reg;플랫폼</a></li>
                            <li><a href="#">GEEV&reg;플랫폼</a></li>
                            <li><a href="#">논문</a></li>                            
                        </ul>
                    </li>
                    <li>
                        <p>
                            <span class="sitemap_category">
                                파이프라인
                            </span>
                        </p>
                        <ul class="sitemap_menulist">
                            <li><a href="#">파이프라인 개요</a></li>
                            <li><a href="#">펙사벡(JX-594)</a></li>
                            <li><a href="#">BAL0891</a></li>                            
                            <li><a href="#">SJ-600 Series</a></li>                            
                            <li><a href="#">JX-900 Series</a></li>                            
                        </ul>
                    </li>
                    <li>
                        <p>
                            <span class="sitemap_category">
                                파트너십
                            </span>
                        </p>
                        <ul class="sitemap_menulist">
                            <li><a href="#">펙사벡 파트너십</a></li>
                          
                        </ul>
                    </li>
                    <li>
                        <p>
                            <span class="sitemap_category">
                                IR/PR
                            </span>
                        </p>
                        <ul class="sitemap_menulist">
                            <li><a href="#">공지&뉴스</a></li>
                            <li><a href="#">공고</a></li>
                            <li><a href="#">공시</a></li>                            
                            <li><a href="#">주가정보</a></li>                            
                            <li><a href="#">문의하기</a></li>                            
                        </ul>
                    </li>
                    <li>
                        <p>
                            <span class="sitemap_category">
                                자회사소개
                            </span>
                        </p>
                        <ul class="sitemap_menulist">
                            <li><a href="#">신라젠 바이오</a></li>
                            <li><a href="#">찾아오시는 길</a></li>                       
                        </ul>
                    </li>
                </ul>

            </div>
            <aside class="top">
                <button class="btn_top">
                    <p>
                        <i class="fa fa-sort-up"></i><br>
                        TOP
                    </p>
                </button>
            </aside>
            
            <!-- /사이트맵 -->


        </header>
</body>
</html>