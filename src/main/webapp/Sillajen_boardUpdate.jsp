<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

    <title>Sillajen Board</title>
    <!-- font-awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Boorstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 페이지 CSS -->    
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/reset_hard.css">
    <link rel="stylesheet" href="./css/Sillajen_boardUpdate.css">
    <link rel="stylesheet" href="./css/Sillajen_boardInfo.css">
    <link rel="stylesheet" href="./css/Sillajen_addboard.css">
    
    
    <!-- 제이쿼리 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>

    <!-- prefix 자동설정 -->
    <script src="./js/prefixfree.min.js"></script>
    

    <div id="boardinfo_wrap">
		<form action="Silla_updateBoardCtrl2" method="post">
			<h2 class="title">
				<a href="GetBoardListCtrl">공지 &amp; 뉴스</a>
			</h2>
			<div class="board_table_box">
				<table>
					<tr>
						<td>
							<span>제목</span>
						</td>
						<!-- 테스트용 제목 -->
						<td>
							<input type="text" name="title" value="${bean.title }">
						</td>
					</tr>
					<tr>
						<td>
							<span>작성자</span>
						</td>
						<td>
							${bean.writer }
						</td>
					</tr>
					<tr class="board_table_content">
						<td>
							<span>내용</span>
						</td>
						<!-- 테스트용 내용 -->
						<td>
							<textarea name="content" id="content" cols="100" rows="10">${bean.content }</textarea>
						</td>
					</tr>
				</table>
			</div>
			<div class="boardinfo_btnbox">
				<div>
					<input type="hidden" name="num" value="${bean.seq }">
					<input type="button" value="게시물삭제" onclick="location.href='Silla_deleteBoardCtrl?num=${bean.seq}'">
					<input type="submit" value="수정확인">
					<input type="button" value="게시물목록으로" onclick="location.href='Silla_getBoardListCtrl'">
				</div>
			</div>
		</form>
	</div>
