<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!doctype html>
<html lang="en">
<head>
<title>Java Web Level - 2 Homepage</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<base href="/JavaWebLevel2Java4/">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body class="bg-info">
	<div class="container col-8 pt-2">
		<div class="border rounded bg-light pl-4 pr-4 p-3">
			
			
			<div class="row pt-0 pl-3 pr-3">
				<table class="table border border-dark">
					<thead class="thead-dark font-weight-bold bg-dark text-white">
						<tr>
							<td>List of functions</td>
						</tr>
						
					</thead>
					<tbody>
					<tr>
						<td><a href="account/sign-up">Sign-up</a></td>
					</tr>
					<tr>
						<td><a href="account/sign-in">Sign-in</a></td>
					</tr>
					<tr>
						<td><a href="importStudent">Import Students from excel (.xlsx)</a></td>
					</tr>
					<tr>
						<td><a href="listOfStudents">List of students (Select from DB)</a></td>
					</tr>
					<tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>