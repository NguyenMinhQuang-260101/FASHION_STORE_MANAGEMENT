<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List khách hàng</title>
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
.list-khachhang-table{
	border: 1px solid black;
	background-color:  white;
	margin-top: 10px;
	border-radius: 5px;
}
.text h1{
	padding: 5px;
}

</style>
</head>
<body>
	<div>
		<%@include file="main-menu.jsp" %>
	</div>
	<div class="noidung">
	
		<div class="text">
			<h1>QUẢN LÝ KHÁCH HÀNG</h1>
		</div>
	
	<div id="container" class="list-khachhang-table">
			<div id="content" align="center" style="float:right;display:flex;margin: 5px 50px 5px 5px">
				<input style="margin-right: 20px" type="button" value="Thêm khách hàng"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"> <br> <br>
					
				<input type="button" value="GIỎ HÀNG"
					onclick="window.location.href='cart'; return false;"
					class="cart-button"><br> <br>
					</div>
					
			<table style="height:auto;width: 95%">
				<tr style="color: white; background-color: #566573" >
						<th>Họ tên khách hàng</th>
						<th>Số điện thoại</th>
						<th>Địa chỉ</th>
						<th colspan="2">Action</th>
					</tr>

					<c:forEach var="tempKhachHang" items="${khachHangs}">

						<c:url var="updateLink" value="/khachHang/showFormForUpdate">
							<c:param name="maKH" value="${tempKhachHang.maKH}"></c:param>
						</c:url>

						<c:url var="deleteLink" value="/khachHang/delete">
							<c:param name="maKH" value="${tempKhachHang.maKH}"></c:param>
						</c:url>

						<tr>
							<td>${tempKhachHang.hoTenKH}</td>
							<td>${tempKhachHang.sdtKH}</td>
							<td>${tempKhachHang.diaChiKH}</td>

							<td>
								<div align="center">
									<a href="${updateLink}">Update</a>&emsp; <a
										href="${deleteLink}"
										onclick="if(!(confirm('Are you sure to delete this khách hàng?'))) return false">Delete</a>
								</div>

							</td>
						</tr>
					</c:forEach>
				</table>
				
			</div>
		</div>
</body>
</html>