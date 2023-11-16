<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Sản phẩm mua</title>
<style>
table, th, td {
	border: 1px solid black;
}

.test {
	margin-left: 200px;
}
</style>
</head>
<body>
	<div>
		<%@include file="main-menu.jsp"%>
	</div>

	<div class="test">
		<div id="container">
			<div id="content" align="center">
				<h3>Thanh Toán</h3>
				<table style="width: 100%">
					<tr>
						<th>Ảnh sản phẩm</th>
						<th>Tên sản phẩm</th>
						<th>Kích cỡ</th>
						<th>Giá bán</th>
						<th>Số lượng</th>
						<th>Tổng tiền</th>

					</tr>
					<c:forEach var="tempCart" items="${listItemCart}">
						<tr>
							<td>${tempCart.sanPham.anhSP}</td>
							<td>${tempCart.sanPham.tenSP}</td>
							<td>${tempCart.sanPham.kichCo}</td>
							<td>${tempCart.sanPham.giaBan}</td>
							<td>${tempCart.soLuongMua}</td>
							<td>${tempCart.tongGiaSP}</td>
						</tr>
					</c:forEach>
				</table>

				<input type="button" value="ĐẶT HÀNG"
					onclick="window.location.href='showDonePay'; return false;"
					class="pay-button">
			</div>
		</div>
	</div>
</body>
</html>