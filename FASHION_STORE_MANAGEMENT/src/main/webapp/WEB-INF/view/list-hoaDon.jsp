<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background-color: #85929E;
}

table, th, td {
	border: 1.5px solid black;
	margin-left: 30px;
	margin-top: 20px;
}

.noidung {
	margin-left: 200px;
}

.text {
	background: #f1f1f1;
	justify-content: center;
	text-align: center;
}

.list-nhanvien-table {
	border: 1px solid black;
	background-color: white;
	margin-top: 10px;
	border-radius: 5px;
}

.text h1 {
	padding: 5px;
}
</style>
<body>
	<div>
		<%@include file="main-menu.jsp"%>
	</div>
	<div class="noidung">

		<div class="text">
			<h1>DANH SÁCH HOÁ ĐƠN</h1>
		</div>

		<div id="container" class="list-nhanvien-table">
			<table style="height: auto; width: 95%">

				<c:forEach var="tempHoaDon" items="${chiTietHoaDons}">
					<tbody style="color: white; background-color: #566573">
						<tr>
							<% DecimalFormat formatter = new DecimalFormat("###,###,###"); %>

							
							
							

							<th>Mã hoá dơn: ${tempHoaDon.hoaDonTampID}</th>
							<th>Ngày lập hoá dơn: ${tempHoaDon.ngayLapHDTamp}</th>
							<th>Thành tiền: ${tempHoaDon.tongTienHoaDonTamp} </th>
						</tr>

						<tr style="color: white; background-color: #98AFC7">
							<th>Ảnh sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Kích cỡ</th>
							<th>Số lượng mua</th>
							<th>Giá bán</th>
						</tr>

						<c:forEach var="tempHoaDonDetail"
							items="${tempHoaDon.sanPhamTamps}">
							<tr style="color: white; background-color: #98AFC7">
								<td><img src="${tempHoaDonDetail.sanPham.anhSP}"
									alt="#maSP" style="width: 25%; height: 25%; margin-top: 20px"></td>
								<td>${tempHoaDonDetail.sanPham.tenSP}</td>
								<td>${tempHoaDonDetail.sanPham.kichCo}</td>
								<td>${tempHoaDonDetail.soLuongSanPham}</td>
								<td>${tempHoaDonDetail.sanPham.giaBan}</td>
							</tr>
						</c:forEach>

					</tbody>
				</c:forEach>

			</table>


		</div>

	</div>
</body>
</html>