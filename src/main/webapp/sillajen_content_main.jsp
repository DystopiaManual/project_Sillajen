<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
		<main role="main">
		
			<!-- Main Visual -->
			<jsp:include page="./include/main_visual.jsp" />
			<!-- /Main Visual -->

			<!-- 메인 뉴스 섹션 시작 -->
			<jsp:include page="./include/main_news.jsp" />
			<!-- /메인 뉴스 섹션 -->

			<!-- 펙사벡섹션 시작 -->
			<jsp:include page="./include/main_pexabex.jsp" />
			<!-- /펙사벡섹션 -->

			<!-- JX970섹션 시작 -->
			<jsp:include page="./include/main_jx970.jsp" />
			<!-- /JX970섹션 -->

			<!-- 펙사벡 작용기전 영상 섹션 -->
			<jsp:include page="./include/main_youtube.jsp" />
			<!-- /펙사벡 작용기전 영상 섹션 -->

			<!-- IP,IR섹션 시작 -->
			<jsp:include page="./include/main_ipir.jsp" />
			<!-- /IP,IR섹션 -->

			<!-- 파트너쉽 섹셕 시작 -->
			<jsp:include page="./include/main_partner.jsp" />
			<!-- /파트너쉽 섹셕 -->

			<!-- 오피스소개 섹션 시작 -->
			<jsp:include page="./include/main_office.jsp" />
			<!-- /오피스소개 섹션 -->
			
		</main>