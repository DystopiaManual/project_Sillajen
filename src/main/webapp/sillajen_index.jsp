<%@page import="biz.user.UserVO"%>
<%@page import="oracle.net.aso.i"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// urf-8
	request.setCharacterEncoding("utf-8");

	// 해당 콘텐츠만 보이기 위한 설정
	String content = request.getParameter("content");
	UserVO userBean = (UserVO) session.getAttribute("userBean");
	
	// 처음 로딩시 content값이 없으므로 null 처리
	if(content == null){
		content = "./sillajen_content_main.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신라젠 | SILLAJEN</title>
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/jquery.bxslider.css">
    <link rel="stylesheet" href="./css/sillazen_index.css">
	
    <!-- font-awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- 1. 제이쿼리 코어파일 사용 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>

    <!-- 2. 제이쿼리 CDN 방식이용 -->
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

    <!-- 박스 슬라이더 CSS -->
    <link rel="stylesheet" href="./css/jquery.bxslider.css">
    <script src="./js/jquery.bxslider.js"></script>
    <script src="./js/jquery.scrollTo.min.js"></script>
    <script src="./js/main_visual.js"></script>
    <script src="./js/scroll.js"></script>
    <script src="./js/header.js"></script>
	<!-- 3. 제이쿼리 플러그인 추가 -->
	<script src="./js/swiper-bundle.js"></script>
	<!-- 본인 사이트에 맞게 속성값 변경 -->
	<script src="./js/swiperCustom.js"></script>
    
</head>
<body>
	<div id="wrap">
		<!-- Header -->
		<jsp:include page="./include/header.jsp" />
		<!-- /Header -->

		<!-- Content -->
		<jsp:include page="<%= content %>" />
		<!-- /Content -->

		<!-- Footer -->
		<jsp:include page="./include/main_footer.jsp"/>   	
    <!-- /Footer -->
    </div>
    <script src="./js/sillajen_index_office.js"></script>	
</body>
</html>
