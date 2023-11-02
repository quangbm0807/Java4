<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <!-- Thêm Bootstrap CSS từ CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<%@ include file="header.jsp"%>
<body>
    <div class="container">
        <h2 class="my-4">Danh sách sản phẩm</h2>
        <div class="row">
            <c:forEach var="item" items="${items}" varStatus="status">
                <div class="col-md-4 mb-4 col-sm-6 col-12">
                    <div class="card">
                       <img src="views/images/${item.image}" class="card-img-top" style="width: 100%; height: 500px;" alt="${item.name}">
                        <div class="card-body">
                            <h5 class="card-title">${item.name}</h5>
                            <p class="card-text">Giá gốc: <strike>${item.price}</strike></p>
                            <p class="card-text">Giá mới: <fmt:formatNumber value="${item.price * (1 - item.discount)}" type="currency"/></p>
                            <a href="home.jsp?itemIndex=${status.index}" class="btn btn-primary">Xem chi tiết</a>
                            <form action="list" method="post" class="mt-2">
                                <input type="hidden" name="itemIndex" value="${status.index}">
                                <button type="submit" class="btn btn-success">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <h2 class="my-4">Giỏ hàng</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Giá gốc</th>
                    <th>Giá đã giảm</th>
                    <th>Thời gian đặt</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cartItem" items="${cart}">
                    <tr>
                        <td>${cartItem.name}</td>
                        <td><img src="views/images/${cartItem.image}" style="width: 50px; height: 50px;" alt="${cartItem.name}"></td>
                        <td><fmt:formatNumber value="${cartItem.price}" type="currency"/></td>
                        <td><fmt:formatNumber value="${cartItem.price * (1 - cartItem.discount)}" type="currency"/></td>
                        <td><fmt:formatDate value="${cartItem.date}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <%@ include file="footer.jsp"%>
    <!-- Thêm Bootstrap JS từ CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
