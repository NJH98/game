<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
<link rel="stylesheet" type="text/css" href="css/loginform.css">
</head>
<body>
	<div class="center">
		<h1>Login</h1>
		
		<c:url value="j_spring_security_check" var="loginUrl"/>
		<form action="${loginUrl}" method="post">
			<c:if test="${param.error != null}">
			<p>
				아이디 / 비밀번호 오류입니다. <br/>
			</p>
			</c:if>
			<div class="txt_field">
				<input type="text" name="j_username" required>
				<span></span>
				<label>Username</label>
			</div>
			<div class="txt_field">
				<input type="password" name="j_password" required>
				<span></span>
				<label>Password</label>
			</div>
			<input type="submit" value="Login">
			<div class="signup_link">
				계정이 없으신가요? <a href="/newuser">회원가입</a>
			</div>
		</form>
	</div>
</body>
</html>






