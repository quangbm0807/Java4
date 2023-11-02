<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Lab 1</h1>
	<hr>
	<h1>Bai2</h1>
	<a href="bai1.jsp">Bai1</a>
	<a href="index.jsp">Trang chủ</a>
	<form action="bai2" method="post">
		<h4>Nhập số a</h4>
		<input type="text" name="txtA">
		<h4>Nhập số b</h4>
		<input type="text" name="txtB"> <input type="submit">
	</form>
	<h2>Tổng của 2 số là: ${ketqua}</h2>
</body>
</html>