<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Sản phẩm mua</title>
<style>
body{
	background-color: #85929E;
}
table, th, td {
	border: 1.5px solid black;
	margin-left: 30px;
	margin-top:20px;
}
.noidung{
	margin-left: 200px;

}
.text{
	background: #f1f1f1;
	justify-content: center;
	text-align: center;
}
.text h1{
	padding: 5px;
}
.list-sanpham-table{
	border: 1px solid black;
	background-color:  white;
	margin-top: 10px;
	border-radius: 5px;
}
.image img{
	width: 50px;
	height: 50px;
}
</style>
</head>
<body>
	<div>
		<%@include file="main-menu.jsp" %>
	</div>

<div class="noidung">
	
		<div class="text">
			<h1>THANH TOÁN</h1>
		</div>
	
	<div id="container" class="list-sanpham-table">
			<table style="height:auto;width: 95%">
				<tr style="color: white; background-color: #566573" >
						<th>Ảnh sản phẩm</th>
						<th>Tên sản phẩm</th>
						<th>Kích cỡ</th>
						<th>Giá bán</th>
						<th>Số lượng</th>
						<th>Tổng tiền</th>

					</tr>
					<c:forEach var="tempCart" items="${listItemCart}">
						<tr class="image">
							<td> <img src="${tempCart.sanPham.anhSP}"/></td>
							<td>${tempCart.sanPham.tenSP}</td>
							<td>${tempCart.sanPham.kichCo}</td>
							<td>${tempCart.sanPham.giaBan}</td>
							<td>${tempCart.soLuongMua}</td>
							<td>${tempCart.tongGiaSP}</td>
						</tr>
					</c:forEach>
				</table>
				
				<div id="content" align="center" style="margin: 5px 5px 5px 5px">

						<input type="button" value="ĐẶT HÀNG"
							onclick="window.location.href='showDonePay'; return false;"
							class="pay-button">
				</div>
			</div>
	</div>
</body>
</html>