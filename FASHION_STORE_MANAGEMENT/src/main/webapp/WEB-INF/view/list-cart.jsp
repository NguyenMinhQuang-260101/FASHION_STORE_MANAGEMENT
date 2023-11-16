<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Sản phẩm</title>
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

				<table style="width: 100%">
					<tr>
						<th>Ảnh sản phẩm</th>
						<th>Tên sản phẩm</th>
						<th>Kích cỡ</th>
						<th>Giá bán</th>
						<th>Số lượng</th>

						<th colspan="2">Action</th>
					</tr>
					<c:forEach var="tempCart" items="${listItemCart}">
						<tr>
							<td>${tempCart.sanPham.anhSP}</td>
							<td>${tempCart.sanPham.tenSP}</td>
							<td>${tempCart.sanPham.kichCo}</td>
							<td>${tempCart.sanPham.giaBan}</td>
							<td>${tempCart.soLuongMua}</td>

							<c:url var="deleteLink" value="/khachHang/deleteItemCart">
								<c:param name="maSP" value="${tempCart.sanPham.maSP}"></c:param>
							</c:url>

							<td>
								<div align="center">
									<a href="${deleteLink}"
										onclick="if(!(confirm('Are you sure to delete this san pham?'))) return false">Delete</a>&emsp;
								</div>
							</td>
						</tr>

					</c:forEach>
				</table>
				<input type="button" value="THANH TOÁN"
					onclick="window.location.href='showFormForPay'; return false;"
					class="add-button">
			</div>
		</div>
	</div>
</body>
</html>