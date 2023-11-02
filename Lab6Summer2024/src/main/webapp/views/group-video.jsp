<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Báo Cáo Nhóm Video</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.report-container {
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

.badge-count {
	background-color: #007bff;
	color: white;
	font-size: 0.9em;
	padding: 0.3em 0.6em;
	border-radius: 10px;
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
		<h1 class="text-center mt-5 mb-4">Báo Cáo Nhóm Video</h1>

		<div class="report-container">
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th scope="col">Title</th>
							<th scope="col">Số Lượt Yêu Thích</th>
							<th scope="col">Ngày Mới Nhất</th>
							<th scope="col">Ngày Cũ Nhất</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="report" items="${reports}">
							<tr>
								<td scope="row">${report.groupp}</td>
								<td><span class="badge badge-count">${report.likes}</span></td>
								<td><i class="far fa-calendar-alt"></i> ${report.newest}</td>
								<td><i class="far fa-calendar-alt"></i> ${report.oldest}</td>
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