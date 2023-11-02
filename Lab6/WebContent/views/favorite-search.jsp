<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tìm Kiếm Video Yêu Thích</title>
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
	background-color: white;
	border-radius: 10px;
	padding: 2rem;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	margin-top: 2rem;
}

.table-container {
	background-color: white;
	border-radius: 10px;
	padding: 2rem;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	margin-top: 2rem;
}

.table th {
	background-color: #343a40;
	color: white;
}

.table-hover tbody tr:hover {
	background-color: #f5f5f5;
}

.btn-toggle {
	background-color: #007bff;
	color: white;
	margin: 0 5px;
}

.btn-toggle:hover {
	background-color: #0056b3;
}

.btn-toggle.active {
	background-color: #28a745;
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
		<h1 class="text-center mt-5 mb-4">Tìm Kiếm Video Yêu Thích</h1>

		<div class="search-container">
			<form action="/Lab6Summer2024/favorite-search" method="post">
				<div class="d-flex justify-content-center">
					<button type="button"
						class="btn btn-toggle ${favorite ? 'active' : ''}"
						onclick="fvAction(true)">
						<i class="fas fa-heart"></i> Yêu Thích
					</button>
					<button type="button"
						class="btn btn-toggle ${favorite ? '' : 'active'}"
						onclick="fvAction(false)">
						<i class="far fa-heart"></i> Không Yêu Thích
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
						<c:forEach var="video" items="${Video}">
							<tr>
								<td scope="row">${video.id}</td>
								<td>${video.title}</td>
								<td><i class="fas fa-eye"></i> ${video.views}</td>
								<td><span
									class="badge ${video.active ? 'bg-success' : 'bg-danger'}">
										${video.active ? 'Hoạt Động' : 'Không Hoạt Động'} </span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script>
		function fvAction(x) {
			window.location = "/Lab6Summer2024/favorite-search?favorite="
					+ x;
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>