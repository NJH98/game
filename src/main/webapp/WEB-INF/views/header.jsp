<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<br>
	<div class="nav">
		<ul id = "main-menu">
			<li><a href="/">Main</a></li>
			
			<li><a href="#">Snake</a>
				<ul id ="sub-menu">
					<li><a href="/HowSnake_1">How?</a></li>
					<li><a href="/Snake">Play</a></li>
					<li><a href="/Snakerank">Rank</a></li>
				</ul>
			</li>
			 
			<li><a href="#">JetPack</a>
				<ul id ="sub-menu">
					<li><a href="/HowJetPack_1">How?</a></li>
					<li><a href="/JetPack">Play</a></li>
					<li><a href="/JetPackrank">Rank</a></li>
				</ul>
			</li> 	
				
			<li><a href="#">Block</a>
				<ul id ="sub-menu">
					<li><a href="/HowBlock_1">How?</a></li>
					<li><a href="/Block">Play</a></li>
					<li><a href="/Blockrank">Rank</a></li>
				</ul>
			</li>
			
			<li><a href="/logout">Logout</a>
			</li>
  		</ul>
  	</div>
</body>
</html>