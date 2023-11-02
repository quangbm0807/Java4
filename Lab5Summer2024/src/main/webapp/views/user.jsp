<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form with Bootstrap</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body style="background-color: bisque;">
	<div class="alert">
		<c:if test="${not empty message}">
			<div class="alert alert-success">${message}</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger">${error}</div>
		</c:if>
	</div>
	<div class="container mt-5">
		<h1 class="text-center">User Manager</h1>
		<form id="userForm" method="post"
			action="${pageContext.request.contextPath}/user/${user.id == null ? 'create' : 'update'}">
			<div class="mb-3">
				<label for="id" class="form-label fw-bold">ID</label> <input
					type="text" class="form-control" id="id" name="id"
					value="${user.id}" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label fw-bold">Password</label> <input
					type="password" class="form-control" id="password" name="password"
					value="${user.password}" required>
			</div>
			<div class="mb-3">
				<label for="fullname" class="form-label fw-bold">Full Name</label> <input
					type="text" class="form-control" id="fullname" name="fullname"
					value="${user.fullname}" required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label fw-bold">Email</label> <input
					type="email" class="form-control" id="email" name="email"
					value="${user.email}" required>
			</div>
			<div class="mb-3">
				<label class="form-label fw-bold">Role</label>
				<div>
					<input id="admin" type="radio" name="admin" value="true"
						${user.admin ? 'checked' : ''}> <label for="admin">Admin</label>
					<input id="user" type="radio" name="admin" value="false"
						${!user.admin ? 'checked' : ''}> <label for="user">User</label>
				</div>
			</div>

			<button type="submit" name="action" value="create"
				class="btn btn-success">Create</button>
			<button type="submit" name="action" value="update"
				class="btn btn-warning">Update</button>
			<button type="submit" name="action" value="delete"
				class="btn btn-danger">Delete</button>
			<button type="submit" name="action" value="reset" class="btn btn-info">Reset</button>
		</form>

	</div>

	<div class="container mt-5">
		<h2>User List</h2>
		<table class="table  table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Full Name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
						<td>${user.id}</td>
						<td>${user.fullname}</td>
						<td>${user.email}</td>
						<td>${user.admin ? 'Admin' : 'User'}</td>
						<td><a
							href="${pageContext.request.contextPath}/user/edit?id=${user.id}"
							class="btn btn-warning">Edit</a> <a
							href="${pageContext.request.contextPath}/user/delete?id=${user.id}"
							class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<nav aria-label="Page navigation">
			<ul class="pagination">
				<c:forEach begin="0" end="${totalPages - 1}" var="i">
					<li class="page-item ${currentPage == i ? 'active' : ''}"><a
						class="page-link"
						href="${pageContext.request.contextPath}/user/index?page=${i}">${i + 1}</a>
					</li>
				</c:forEach>
			</ul>
		</nav>
	</div>
</body>
</html>
