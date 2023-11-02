<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kết quả</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<style>
body {
	background-color: antiquewhite;
	padding: 20px;
}

.card {
	max-width: 600px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<%@ include file="../index.jsp"%>
	<div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<h2 class="card-title">Thông tin nhân viên</h2>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Họ và tên:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${bean.fullname}</p>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Ảnh đại diện:</label>
					<div class="col-sm-9">
						<img src="files/${bean.photo_file}" class="img-fluid"
							alt="Ảnh đại diện">
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Ngày sinh:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${bean.birthday}</p>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Giới tính:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${phait}</p>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Tình trạng hôn nhân:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${bean.married ? 'Đã kết hôn' : 'Chưa kết hôn'}</p>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Quốc gia:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${bean.country}</p>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Sở thích:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${st}</p>
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-3 col-form-label">Ghi chú:</label>
					<div class="col-sm-9">
						<p class="form-control-static">${bean.note}</p>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
