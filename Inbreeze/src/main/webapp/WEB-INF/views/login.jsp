<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../css/review.css">
<head>
<meta charset="UTF-8">
<title>in breezes</title>
</head>
<body>
	<div class="row">
		<div class="homelogo col-35">
			<h1 class="title">in Breezes</h1>
			<p class="subtitle">We give you the best taste.</p>
			<div>
				<form method="post" action="loginOk"><br />
					<div class="login">
						<label id="login">User ID  </label><input id="loginform" type='text' name='userid' />
					</div>
					<div class="login">
						<label id="login">User PW </label><input id="loginform" type='password' name='password' />
					</div>
					<button id="loginbutton" type='submit'>login</button>
				</form>
			</div>
		</div>
		<img class="mainimg col-65" src="../img/mainpic.jpg" alt="salad"> 
	</div>

</body>
</html>