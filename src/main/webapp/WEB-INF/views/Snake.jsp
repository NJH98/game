<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> 
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <title>Hello, world!</title>
    <style>
    	* { padding: 0; margin: 0; }
    	canvas { background: black; display: block; margin: 0 auto; }
    </style>
  </head>
  <body>
  <div class="header">
  <jsp:include page="header.jsp"></jsp:include>
  </div>

	<div class = "main">
		<canvas id="myCanvas" width="480" height="320"></canvas>

<script>
	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d");
	var score = 0;
	var foodx = (Math.floor(Math.random()*24))*20;
	var foody = (Math.floor(Math.random()*16))*20;
	var snakex =[40, 60, 80, 100];
	var snakey =[20, 20, 20, 20];
	var s방향 = "right";
	var error = 0;

addEventListener("keydown", test, false);

function test(key){											//방향키 설정
		if ((key.keyCode == "37")&&(s방향 != "right")&&(error == 0)){
			s방향 = "left";
			error = 1;
		}
		if ((key.keyCode == "38")&&(s방향 != "down")&&(error == 0)){
			s방향 = "up";
			error = 1;
		}
		if ((key.keyCode == "39")&&(s방향 != "left")&&(error == 0)){
			s방향 = "right";
			error = 1;
		}
		if ((key.keyCode == "40")&&(s방향 != "up")&&(error == 0)){
			s방향 = "down";
			error = 1;
		}
		
	}
	
	function move(){								//누른키에 따른 이벤트 설정
			if (s방향 === "right"){
				snakex.push(snakex[snakex.length-1]+20);
				snakey.push(snakey[snakey.length-1]);
			}
			else if (s방향 === "left"){
				snakex.push(snakex[snakex.length-1]-20);
				snakey.push(snakey[snakey.length-1]);
			}
			else if (s방향 === "up"){
				snakex.push(snakex[snakey.length-1]);
				snakey.push(snakey[snakey.length-1]-20);
			}
			else if (s방향 === "down"){
				snakex.push(snakex[snakey.length-1]);
				snakey.push(snakey[snakey.length-1]+20);
			}
		}
		
	function createFood(){						//음식 만들기 
	ctx.beginPath();
	ctx.rect(foodx, foody , 19, 19);			//x축y축 랜덤생성
	ctx.fillStyle = "lightgreen";				//색깔 연녹색
	ctx.fill();
	ctx.closePath();
	}					
	
	function createSnake(){
	for(var i =0; i<snakex.length; i++){		//뱀만들기 
	
		if(i == snakex.length -1){		
		ctx.beginPath();
		ctx.rect(snakex[i], snakey[i] , 19, 19);
		ctx.fillStyle = "white";				//머리 하얀색
		ctx.fill();
		ctx.closePath();
		}else{
		ctx.beginPath();
		ctx.rect(snakex[i], snakey[i] , 19, 19);
		ctx.fillStyle = "red";					//몸통 빨간색
		ctx.fill();
		ctx.closePath();
		}
	}
	}
	
	//실질적인 움직임 함수 ani
	function ani(){
	ctx.clearRect(0, 0, canvas.width, canvas.height);
		createSnake();
		createFood();
		move();
		snakex.shift();
		snakey.shift();			//기존 배열에 있던걸 지워주면서 움직임 표현
		
		if (snakex[snakex.length-1]==foodx && snakey[snakey.length-1]==foody){
			score = score + 10;
			move();
			foodx = (Math.floor(Math.random()*24))*20;
			foody = (Math.floor(Math.random()*16))*20;		//음식과 뱀머리가 닿을경우 점수+10 몸길이+1
		}
		else if (snakex[snakex.length-1] >= 480){			//상하좌우 캔버스 넘어가면 반대쪽으로 나옴
			snakex[snakex.length-1] = 0;
			}
		else if (snakex[snakex.length-1] < 0){
			snakex[snakex.length-1] = 480;
			}
		else if (snakey[snakey.length-1] >= 320){
			snakey[snakey.length-1] = 0;
			}
		else if (snakey[snakey.length-1] < 0){
			snakey[snakey.length-1] = 320;
			}
		for(i=0; i<snakex.length-1; i++){				//머리가 몸통과 닿을경우 게임오버+새로고침
			if ((snakex[snakex.length-1])==(snakex[i]) && (snakey[snakey.length-1])==(snakey[i])){
				document.aaa.score.value = score;
				alert("GAME OVER score:"+score);
				document.aaa.submit();
				
				}
			}
		ctx.fillStyle = "white";
		ctx.fillText("SCORE:"+score ,410 ,300);			//캔버스에 점수표현
		error = 0;
	}
	setInterval(ani, 100);
</script>
	<form method="post" name="aaa" action="/Snakesave">
	<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.username" var="user_id" />
	</sec:authorize>
		<input type="hidden" name="score" value="">
		<input type="hidden" name="name" value="${user_id}">
	</form>
	</div>
  <div class = "footer">
  <jsp:include page="footer.jsp"></jsp:include>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>

