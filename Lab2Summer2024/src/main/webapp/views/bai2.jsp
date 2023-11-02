<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Bài 2</title>
</head>
<body>
	<a href="bai1">Bài 1 ||</a>
	<a href="index.jsp">Trang chủ ||</a>
	<a href="bai3">Bài 3 ||</a>
	<div class="container">
		<div class="container-fluid bg-primary-subtle">
			<h1 class="p-4">Đăng ký</h1>
		</div>

		<form method="post" action="bai2">
			<div class="mb-3">
				<label for="username" class="form-label fw-bold me-4">Tên
					Đăng Nhập</label> <input type="text" class="form-control" id="username"
					name="username" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label fw-bold me-4">Mật
					Khẩu</label> <input type="password" class="form-control" id="password"
					name="password" required>
			</div>
			<div class="mb-3">
				<label class="form-label fw-bold me-4">Giới Tính</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gioiTinh"
						id="Nam" value="Nam" required> <label
						class="form-check-label" for="Nam">Nam</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gioiTinh"
						id="Nu" value="Nữ" required> <label
						class="form-check-label" for="Nu">Nữ</label>
				</div>
			</div>
			<div class="mb-3">
				<label class="form-label fw-bold me-4">Tình Trạng</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="married"
						name="married" value="Đã Có Gia Đình"> <label
						class="form-check-label" for="married">Đã Có Gia Đình</label>
				</div>
			</div>
			<div class="mb-3">
				<label for="nationality" class="form-label fw-bold me-4">Quốc
					Tịch</label> <select class="form-select" id="nationality" name="country"
					required>
					<option value="">Chọn quốc tịch</option>
					<option value="Trung Quốc">Trung Quốc</option>
					<option value="Nhật Bản">Nhật Bản</option>
					<option value="Hàn Quốc">Hàn Quốc</option>
					<option value="Việt Nam">Việt Nam</option>
				</select>
			</div>
			<div class="mb-3">
				<label class="form-label fw-bold me-4">Sở Thích</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="reading"
						name="sothich" value="Đọc Sách"> <label
						class="form-check-label" for="reading">Đọc Sách</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="traveling"
						name="sothich" value="Du Lịch"> <label
						class="form-check-label" for="traveling">Du Lịch</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="gambling"
						name="sothich" value="Cờ Bạc"> <label
						class="form-check-label" for="gambling">Cờ Bạc</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="movies"
						name="sothich" value="Xem Phim"> <label
						class="form-check-label" for="movies">Xem Phim</label>
				</div>
			</div>
			<div class="mb-3">
				<label for="note" class="form-label fw-bold me-4">Ghi Chú</label>
				<textarea class="form-control" id="note" name="ghiChu" rows="3"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Đăng Ký</button>
		</form>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
