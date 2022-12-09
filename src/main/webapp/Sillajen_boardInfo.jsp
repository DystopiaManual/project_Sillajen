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
    <link rel="stylesheet" href="./css/Sillajen_boardInfo.css">


    <div id="boardinfo_wrap">
        <h2 class="title">
            <a href="Silla_getBoardListCtrl">공지 &amp; 뉴스</a>
        </h2>
        <div class="board_table_box">
            <table>
                <tr>
                    <td>
                        <span>제목</span>
                    </td>
                    <!-- 테스트용 제목 -->
                    <td>${bean.title }</td>
                </tr>
                <tr>
                    <td>
                        <span>작성자</span>
                    </td>
                    <!-- 테스트용 작성자 -->
                    <td>${bean.writer }</td>
                </tr>
                <tr class="board_table_content">
                    <td>
                        <span>내용</span>
                    </td>
                    <!-- 테스트용 내용 -->
                    <td>
                        ${bean.content }
                    </td>                    
                </tr>
            </table>
        </div>
        <div class="boardinfo_btnbox">
            <div>
                <input type="button" value="게시물삭제" onclick="location.href='Silla_deleteBoardCtrl?num=${bean.seq}'">
                <input type="button" value="이전페이지로" onclick="location.href='Silla_getBoardListCtrl'">
                <input type="button" value="게시물수정" onclick="location.href='Silla_updateBoardCtrl?num=${bean.seq}'">
            </div>
        </div>
    </div>
