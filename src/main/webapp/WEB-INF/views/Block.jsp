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
		<canvas id="myCanvas" width="210" height="260"></canvas>
<script>
	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d");

	var score = 0;
	
	var bord = [[0,0,0,0],
				[0,0,0,0],
				[0,0,0,0],
				[0,0,0,0]];
	
	var up = 0;
	var down = 0;
	var left = 0;
	var right = 0;
	
addEventListener("keydown", test1, false);
	
	function test1(key){											
			if (key.keyCode == "37"){
				left = 1;
				main();
				plus();
				main();
				newblock();
				UI();
				score = score+5;
				left = 0;
				
			}
			if (key.keyCode == "38"){
				up = 1;
				main();
				plus();
				main();
				newblock();
				UI();
				score = score+5;
				up = 0;
			}
			if (key.keyCode == "39"){
				right = 1;
				main();
				plus();
				main();
				newblock();
				UI();
				score = score+5;
				right = 0;
			}
			if (key.keyCode == "40"){
				down = 1;
				main();
				plus();
				main();
				newblock();
				UI();
				score = score+5;
				down = 0;
			}
		}	
	
	function UI(){ 
		ctx.clearRect(0, 0, canvas.width, canvas.height);
		ctx.font = ' 12px Calivri';
		ctx.fillStyle = "white";
		ctx.fillText("GAME 2048",70 ,20);
		ctx.fillText("SCORE: "+score,10,240);
		
		ctx.beginPath();
		ctx.rect(10,30,40,40);
		ctx.rect(60,30,40,40);
		ctx.rect(110,30,40,40);
		ctx.rect(160,30,40,40);
		ctx.rect(10,80,40,40);
		ctx.rect(60,80,40,40);
		ctx.rect(110,80,40,40);
		ctx.rect(160,80,40,40);
		ctx.rect(10,130,40,40);
		ctx.rect(60,130,40,40);
		ctx.rect(110,130,40,40);
		ctx.rect(160,130,40,40);
		ctx.rect(10,180,40,40);
		ctx.rect(60,180,40,40);
		ctx.rect(110,180,40,40);
		ctx.rect(160,180,40,40);
		ctx.fillStyle = "white";
		ctx.fill();
		ctx.closePath();
		
		ctx.font = ' 12px Arial';
		ctx.fillStyle = "black";
		if(bord[0][0]!=0){
		ctx.fillText(+bord[0][0],20,53);
		}
		if(bord[0][1]!=0){
		ctx.fillText(+bord[0][1],70,53);
		}
		if(bord[0][2]!=0){
		ctx.fillText(+bord[0][2],120,53);
		}
		if(bord[0][3]!=0){
		ctx.fillText(+bord[0][3],170,53);
		}
		if(bord[1][0]!=0){
		ctx.fillText(+bord[1][0],20,103);
		}
		if(bord[1][1]!=0){
		ctx.fillText(+bord[1][1],70,103);
		}
		if(bord[1][2]!=0){
		ctx.fillText(+bord[1][2],120,103);
		}
		if(bord[1][3]!=0){
		ctx.fillText(+bord[1][3],170,103);
		}
		if(bord[2][0]!=0){
		ctx.fillText(+bord[2][0],20,153);
		}
		if(bord[2][1]!=0){
		ctx.fillText(+bord[2][1],70,153);
		}
		if(bord[2][2]!=0){
		ctx.fillText(+bord[2][2],120,153);
		}
		if(bord[2][3]!=0){
		ctx.fillText(+bord[2][3],170,153);
		}
		if(bord[3][0]!=0){
		ctx.fillText(+bord[3][0],20,203);
		}
		if(bord[3][1]!=0){
		ctx.fillText(+bord[3][1],70,203);
		}
		if(bord[3][2]!=0){
		ctx.fillText(+bord[3][2],120,203);
		}
		if(bord[3][3]!=0){
		ctx.fillText(+bord[3][3],170,203);
		}
		}
		
	function newblock(){
		if((bord[0][0]!=0)&&(bord[0][1]!=0)&&(bord[0][2]!=0)&&(bord[0][3]!=0)&&
			(bord[1][0]!=0)&&(bord[1][1]!=0)&&(bord[1][2]!=0)&&(bord[1][3]!=0)&&
			(bord[2][0]!=0)&&(bord[2][1]!=0)&&(bord[2][2]!=0)&&(bord[2][3]!=0)&&
			(bord[3][0]!=0)&&(bord[3][1]!=0)&&(bord[3][2]!=0)&&(bord[3][3]!=0)){
				document.aaa.score.value = score;
				alert("GAME OVER score:"+score);
				document.aaa.submit();
			}
		else{
			while(true){
				var a = Math.floor(Math.random()*4);
				var b = Math.floor(Math.random()*4);
				var c = ((Math.floor(Math.random()*2)*2)+2);

				if(bord[a][b] === 0){
					bord[a][b] = c;
					break;
				}
			}
		}
	}
		
	function main(){
		if(left === 1){
			for(var d =0; d<4; d++){
				var f = 0;
				for(var e =0; e<4; e++){
					if(bord[d][e] === 0){
						f = f+1;
					}
					else{
						bord[d][e-f] = bord[d][e];
					}
				}
				var h = 3;
				if(f > 0){
					for(var g =0; g<f; g++){
						bord[d][h] = 0;
						h = h -1;
					}
				}
				f = 0; h = 0;
			}
		}
		
		if(right === 1){
			for(var d =0; d<4; d++){
				var f = 0;
				for(var e =3; -1<e; e--){
					if(bord[d][e] === 0){
						f = f-1;
					}
					else{
						bord[d][e-f] = bord[d][e];
					}
				}
				var h = 0;
				if(f < 0){
					for(var g =0; g>f; g--){
						bord[d][h] = 0;
						h = h +1;
					}
				}
				f = 0; h = 0;
			}
		}
		
		if(up === 1){
			for(var d =0; d<4; d++){
				var f = 0;
				for(var e =0; e<4; e++){
					if(bord[e][d] === 0){
						f = f+1;
					}
					else{
						bord[e-f][d] = bord[e][d];
					}
				}
				var h = 3;
				if(f > 0){
					for(var g =0; g<f; g++){
						bord[h][d] = 0;
						h = h -1;
					}
				}
				f = 0; h = 0;
			}
		}
		
		if(down === 1){
			for(var d =0; d<4; d++){
				var f = 0;
				for(var e =3; -1<e; e--){
					if(bord[e][d] === 0){
						f = f-1;
					}
					else{
						bord[e-f][d] = bord[e][d];
					}
				}
				var h = 0;
				if(f < 0){
					for(var g =0; g>f; g--){
						bord[h][d] = 0;
						h = h +1;
					}
				}
				f = 0; h = 0;
			}
		}
	}
	
	function plus(){
	if(left === 1){
		for(var d =0; d<4; d++){
			for(var e =0; e<3; e++){
				if(bord[d][e] === bord[d][e+1]){
					bord[d][e] = bord[d][e]*2;
					bord[d][e+1] = 0;
				}
			}
		}
	}
	
	if(right === 1){
		for(var d =0; d<4; d++){
			for(var e =3; 0<e; e--){
				if(bord[d][e] === bord[d][e-1]){
					bord[d][e] = bord[d][e]*2;
					bord[d][e-1] = 0;
				}
			}
		}

	}
	
	if(up === 1){
		for(var d =0; d<4; d++){
			for(var e =0; e<3; e++){
				if(bord[e][d] === bord[e+1][d]){
					bord[e][d] = bord[e][d]*2;
					bord[e+1][d] = 0;
				}
			}
		}
	}

	if(down === 1){
		for(var d =0; d<4; d++){
			for(var e =3; 0<e; e--){
				if(bord[e][d] === bord[e-1][d]){
					bord[e][d] = bord[e][d]*2;
					bord[e-1][d] = 0;
				}
			}
		}
	}
	}
	
newblock();
newblock();
UI();
</script>
  <form method="post" name="aaa" action="/Blocksave">
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


