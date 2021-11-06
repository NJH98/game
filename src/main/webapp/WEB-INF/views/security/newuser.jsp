<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
<link rel="stylesheet" type="text/css" href="css/loginform.css">
</head>
<body>
	<div class="center">
		<h1> 회원가입 </h1>
		<form action="/usersave" method="post">
  			<div class="txt_field">
				<input type="text" name="name" required>
				<span></span>
				<label>Username</label>
			</div>
			<div class="txt_field">
				<input type="password" name="password" required>
				<span></span>
				<label>Password</label>
			</div>
			<input type="submit" value="회원가입">
			<div class="signup_link">
				<a href="/loginForm">로그인화면으로 돌아가기</a>
			</div>
			</form>
	</div>
</body>
</html>







