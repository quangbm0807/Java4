<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Thêm Thành Viên</title>
</head>
<body>
	<h1>Thêm Thành Viên</h1>
	<form action="servletdemo" method="post">
		<label for="ten">Tên:</label> <input type="text" id="ten" name="ten"
			required><br>
		<br> <label for="tuoi">Tuổi:</label> <input type="number"
			id="tuoi" name="tuoi" required><br>
		<br> <label for="nganhHoc">Ngành Học:</label> <input type="text"
			id="nganhHoc" name="nganhHoc" required><br>
		<br> <input type="submit" value="Thêm">
	</form>
</body>
</html>
