<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../css/review.css">
<head>
<meta charset="UTF-8">
<title>Add Form</title>
</head>
<body>
	<div class="background">
		<div class="bar col-5"></div>
		<div class="blank col-5"></div>
		<h2 class="secondtitle col-70">리뷰</h2>
		<form action="addok col-5" method="post">
			<table id="list" class="col-65" width="90%">
				<tr>
					<td class="td" id="short">ID</td>
					<td class="td" id="long">Title</td>
					<td class="td" id="short">Score</td>
					<td class="td" id="short">Writer</td>
					<td class="td" id="medium">Date</td>
				</tr>
				<c:forEach items="${list}" var="u">
					<tr>
						<td class="td2">${u.seq}</td>
						<td class="td2"><a href="view/${u.seq}">${u.title}</a></td>
						<td class="td2">${u.score}</td>
						<td class="td2">${u.writer}</td>
						<td class="td2">${u.regdate}</td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="5">
						<div id="addbutton">
							<a href="add" id="link">리뷰쓰기</a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<div class="nav col-20">
			<img class="logo" src="../img/logo.jpg" alt="logo">
			<div id="navbuttons">
				<a href="main" class="navbutton">Home</a> 
				<a href="#" class="navbutton">Menu</a> 
				<a href="#" class="navbutton">Order</a>
				<a href="list" class="navbutton">Review</a>
			</div>
			<div class="contact">
				<h3>Contact</h3>
				<p>010-1234-1234</p>
			</div>
		</div>
	</div>
</body>
</html>