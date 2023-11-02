<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lab 6</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .section-title {
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .card {
            transition: transform 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="/Lab6Summer2024/index.jsp">Lab 6</a>
        </div>
    </nav>

    <div class="container mt-5">
        
        <div class="row">
            <div class="col-md-4 mb-4">
                <h2 class="section-title">Bài 2</h2>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tìm Kiếm</h5>
                        <a href="/Lab6Summer2024/id-search" class="btn btn-primary mb-2"><i class="fas fa-search"></i> Tìm theo ID</a>
                        <a href="/Lab6Summer2024/title-search" class="btn btn-info mb-2"><i class="fas fa-video"></i> Tìm Video</a>
                        <a href="/Lab6Summer2024/persion-search" class="btn btn-success mb-2"><i class="fas fa-user"></i> Tìm Người Dùng</a>
                        <a href="/Lab6Summer2024/favorite-search?favorite=false" class="btn btn-warning mb-2"><i class="fas fa-star"></i> Tìm Yêu Thích</a>
                        <a href="/Lab6Summer2024/group-video" class="btn btn-danger"><i class="fas fa-chart-bar"></i> Báo Cáo</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4 mb-4">
                <h2 class="section-title">Bài 3</h2>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tìm Kiếm Nâng Cao</h5>
                        <a href="/Lab6Summer2024/bai3-title" class="btn btn-primary mb-2"><i class="fas fa-heading"></i> Tìm theo Tiêu Đề</a>
                        <a href="/Lab6Summer2024/bai3-id" class="btn btn-info mb-2"><i class="fas fa-id-card"></i> Tìm theo ID</a>
                        <a href="/Lab6Summer2024/bai3-range" class="btn btn-success mb-2"><i class="fas fa-arrows-alt-h"></i> Tìm theo Phạm Vi</a>
                        <a href="/Lab6Summer2024/bai3-months" class="btn btn-warning"><i class="fas fa-calendar-alt"></i> Tìm theo Tháng</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4 mb-4">
                <h2 class="section-title">Bài 4</h2>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Ngẫu nhiên và theo năm</h5>
                        <a href="/Lab6Summer2024/bai4-ran" class="btn btn-primary mb-2"><i class="fas fa-random"></i> Ngẫu Nhiên</a>
                        <a href="/Lab6Summer2024/bai4-year" class="btn btn-info"><i class="fas fa-calendar-week"></i> Tìm theo Năm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>