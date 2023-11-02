<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <%@ include file="header.jsp"%>
    <div class="container">
        <h2 class="my-4">Chi tiết sản phẩm</h2>
        <c:if test="${not empty param.itemAdded}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                Sản phẩm đã được thêm vào giỏ hàng thành công!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <div class="card">
            <img src="views/images/${item.image}" style="width: 300px; height: auto;" class="card-img-top" alt="${item.name}">
            <div class="card-body">
                <h5 class="card-title">${item.name}</h5>
                <p class="card-text">Giá gốc: <strike>${item.price}</strike></p>
                <p class="card-text">Giá mới: <fmt:formatNumber value="${item.price * (1 - item.discount)}" type="currency"/></p>
                <form action="addToCart" method="post">
                    <input type="hidden" name="itemName" value="${item.name}">
                    <input type="hidden" name="itemImage" value="${item.image}">
                    <input type="hidden" name="itemPrice" value="${item.price}">
                    <input type="hidden" name="itemDiscount" value="${item.discount}">
                    <button type="submit" class="btn btn-primary">Thêm vào giỏ hàng</button>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
