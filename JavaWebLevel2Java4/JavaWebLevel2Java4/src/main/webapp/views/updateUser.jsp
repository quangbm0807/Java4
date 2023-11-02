<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Edit User</title>
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
				<h2>Edit User</h2>
				<h2>${message }</h2>
				
			</div>
			<form class="user/edit" method="POST">
							<div class="form-group">
								<label><i class="zmdi zmdi-account material-icons-name"></i></label> 
								<input type="hidden" name="id" placeholder="Username" value="${user.id}"/>
								Edit User ID: ${user.id}
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-lock"></i></label> 
								<input type="password" name="password" placeholder="Password" value="${user.password}" />
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-account-box"></i></label> 
								<input type="text" name="fullname" placeholder="Fullname" value="${user.fullname}"/>
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-email"></i></label> 
								<input type="email" name="email" placeholder="Your Email" value="${user.email}"/>
							</div>
							<div class="form-check form-check-inline">
								<label class="ml-2">
								<input type="radio" name="userType" value="true" ${user.admin?"checked":""}/> Admin <input type="radio" name="userType" value="false" ${!user.admin?"checked":""}/> User
							</div>
							<div class="form-group form-button">
								<input type="submit" name="updateUserButton" class="form-submit" value="Edit User" formaction="user/edit" />
							</div>
						</form>
				<a href="userList">List of Users</a>
			</div>
		</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>