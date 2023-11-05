<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/10e174ecbc.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">

			<div class="form-box">
<h1>LOGIN</h1>

	<form action="validate.jsp">
	
	
	
	<div class="input-group">
	
	
	<div class="input-field">
	<i class="fa-solid fa-envelope"></i>
	<input  type="email" placeholder="email" name="email" required>
	</div>
	
	
	
	
	<div class="input-field">
	<i class="fa-solid fa-lock"></i>
	<input type="text" placeholder="password"  name="pass" required>
	</div>
	
	
	<div class="btn">
		<input type="submit">
		
	</div>
	
	</div>
	</form>
	</div>
</div>
</body>
</html>