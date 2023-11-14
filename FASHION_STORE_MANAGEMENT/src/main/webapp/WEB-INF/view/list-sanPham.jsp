<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Sản phẩm</title>
<style>
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div id="wrapper" align="center">
		<div id="header">
			<h2>CRM - Sản phẩm Relationship Manager</h2>
		</div>
	</div>
	<div id="container">
		<div id="content" align="center">
			<input type="button" value="Add Sản phẩm"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button"> <br>
			<br>
			<table style="width: 100%">
				<tr>
					<th>Tên sản phẩm</th>
					<th>Kích cỡ</th>
					<th>Số lượng</th>
					<th>Giá nhập</th>
					<th>Giá bán</th>
					<th>Ảnh sản phẩm</th>
					<th colspan="2">Action</th>
				</tr>
				<c:forEach var="tempSanPham" items="${sanPhams}">
					<c:url var="updateLink" value="/sanPham/showFormForUpdate">
						<c:param name="maSP" value="${tempSanPham.maSP}"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/sanPham/delete">
						<c:param name="maSP" value="${tempSanPham.maSP}"></c:param>
					</c:url>
					<tr>
						<td>${tempSanPham.tenSP}</td>
						<td>${tempSanPham.kichCo}</td>
						<td>${tempSanPham.soLuong}</td>
						<td>${tempSanPham.giaNhap}</td>
						<td>${tempSanPham.giaBan}</td>
						<td>${tempSanPham.anhSP}</td>
						
						

						<td>
							<div align="center">
								<a href="${updateLink}">Update</a>&emsp; <a href="${deleteLink}"
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