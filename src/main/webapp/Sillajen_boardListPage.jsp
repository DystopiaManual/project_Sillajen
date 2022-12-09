<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<link rel="stylesheet" href="./css/Sillajen_boardPage.css">



    <div id="board_wrap">
        <h2 class="title">
            <a href="Silla_getBoardListCtrl">공지 &amp; 뉴스</a>
        </h2>
        <div class="board_info">
            <div class="board_info_spanbox">
                <span>총&nbsp;</span><span><strong>${count}</strong></span><span>건</span>
            </div>
            <div class="board_info_search">
                <form action="#" method="post">
                    <input type="text" name="searchtext" placeholder="검색어를 입력하세요">
                    <a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                </form>
            </div>
        </div>
        <div class="board_object_box">
        <!-- 시간나면 alertcode 추가(삭제, 수정시) -->
            <ul class="board_object">
                <!-- CSS 구조 테스트용 게시물 -->
                <!-- 실제 구현시 반복문사용 시작부분 -->
                <c:forEach var="list" items="${v }">
                	<li>
                    	<span class="board_num">${list.seq }</span>
                    	<a href="Sillajen_boardInfoCtrl?num=${list.seq }">
                        	<p>${list.title }</p>
                    	</a>
                    	<span class="board_date">${list.regdate }</span>
                	</li>
                </c:forEach>
                <!-- 반복문 종료 -->
            </ul>
        </div>
        <div class="board_pager">
        	<!-- 마지막 페이지 계산 -->
            <a href="Silla_getBoardListCtrl?pageNum=1"><img src="./images/first-pagelist.png" alt="첫페이지로"></a>
            <a href="Silla_getBoardListCtrl?pageNum=${currentPage-1 }"><img src="./images/prev-pagelist.png" alt="이전페이지로"></a>
            <!-- 페이지 넘버링 들어가는 곳 -->
            <!-- ----------------------------------------------------- -->
            
            
            
            <c:if test="${count > 0 }">
		 		<!-- 변수에 값 저장 -->
		 		<c:set var="pageCount" value="${count / pageSize + (count%pageSize == 0 ? 0 : 1) }"   />
		 		<c:set var="startPage" value="${1 }" />
		 		<!-- 현재 페이지 작업 조건1 -->
		 		<c:if test="${currentPage%10 != 0 }">
		 			<!-- 정수형으로 캐스팅 해줘야 하므로 JSTL fmt 사용 -->
		 			<fmt:parseNumber var="result" value="${currentPage/10 }" integerOnly="true"/><!-- integerOnly의 기본값은 false -->
		 			<c:set var="startPage" value="${result*10+1 }" />
		 		</c:if>
		 		<!-- 현재 페이지 작업 조건2 -->
		 		<c:if test="${currentPage%10 == 0 }">
		 			<c:set var="startPage" value="${(result-1)*10+1 }" />
		 		</c:if>
		 		
		 		<c:set var="pageBlock" value="${10 }" />
		 		<c:set var="endPage" value="${startPage+pageBlock-1 }" />
		 		
		 		<c:if test="${endPage > pageCount }">
		 			<c:set var="endPage" value="${pageCount }" />
		 		</c:if>
		 		
		 		<!-- 이전 링크 유무 구현 -->
		 		<c:if test="${startPage > 10 }">
		 			<a href="Silla_getBoardListCtrl?pageNum=${startPage-10 }">[이전]</a>
		 		</c:if>
		 		
		 		<!-- 페이지 처리 -->
			 	<c:forEach var="i" begin="${startPage }" end="${endPage }">
			 		<a href="Silla_getBoardListCtrl?pageNum=${i }">${i }</a>
			 	</c:forEach>	
		 		
		 		<!-- 다음 링크 유무 구현 -->
		 		<c:if test="${endPage < pageCount }">
		 			<a href="Silla_getBoardListCtrl?pageNum==${startPage+10 }">[다음]</a>
		 		</c:if>
		 	</c:if>

            <!-- ----------------------------------------------------- -->
            <!-- 정적값으로 테스트  -->
            <!-- <a href="Silla_getBoardListCtrl?pageNum=1">1</a>
            <a href="Silla_getBoardListCtrl?pageNum=2">2</a>
            <a href="Silla_getBoardListCtrl?pageNum=3">3</a> -->       
            <a href="Silla_getBoardListCtrl?pageNum=${currentPage+1 }"><img src="./images/next-pagelist.png" alt="다음페이지로"></a>
            <a href="Silla_getBoardListCtrl?pageNum=${lastpage }"><img src="./images/last-pagelist.png" alt="마지막페이지로"></a>
        </div>
        <div class="board_write_btn">
            <input type="button" value="글작성" onclick="location.href='sillajen_index.jsp?content=Sillajen_addboard.jsp'">
        </div>
    </div>
