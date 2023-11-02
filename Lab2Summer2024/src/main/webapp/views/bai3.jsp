<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Kết Quả Đăng Ký</title>
</head>

<body>
<a href="bai1">Bài 1 ||</a>
	<a href="bai2">Bài 2 ||</a>
	<a href="index.jsp">Trang chủ ||</a>
    <div class="container mt-5">
        <div class="container-fluid bg-primary-subtle">
            <h1 class="p-4">Kết quả đăng ký</h1>
        </div>
        <form>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Tên Đăng Nhập:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${username}</p>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Mật Khẩu:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${password}</p>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Giới Tính:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${gioitinh}</p>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Tình Trạng:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${married}</p>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Quốc Tịch:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${country}</p>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Sở Thích:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${sothich}</p>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label class="fw-bold">Ghi Chú:</label>
                </div>
                <div class="col-8">
                    <p class="fw-medium">${ghichu}</p>
                </div>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
