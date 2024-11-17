<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Trang chủ</title>
<!-- Thêm Bootstrap CSS từ CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="views/header.jsp"%>
	<div class="container">
		<c:choose>
			<c:when test="${not empty param.itemIndex}">
				<jsp:include page="/detail" />
			</c:when>
			<c:otherwise>
				<jsp:include page="/list" />
			</c:otherwise>
		</c:choose>
	</div>
	<%@ include file="views/footer.jsp"%>
	<!-- Thêm Bootstrap JS từ CDN -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
