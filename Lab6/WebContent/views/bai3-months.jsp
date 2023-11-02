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

.search-container {
	max-width: 600px;
	margin: 2rem auto;
}

.table-container {
	background-color: white;
	border-radius: 10px;
	padding: 1rem;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.btn-search {
	background-color: #007bff;
	color: white;
}

.btn-search:hover {
	background-color: #0056b3;
}

.table th {
	background-color: #343a40;
	color: white;
}

.badge-active {
	background-color: #28a745;
}

.badge-inactive {
	background-color: #dc3545;
}

.month-checkbox {
	display: inline-block;
	margin-right: 10px;
	margin-bottom: 10px;
}

.month-checkbox input[type="checkbox"] {
	display: none;
}

.month-checkbox label {
	display: inline-block;
	background-color: #e9ecef;
	padding: 10px 15px;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.month-checkbox input[type="checkbox"]:checked+label {
	background-color: #007bff;
	color: #ffffff;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="/Lab6Summer2024/index.jsp">Lab
				6</a>
		</div>
	</nav>
	<div class="container">
		<h1 class="text-center mt-5 mb-4">Tìm Kiếm Theo Tháng</h1>

		<div class="search-container">
			<form action="/Lab6Summer2024/bai3-months" method="post">
				<div class="d-flex flex-wrap justify-content-center mb-3">
					<c:forEach var="i" begin="1" end="12">
						<div class="month-checkbox">
							<input type="checkbox" id="month${i}" name="month" value="${i}"
								${result[i-1] ? 'checked' : ''}> <label for="month${i}">${i}</label>
						</div>
					</c:forEach>
				</div>
				<div class="text-center">
					<button class="btn btn-search" type="submit">
						<i class="fas fa-search"></i> Tìm Kiếm
					</button>
				</div>
			</form>
		</div>

		<div class="table-container">
			<h4 class="mb-3">Kết Quả Tìm Kiếm</h4>
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Tiêu Đề</th>
							<th scope="col">Lượt Xem</th>
							<th scope="col">Trạng Thái</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="video" items="${videos}">
							<tr>
								<td scope="row">${video.id}</td>
								<td>${video.title}</td>
								<td>${video.views}</td>
								<td><c:choose>
										<c:when test="${video.active}">
											<span class="badge badge-active">Hoạt Động</span>
										</c:when>
										<c:otherwise>
											<span class="badge badge-inactive">Không Hoạt Động</span>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>