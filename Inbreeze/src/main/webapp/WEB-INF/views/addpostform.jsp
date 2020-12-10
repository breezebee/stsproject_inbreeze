<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/review.css">
<meta charset="UTF-8">
<title>Add Form</title>
</head>
<body>
	<div class="background">
		<div class="blank col-5"></div>
		<h2 class="secondtitle col-70">리뷰 쓰기</h2>
		<form action="addok" method="post">
			<table class="reviewtable col-70">
				<tbody>
					<tr>
						<td class="td"><h3>제목</h3></td>
						<td><input type="text" name="title" /></td>
						<td class="td"><h3>글쓴이</h3></td>
						<td><input type="text" name="writer" /></td>
						<td class="td"><h3>점수</h3></td>
						<td><input type="text" name="score" /></td>
					</tr>
					<tr>
						<td class="td"><h3>메뉴</h3></td>
						<td colspan="6"><input type="text" name="menu" /></td>
					</tr>
					<tr>
						<td class="td" id="textbox"><h3>리뷰내용</h3></td>
						<td colspan="6"><textarea cols="50" rows="5" name="content"></textarea></td>
					</tr>
					<tr>
						<td colspan="6"><input class="button" id="a" type="submit"
							value="리뷰쓰기" /> <input class="button" id="a" type="button"
							value="취소" onclick="history.back()" /></td>
					</tr>
				</tbody>
			</table>
		</form>
		<div class="nav col-20">
			<img class="logo" src="../img/logo.jpg" alt="logo">
			<div id="navbuttons">
				<a href="#" class="navbutton">Home</a> <a href="#" class="navbutton">Menu</a>
				<a href="#" class="navbutton">Order</a> <a href="#"
					class="navbutton">Review</a>
			</div>
			<div class="contact">
				<h3>Contact</h3>
				<p>010-1234-1234</p>
			</div>
		</div>
	</div>
</body>
</html>
