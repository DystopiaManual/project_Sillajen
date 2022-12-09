<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String userName = (String) session.getAttribute("userName");
	if(userName==null){
		out.println("<script>alert('로그인이 필요합니다.'); location.href='sillajen_index.jsp?content=sillajen_content_login.jsp';</script>");
		out.close();
	}else{
		out.clear();
	}
%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Boorstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 페이지 CSS -->    
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/reset_hard.css">
    <link rel="stylesheet" href="./css/Sillajen_boardUpdate.css">
    <link rel="stylesheet" href="./css/Sillajen_boardInfo.css">
    <link rel="stylesheet" href="./css/Sillajen_addboard.css">
    
    

    <div id="boardinfo_wrap">
        <form action="Siila_addBoardCtrl" method="post">
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
                        <td>
                            <input type="text" name="title">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>작성자</span>
                        </td>
                        <!-- 테스트용 작성자 -->
                        <td>
                        	<input type="text" name="writer">
                        </td>
                    </tr>
                    <tr class="board_table_content">
                        <td>
                            <span>내용</span>
                        </td>
                        <!-- 테스트용 내용 -->
                        <td>
                            <textarea name="content" id="content" cols="100" rows="10"></textarea>
                        </td>                    
                    </tr>
                </table>
            </div>
            <div class="boardinfo_btnbox">
                <div>
                    <input type="submit" value="작성완료">
                    <input type="button" value="이전페이지로" onclick="location.href='Silla_getBoardListCtrl'">
                </div>
            </div>
        </form>
    </div>
