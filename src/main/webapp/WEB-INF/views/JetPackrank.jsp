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

  <div class = "main">
  <table border="1">
      <tr>
         <td  width="500" align ="center">SCORE</td> <td  width="500" align ="center">PLAYERS</td>
      </tr>
      <tr>
         <td colspan="2">-----------------------------------------------------------------------------</td>
      </tr>
   
		<c:forEach var="dto" items="${carrier}">
		  <tr>
		    <td align ="center">"${dto.score}"</td>
		    <td align ="center">${dto.name}</td>
		  </tr>
		</c:forEach>
	
	</table>
  </div>

  <div class = "footer">
  <jsp:include page="footer.jsp"></jsp:include>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>


