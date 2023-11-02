<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tam giác</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<a href="index.jsp">Trang chủ ||</a>
	<a href="bai2">Bài 2 ||</a>
	<a href="bai3">Bài 3 ||</a>
	<br>
	<form method="post">
		<input name="a" placeholder="Cạnh a" value="${a}"> <br> <input
			name="b" placeholder="Cạnh b" value="${b}"> <br> <br>
		<button formaction="dientich">Tính diện tích</button>
		<button formaction="chuvi">Tính chu vi</button>
		<button formaction="tinhhieu">Tính hiệu</button>
	</form>
	<h3>${message}</h3>
</body>
</html>
