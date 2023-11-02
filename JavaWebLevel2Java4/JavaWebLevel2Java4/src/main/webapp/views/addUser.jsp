<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>List of users</title>
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
				<h2>Add User</h2>
			</div>
			<div>
			<h2>${message }</h2>
			</div>
			<form class="user/add" method="POST">
							<div class="form-group">
								<label><i class="zmdi zmdi-account material-icons-name"></i></label> 
								<input type="text" name="id" placeholder="Username" />
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-lock"></i></label> 
								<input type="password" name="password" placeholder="Password" />
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-account-box"></i></label> 
								<input type="text" name="fullname" placeholder="Fullname" />
							</div>
							<div class="form-group">
								<label><i class="zmdi zmdi-email"></i></label> 
								<input type="email" name="email" placeholder="Your Email" />
							</div>
							<div class="form-check form-check-inline">
								<label class="ml-2">
								<input type="radio" name="userType" value="true"/> Admin <input type="radio" name="userType" value="false" checked/> User
							</div>
							<div class="form-group form-button">
								<input type="submit" name="addUserButton" class="form-submit" value="Add User" formaction="user/add" />
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