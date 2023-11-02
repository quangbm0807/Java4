<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!doctype html>
<html lang="en">
<head>
<title>Sign up</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<base href="/JavaWebLevel2Java4/">
<!-- CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
</head>
<body>
	<div class="main">
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						<form class="account/sign-up" method="POST">
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
								<label class="ml-2"><input class="form-check-input" name="admin" value="false" type="hidden" /></label>
							</div>
							<c:if test="${not empty message}">
								<div class="alert">${message}</div>
							</c:if>
							<c:if test="${not empty error}">
								<div class="alert">${error}</div>
							</c:if>
							<div class="form-group form-button">
								<input type="submit" class="form-submit" value="Register" formaction="account/sign-up" />
							</div>
						</form>
					</div>  
					<div class="signup-image">
						<figure>
							<img src="img/signup.jpg">
						</figure>
						<a href="account/sign-in" class="signup-image-link">I am already member</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>