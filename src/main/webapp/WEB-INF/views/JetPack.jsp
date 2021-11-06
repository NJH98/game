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
    	canvas { background: gray; display: block; margin: 0 auto; }
    </style>
  </head>
  <body>
  <div class="header">
  <jsp:include page="header.jsp"></jsp:include>
  </div>

  <div class = "main">
		<canvas id="myCanvas" width="550" height="330"></canvas>

<script>
	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d");
	var userx = 70;
	var usery = 250;
	var move = 1;
	var jet = 0;
	var userHP = 100;
	var turn = 0;
	var miss = 0;
	var random = Math.floor(Math.random()*4);
	var randomH = 0; 
	
	var healx = [];
	var healy = [];
	
	var roketx = [];
	var rokety = [];
	var roketbust = 0;
	
	var sawx = [];
	var sawy = [];
	var sawmove = 0;
	
	var speed = 5;
	
	addEventListener("keydown", test1, false);
	
	function test1(key){											
			if (key.keyCode == "40"){
				jet = 0;
				move = move +1;
				if (move === 3){
					move = 1;
				}
			}
		}
	
	function up(){
		if (move == 2){
			burn();
			if (usery > 30){
			usery = usery - jet;
			jet = jet +1/3;
			}
		}
	}
	function down(){
		if ((move == 1)&&(usery < 250)){
			usery = usery + jet;
			jet = jet +1/3;
		}
	
	}
	
	function user(){
	if(miss<100){
		ctx.beginPath();
		ctx.arc(userx+10,usery,10,0, Math.PI*2);
		ctx.rect(userx,usery-3,25,3);
		ctx.fillStyle = "red";
		ctx.fill();
		ctx.closePath();
		}
	else{
		ctx.beginPath();
		ctx.arc(userx+10,usery,10,0, Math.PI*2);
		ctx.rect(userx,usery-3,25,3);
		ctx.fillStyle = "blue";
		ctx.fill();
		ctx.closePath();
	}
		ctx.beginPath();
		ctx.rect(userx,usery,20,30);
		ctx.arc(userx+5,usery+32,4,0, Math.PI*2);
		ctx.arc(userx+15,usery+32,4,0, Math.PI*2);
		ctx.fillStyle = "green";
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.rect(userx-12,usery+5,12,20);
		ctx.arc(userx-6, usery+6,6,0, Math.PI*2);
		ctx.fillStyle = "yellow";
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.arc(userx+14,usery+6,3,0, Math.PI*2);
		ctx.rect(userx-12,usery+15,32,3);
		ctx.fillStyle = "black";
		ctx.fill();
		ctx.closePath();
		

	}
	
	function burn(){
		ctx.beginPath();
		ctx.rect(userx-12,usery+25,2,7);
		ctx.rect(userx-10,usery+25,3,9);
		ctx.rect(userx-7,usery+25,3,11);
		ctx.rect(userx-4,usery+25,3,9);
		ctx.rect(userx-1,usery+25,2,7);
		ctx.fillStyle = "red";
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.rect(userx-12,usery+25,2,2);
		ctx.rect(userx-10,usery+25,3,4);
		ctx.rect(userx-7,usery+25,3,7);
		ctx.rect(userx-4,usery+25,3,4);
		ctx.rect(userx-1,usery+25,2,2);
		ctx.fillStyle = "orange"; 
		ctx.fill();
		ctx.closePath();
	}
	
	function map(){ 
		ctx.beginPath();
		ctx.rect(0,290,550,10);
		ctx.rect(0,0,550,10);
		ctx.fillStyle = "black"; 
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.rect(140,310,userHP*4,10);
		ctx.fillStyle = "red"; 
		ctx.fill();
		ctx.closePath();
		
		ctx.fillStyle = "white";
		ctx.fillText("HP",120 ,318);
		ctx.fillText("score:"+turn,50 ,318);
	}
	
	function heal(){ 
		ctx.beginPath();
		ctx.arc(healx[0], healy[0],18,0, Math.PI*2);
		ctx.fillStyle = "white";
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.rect(healx[0]-12, healy[0]-4, 24 ,8);
		ctx.rect(healx[0]-4, healy[0]-12, 8 ,24);
		ctx.fillStyle = "red";
		ctx.fill();
		ctx.closePath();
	}
	
	function roket(){
		ctx.beginPath();
		ctx.rect(roketx[0]+40, rokety[0]+0, 20,4);
		ctx.rect(roketx[0]+40, rokety[0]+4, 25,4);
		ctx.rect(roketx[0]+40, rokety[0]+8, 30,4);
		ctx.rect(roketx[0]+40, rokety[0]+12, 25,4);
		ctx.rect(roketx[0]+40, rokety[0]+16, 20,4);
		ctx.fillStyle = "red";
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.rect(roketx[0]+40, rokety[0]+4, 15,4);
		ctx.rect(roketx[0]+40, rokety[0]+8, 20,4);
		ctx.rect(roketx[0]+40, rokety[0]+12, 15,4);
		ctx.fillStyle = "orange";
		ctx.fill();
		ctx.closePath();
		
		ctx.beginPath();
		ctx.arc(roketx[0], rokety[0]+10,9,0, Math.PI*2);
		ctx.rect(roketx[0]+30, rokety[0]-3, 20,26);
		ctx.rect(roketx[0], rokety[0], 40,20);
		ctx.fillStyle = "black";
		ctx.fill();
		ctx.closePath();
	}
	
	function saw(){ 
	for(i=0; i<sawx.length-1; i++){
			if(sawmove===0){
				ctx.beginPath();
				ctx.arc(sawx[i], sawy[i]-20,10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===1){
				ctx.beginPath();
				ctx.arc(sawx[i]-14, sawy[i]-14,10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===2){
				ctx.beginPath();
				ctx.arc(sawx[i]-20, sawy[i],10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===3){
				ctx.beginPath();
				ctx.arc(sawx[i]-14, sawy[i]+14,10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===4){
				ctx.beginPath();
				ctx.arc(sawx[i], sawy[i]+20,10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===5){
				ctx.beginPath();
				ctx.arc(sawx[i]+14, sawy[i]+14,10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===6){
				ctx.beginPath();
				ctx.arc(sawx[i]+20, sawy[i],10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			if(sawmove===7){
				ctx.beginPath();
				ctx.arc(sawx[i]+14, sawy[i]-14,10,0, Math.PI*2);
				ctx.fillStyle = "black";
				ctx.fill();
				ctx.closePath();
			}
			
			ctx.beginPath();
			ctx.arc(sawx[i], sawy[i],23,0, Math.PI*2);
			ctx.fillStyle = "silver";
			ctx.fill();
			ctx.closePath();
			
			ctx.beginPath();
			ctx.arc(sawx[i], sawy[i],13,0, Math.PI*2);
			ctx.fillStyle = "black";
			ctx.fill();
			ctx.closePath();
		}
	}
	
	function heatbox(){ 
		if((healx[0]-18<userx)&&(userx<healx[0]+18)&&(healy[0]-18<usery)&&(usery<healy[0]+18)||
			(healx[0]-18<userx+20)&&(userx+20<healx[0]+18)&&(healy[0]-18<usery)&&(usery<healy[0]+18)||
			(healx[0]-18<userx+20)&&(userx+20<healx[0]+18)&&(healy[0]-18<usery+30)&&(usery+30<healy[0]+18)||
			(healx[0]-18<userx)&&(userx<healx[0]+18)&&(healy[0]-18<usery+30)&&(usery+30<healy[0]+18)){
				userHP = userHP +30;
				healx.shift();
				healy.shift();
				if (userHP >100){
					userHP = 100;
				}
			}
	for(i=0; i<sawx.length-1; i++){
		if((sawx[i]-23<userx)&&(userx<sawx[i]+23)&&(sawy[i]-23<usery)&&(usery<sawy[i]+23)&&(miss>100)||
			(sawx[i]-23<userx+20)&&(userx+20<sawx[i]+23)&&(sawy[i]-23<usery)&&(usery<sawy[i]+23)&&(miss>100)||
			(sawx[i]-23<userx+20)&&(userx+20<sawx[i]+23)&&(sawy[i]-23<usery+30)&&(usery+30<sawy[i]+23)&&(miss>100)||
			(sawx[i]-23<userx)&&(userx<sawx[i]+23)&&(sawy[i]-23<usery+30)&&(usery+30<sawy[i]+23)&&(miss>100)){
				userHP = userHP -15;
				jet = 1;
				move = 1;
				miss = 0;
				}
			}
		if((roketx[0]-9<userx)&&(userx<roketx[0]+50)&&(rokety[0]<usery)&&(usery<rokety[0]+20)&&(miss>100)||
			(roketx[0]-9<userx+20)&&(userx+20<roketx[0]+50)&&(rokety[0]<usery)&&(usery<rokety[0]+20)&&(miss>100)||
			(roketx[0]-9<userx+20)&&(userx+20<roketx[0]+50)&&(rokety[0]<usery+30)&&(usery+30<rokety[0]+20)&&(miss>100)||
			(roketx[0]-9<userx)&&(userx<roketx[0]+50)&&(rokety[0]<usery+30)&&(usery+30<rokety[0]+20)&&(miss>100)){
				userHP = userHP -30;
				jet = 1;
				move = 1;
				miss = 0;
				roketbust = 0;
				roketx.shift();
				rokety.shift();
			}
	}
	
	function healpaturn(){
		if(turn%360 === 0){
			healx.push(570);
			healy.push((randomH)*60);
		}
		if(healx[0]<=570){
			healx[0] = healx[0] - speed
		}
		if(healx[0]<0){
			healx.shift();
			healy.shift();
		}
		
		if(turn%(72-speed*4) === 0){
			sawx.push(570);
			sawy.push((random+1)*60);
		}
	for(i=0; i<sawx.length-1; i++){
			if(sawx[i]<=570){
				sawx[i] = sawx[i] - speed
			}
			if(sawx[i]<0){
				sawx.shift();
				sawy.shift();
			}
		}
		
		if(turn%200 === 0){
			roketx.push(900);
			rokety.push(usery-10);
		}
		if(roketx[0]<=900){
				ctx.beginPath();
				ctx.rect(userx+70,usery+15,500,3);
				ctx.arc(userx+70,usery+16,5,0, Math.PI*2);
				ctx.fillStyle = "red";
				ctx.fill();
				ctx.closePath();
				ctx.fillStyle = "red";
				ctx.fillText("Warning",userx+22,usery+17);
				
			roketx[0] = roketx[0] - (speed+roketbust)
			roketbust = roketbust +1/3;
		}
		if(roketx[0]<-60){
			roketx.shift();
			rokety.shift();
			roketbust = 0;
		}
		
		if(turn%1000 === 0){
		speed = speed+1;
		if (speed === 12){
			speed = 11
		} 
		}
	}
	
	function ani(){
		ctx.clearRect(0, 0, canvas.width, canvas.height);
		turn = turn+1;
		miss = miss +1;
		random = Math.floor(Math.random()*4);
		if(random === 0){
			randomH = 4
		}
		if(random === 1){
			randomH = 2
		}
		if(random === 2){
			randomH = 3
		}
		if(random === 3){
			randomH = 1
		}
		map();
		user();
		down();
		up();
		roket();
		heal();
		saw();
		healpaturn();
		heatbox();
		if(sawmove ===7){
			sawmove = -1;
		}
		sawmove = sawmove+1;
		userHP = userHP - 1/20;
		if(userHP < 0){
			document.aaa.score.value = turn;
			document.aaa.submit();
			alert("GAME OVER -- Score : "+turn);
		}
	}
	
	setInterval(ani, 20);


</script>
  <form method="post" name="aaa" action="/JetPacksave">
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