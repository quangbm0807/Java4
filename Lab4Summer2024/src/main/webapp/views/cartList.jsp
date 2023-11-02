<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Giỏ hàng ArrayList</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="container">
        <h2 class="my-4">Giỏ hàng ArrayList</h2>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Hình ảnh</th>
                    <th scope="col">Giá gốc</th>
                    <th scope="col">Giá mới</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}" varStatus="status">
                    <tr>
                        <th scope="row">${status.index + 1}</th>
                        <td>${item.name}</td>
                        <td><img src="/Lab4Summer2024/views/images/${item.image}" style="width: 80px; height: auto;"></td>
                        <td><fmt:formatNumber value="${item.price}" type="currency"/></td>
                        <td><fmt:formatNumber value="${item.price * (1 - item.discount)}" type="currency"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
