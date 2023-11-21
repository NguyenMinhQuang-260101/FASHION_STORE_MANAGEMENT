<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
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
img{
	width: 200px;
  	height: 300px;
  	object-fit: cover;
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
			<h1>QUẢN LÝ SẢN PHẨM</h1>
		</div>
	
	<div id="container" class="list-sanpham-table">
	<div id="content" align="right" style="margin: 5px 50px 5px 5px">
			<input type="button" value="Add Sản phẩm"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button">
		</div>	
			<table style="height:auto;width: 95%">
				<tr style="color: white; background-color: #566573" >
					<th>Tên sản phẩm</th>
					<th>Kích cỡ</th>
					<th>Số lượng</th>
					<th>Giá nhập</th>
					<th>Giá bán</th>
					<th>Ảnh sản phẩm</th>
					<th colspan="2">Action</th>
				</tr>
				<c:forEach var="tempSanPham" items="${sanPhams}">
					<c:url var="addLink" value="/sanPham/showFormForView">
						<c:param name="maSP" value="${tempSanPham.maSP}"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/sanPham/delete">
						<c:param name="maSP" value="${tempSanPham.maSP}"></c:param>
					</c:url>
					<tr style="align-items: center;justify-content: center;text-align: center;font-size: 20px">
						<td>${tempSanPham.tenSP}</td>
						<td>${tempSanPham.kichCo}</td>
						<td>${tempSanPham.soLuong}</td>
						<td>${tempSanPham.giaNhap}</td>
						<td>${tempSanPham.giaBan}</td>
						<td> <img src=" ${tempSanPham.anhSP}" alt="#anhSP"></td>
						
						

						<td>
							<div align="center">
								<a href="${updateLink}">Update</a>&emsp;
								 <a href="${deleteLink}"
									onclick="if(!(confirm('Are you sure to delete this san pham?'))) return false">Delete</a>
							</div>

						</td>
					</tr>
				</c:forEach>
			</table>
			
	</div>
</div>
</body>
</html>