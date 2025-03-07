<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <title>Hello, world!</title>
  </head>
  <body>
  <div class="header">
  <jsp:include page="header.jsp"></jsp:include>
  </div>
  <br>

  <div class = "main">
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" onclick="location.href='/HowBlock_1' "></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" onclick="location.href='/HowBlock_2' "></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" class="active"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/image/Block_3.PNG">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" onclick="location.href='/HowBlock_2' ">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" onclick="location.href='/HowBlock_1' ">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
  </div>

  <div class = "footer">
  <jsp:include page="footer.jsp"></jsp:include>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>


