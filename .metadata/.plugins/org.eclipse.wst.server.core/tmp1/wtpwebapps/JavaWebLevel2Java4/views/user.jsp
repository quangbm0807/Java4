<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<base href="/Slide5Java4Demo1/">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body class="bg-info">
	<div class="container col-8 pt-2">
		<div class="border rounded bg-light pl-4 pr-4 p-3">
			<div class="row p-2 pl-3 pt-3 bg-danger text-white rounded">
				<h2>LIST USERS</h2>
			</div>
			<div class="row p-2">
				<div class="col">
					<c:if test="${not empty message}">
						<div class="alert alert-success">${message}</div>
					</c:if>
					<c:if test="${not empty error}">
						<div class="alert alert-danger">${error}</div>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form action="user" method="post">
						<div class="form-group">
							<label>User ID:</label> <input type="text" class="form-control" name="id" value="${user.id}" />
						</div>
						<div class="form-group">
							<label>Password:</label> <input type="password" class="form-control" name="password" value="${user.password}" />
						</div>
						<div class="form-group">
							<label>Fullname:</label> <input type="text" class="form-control" name="fullname" value="${user.fullname}" />
						</div>
						<div class="form-group">
							<label>Email Address:</label> <input type="text" class="form-control" name="email" value="${user.email}" />
						</div>
						<div class="form-check form-check-inline">
							<label>Role:&nbsp;&nbsp;&nbsp;</label> <label class="ml-2"><input type="radio" class="form-check-input"
								name="admin" value="true" />Admin </label> <label class="ml-2"><input
								type="radio" class="form-check-input" name="admin" value="false"  />User </label>
						</div>
						<div class="form-group pt-2">
							<button class="btn btn-primary" formaction="user/create">Create</button>
							<button class="btn btn-warning" formaction="user/update">Update</button>
							<button class="btn btn-danger" formaction="user/delete" disabled="disabled">Delete</button>
							<button class="btn btn-info" formaction="user/reset">Reset</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row pt-0 pl-3 pr-3">
				<table class="table border border-dark">
					<thead class="thead-dark font-weight-bold bg-dark text-white">
						<tr>
							<td>User ID</td>
							<td>Password</td>
							<td>Fullname</td>
							<td>Email</td>
							<td>Role</td>
							<td>&nbsp;</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${users}">
							<tr>
								<td>${item.id}</td>
								<td>${item.password}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								<td>${item.admin ? 'Admin' : 'User'}</td>
								<td><a href="user/edit?id=${item.id}">Edit</a> | <a href="user/delete?id=${item.id}">Delete</a></td>
							</tr>
						</c:forEach>
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