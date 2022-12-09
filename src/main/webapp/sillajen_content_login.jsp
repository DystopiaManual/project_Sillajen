<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// utf-8
	request.setCharacterEncoding("utf-8");
%>
<link rel="stylesheet" href="./css/Sillajen_loginPage.css">
<script src="./js/login_logo.js"></script>

    <div id="login_wrap">
        <div class="login_logo">
            <img src="./images/sillajen_logo_white.svg" alt="로고">
        </div>
        <figure>
            <video muted autoplay loop>
                <source src="./videos/loginMovie.mp4" type="video/mp4">
                브라우저가 video를 지원하지 않습니다.
            </video>
        </figure>
        <form action="Silla_loginCtrl.do" method="post">
            <div class="login_box">
                <h2>LOGIN</h2>
                <p>ID</p>
                <input type="text" name="id">
                <p>PASSWORD</p>
                <input type="password" name="password">
                <div class="button_box">
                    <input type="submit" value="login">
                    <input type="reset" value="reset">
                </div>
                <a href="sillajen_index.jsp?content=Sillajen_joinMembership.jsp">
                    <p>JOIN MEMBERSHIP</p>
                </a>
            </div>
        </form>
    </div>