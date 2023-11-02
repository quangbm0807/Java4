<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tìm Kiếm Theo Tháng</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.form-container {
	max-width: 600px;
	margin: 2rem auto;
	background-color: white;
	border-radius: 10px;
	padding: 1.5rem;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.table th {
	background-color: #343a40;
	color: white;
}

.table-hover tbody tr:hover {
	background-color: #f5f5f5;
}

.btn-refresh {
	background-color: #007bff;
	color: white;
}

.btn-refresh:hover {
	background-color: #0056b3;
}

.form-select {
	border-radius: 0.5rem;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="/Lab6Summer2024/index.jsp">Lab 6</a>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="form-container">
			<h2 class="text-center mb-4">Tìm Kiếm Theo Tháng</h2>
			<form action="/Lab6Summer2024/bai4-year" method="post">
				<div class="mb-3">
					<select onChange="changeAction()" id="select_box" name="year"
						class="form-select" aria-label="Chọn năm">
						<c:forEach var="year" items="${years}">
							<c:if test="${year[1] == index}">
								<option selected>${year[0]}</option>
							</c:if>
							<c:if test="${year[1] != index}">
								<option>${year[0]}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>

			</form>

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th scope="col">Tiêu Đề</th>
						<th scope="col">Số Lượt Yêu Thích</th>
						<th scope="col">Ngày Mới Nhất</th>
						<th scope="col">Ngày Cũ Nhất</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="report" items="${reports}">
						<tr>
							<td scope="row">${report[0]}</td>
							<td>${report[1]}</td>
							<td>${report[2]}</td>
							<td>${report[3]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		var x = document.getElementById("select_box");
		x.addEventListener("change", function() {
			window.location = "/Lab6Summer2024/bai4-year?year=" + x.value
					+ "&index=" + x.selectedIndex;
		});
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
