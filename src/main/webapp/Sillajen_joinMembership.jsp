<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

   	<link rel="stylesheet" href="./css/Sillajen_loginPage.css">
    <link rel="stylesheet" href="./css/Sillajen_joinMembership.css">
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
        <form action="Silla_joinMemberCtrl.do" method="post">
            <div class="login_box">
                <h2>JOIN MEMBER</h2>
                <p>ID</p>
                <input type="text" name="id">
                <p>PASSWORD</p>
                <input type="password" name="password">
                <p>NAME</p>
                <input type="text" name="name">
                <p>ROLE</p>
                <select name="role" id="role">
                    <option value="admin">관리자</option>
                    <option value="user">고객</option>
                </select>
                <div class="button_box">
                    <input type="submit" value="submit">
                    <input type="reset" value="reset">
                </div>
            </div>
        </form>
    </div>

