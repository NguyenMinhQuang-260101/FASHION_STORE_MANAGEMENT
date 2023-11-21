<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
	margin-top: 50px;
	float: left;
	margin-right: 50px;
	height: 350px;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
	margin-bottom: 5px;
}

.card button:hover {
	opacity: 0.7;
}

.text {
	background: #f1f1f1;
	justify-content: center;
	text-align: center;
}

.text h1 {
	margin: 5px 5px 5px 5px;
}

.noidung {
	margin-left: 200px;
}

.list-sanpham {
	margin-left: 250px;
}
</style>
</head>

<body>
	<div>
		<%@include file="main-menu.jsp"%>
	</div>
	<div class="noi-dung">
		<div class="text">
			<h1>SẢN PHẨM DÀNH CHO BẠN</h1>
		</div>
		<div class="list-sanpham">
			<table>
				<c:forEach var="tempSanPham" items="${sanPhams}">
					<tr>
						<div class="card">
							<img src=" ${tempSanPham.anhSP}" alt="#maSP"
								style="width: 50%; height: 50%; margin-top: 20px">
							<h3 style="margin: 5px 5px 5px 5px">${tempSanPham.tenSP}</h3>
							<p class="price">${tempSanPham.giaBan}</p>
							<c:url var="ViewProductLink" value="/sanPham/showFormForView">
								<c:param name="maSP" value="${tempSanPham.maSP}"></c:param>
							</c:url>
							<input style="width: 100%; color: white; background-color: black"
								type="button" value="Add to Cart"
								onclick="window.location.href='${ViewProductLink}'; return false;"
								class="add-button ">
						</div>
					</tr>

				</c:forEach>

			</table>
		</div>
	</div>
</body>
</html>