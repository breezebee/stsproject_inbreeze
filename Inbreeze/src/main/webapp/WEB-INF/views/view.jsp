<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../../css/review.css">
<head>
<meta charset="UTF-8">
<title>View</title>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'deleteok/' + id;
	}
</script>
</head>
<body>
	<div class="background">
		<div class="bar col-5"></div>
		<div class="blank col-5"></div>
		<h2 class="secondtitle col-65">제목: ${u.title}</h2>
		<table class="reviewtable col-65">
			<tbody>
				<tr>
					<td class="td">메뉴</td>
					<td id="colorchange">${u.menu}</td>
					<td class="td">점수</td>
					<td id="colorchange">${u.score}</td>
					<td class="td">글쓴이</td>
					<td id="colorchange">${u.writer}</td>
				</tr>
				<tr>
					<td class="td" id="textbox"><h3>리뷰내용</h3></td>
					<td colspan="6" id="colorchangebox">${u.content}</td>
				</tr>
				<tr>
					<td colspan="6"><a id="b" class="button"
						href="editform/${u.seq}">수정</a> <a class="button"
						href="javascript:delete_ok('${u.seq}')">삭제</a></td>
				</tr>
			</tbody>
		</table>
		<div class="nav col-20">
			<img class="logo" src="../../img/logo.jpg" alt="logo">
			<div id="navbuttons">
				<a href="main" class="navbutton">Home</a> <a href="#"
					class="navbutton">Menu</a> <a href="#" class="navbutton">Order</a>
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