<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Random</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.table-container {
	max-width: 800px;
	margin: 2rem auto;
	background-color: white;
	border-radius: 10px;
	padding: 2rem;
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

.badge-active {
	background-color: #28a745;
}

.badge-inactive {
	background-color: #dc3545;
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
		<div class="table-container">
			<div class="d-flex justify-content-between mb-3">
				<div></div>
				<button class="btn btn-refresh" onclick="window.location.reload();">
					<i class="fas fa-sync-alt"></i> Tải Lại
				</button>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Title</th>
						<th scope="col">Views</th>
						<th scope="col">Active</th>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
