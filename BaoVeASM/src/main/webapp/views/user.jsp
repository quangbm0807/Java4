<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>user Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Add your custom CSS styles here */
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<div class="navbar-nav ms-auto">
					<span class="nav-item nav-link">Welcome,
						${sessionScope.user.fullname}</span> <a class="nav-item nav-link"
						href="${pageContext.request.contextPath}/home">Home</a> <a
						class="nav-item nav-link"
						href="${pageContext.request.contextPath}/logout">Logout</a>
				</div>
			</div>
		</div>
	</nav>

	<div class="container mt-5">
		<c:if test="${not empty message}">
			<div class="alert alert-success">${message}</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger">${error}</div>
		</c:if>
		<h1 class="text-center">user Manager</h1>
		<c:if test="${not empty welcomeMessage}">
			<div class="alert alert-info">${welcomeMessage}</div>
		</c:if>

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
			<c:if test="${sessionScope.user.admin}">
				<button type="submit" name="action" value="create"
					class="btn btn-success">Create</button>
				<button type="submit" name="action" value="update"
					class="btn btn-warning">Update</button>
				<button type="submit" name="action" value="delete"
					class="btn btn-danger">Delete</button>
				<button type="submit" name="action" value="reset"
					class="btn btn-info">Reset</button>
			</c:if>
		</form>

	</div>

	<div class="container mt-5">
		<h2>user List</h2>

		<form action="${pageContext.request.contextPath}/user/index"
			method="get" class="d-flex mb-4"
			onsubmit="return removeEmptyFields(this)">
			<input class="form-control me-2" type="text"
				placeholder="Search by ID" aria-label="Search"
				value="${param.id != null ? param.id : ''}"> <input
				class="form-control me-2" type="search"
				placeholder="Search by Full Name" aria-label="Search"
				name="fullname"
				value="${param.fullname != null ? param.fullname : ''}"> <input
				class="form-control me-2" type="email" placeholder="Search by Email"
				aria-label="Search" name="email"
				value="${param.email != null ? param.email : ''}"> <select
				class="form-select me-2" name="role">
				<option value="">Select Role</option>
				<option value="true" ${param.role == 'true' ? 'selected' : ''}>Admin</option>
				<option value="false" ${param.role == 'false' ? 'selected' : ''}>user</option>
			</select>
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form>


		<table class="table table-striped">
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
						<td>${user.admin ? 'Admin' : 'user'}</td>
						<td><c:if test="${sessionScope.user.admin}">
								<a
									href="${pageContext.request.contextPath}/user/edit/${user.id}"
									class="btn btn-warning">Edit</a>
								<a
									href="${pageContext.request.contextPath}/user/delete?id=${user.id}"
									class="btn btn-danger">Delete</a>
							</c:if></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>

		<nav aria-label="Page navigation">
			<ul class="pagination">
				<c:choose>
					<c:when test="${totalPages > 1}">
						<c:forEach var="i" begin="0" end="${totalPages - 1}">
							<li class="page-item ${currentPage == i ? 'active' : ''}"><a
								class="page-link"
								href="${pageContext.request.contextPath}/user/index?page=${i}">
									${i + 1} </a></li>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<li class="page-item disabled"><span class="page-link">No
								pages</span></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		function removeEmptyFields(form) {
			const elements = form.elements;
			for (let i = elements.length - 1; i >= 0; i--) {
				const element = elements[i];
				if (element.type === "search" || element.type === "text"
						|| element.type === "email"
						|| element.tagName === "SELECT") {
					if (!element.value) {
						element.name = '';
					}
				}
			}
			return true;
		}
	</script>
</body>
</html>