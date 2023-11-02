<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<style>
body {
	background-color: antiquewhite;
}
</style>
</head>

<body>
<%@ include file="../index.jsp" %>
	<div class="container mt-5">
		<h2 class="text-center mb-5">Thông tin nhân viên</h2>
		<form action="add" method="post" enctype="multipart/form-data">
			<div class="mb-3 row align-items-center">
				<label for="fullname" class="col-sm-3 col-form-label">Họ và
					tên:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="fullname"
						name="fullname" >
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label for="photo" class="col-sm-3 col-form-label">Upload
					ảnh:</label>
				<div class="col-sm-9">
					<input type="file" class="form-control" id="photo"
						name="photo_file" >
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label for="birthday" class="col-sm-3 col-form-label">Ngày
					sinh:</label>
				<div class="col-sm-9">
					<input type="date" class="form-control" id="birthday"
						name="birthday" >
				</div>
			</div>
			<fieldset class="mb-3 row align-items-center">
				<legend class="col-sm-3 col-form-label">Giới tính:</legend>
				<div class="col-sm-9">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="male" value="true"> <label class="form-check-label"
							for="male"> Nam </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="female" value="false"> <label
							class="form-check-label" for="female"> Nữ </label>
					</div>
				</div>
			</fieldset>
			<div class="mb-3 row align-items-center">
				<label class="col-sm-3 col-form-label">Tình trạng hôn nhân:</label>
				<div class="col-sm-9">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="married"
							name="married" value="true"> <label
							class="form-check-label" for="married"> Đã kết hôn </label>
					</div>
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label for="country" class="col-sm-3 col-form-label">Quốc
					gia:</label>
				<div class="col-sm-9">
					<select class="form-select" id="country" name="country" >
						<option value="">Chọn quốc gia</option>
						<option value="Vietnamese">Vietnamese</option>
						<option value="United States">United States</option>
						<option value="United Kindom">United Kindom</option>
					</select>
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label class="col-sm-3 col-form-label">Sở thích:</label>
				<div class="col-sm-9">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="reading"
							name="hobbies" value="Coding"> <label
							class="form-check-label" for="reading"> Coding </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="travelling"
							name="hobbies" value="Travel"> <label
							class="form-check-label" for="travelling"> Travel </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="cooking"
							name="hobbies" value="Music"> <label
							class="form-check-label" for="cooking"> Music </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="cooking"
							name="hobbies" value="Other"> <label
							class="form-check-label" for="cooking"> Other </label>
					</div>
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label for="note" class="col-sm-3 col-form-label">Ghi chú:</label>
				<div class="col-sm-9">
					<textarea class="form-control" id="note" name="note" rows="3"></textarea>
				</div>
			</div>
			<div class="mb-3 row">
				<div class="col-sm-3"></div>
				<div class="col-sm-9">
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</div>


		</form>
	</div>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</body>

</html>
