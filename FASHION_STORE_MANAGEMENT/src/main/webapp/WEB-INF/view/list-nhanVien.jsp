<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List nhân viên</title>
<style>
table, th, td {
	border: 1px solid black;
}
.test{
	margin-left: 200px;
}

</style>
</head>
<body>
<div>
<%@include file="main-menu.jsp" %>
</div>
	<div class="test">
	<div id="container">
			<table style="width: 100%">
				<tr>
					<th>Họ tên nhân viên</th>
					<th>Giới tính</th>
					<th>Địa chỉ</th>
					<th>Số điện thoại</th>
					<th>Ngày vào làm</th>
					<th colspan="2">Action</th>
				</tr>
				<c:forEach var="tempNhanVien" items="${nhanViens}">
					<c:url var="updateLink" value="/nhanVien/showFormForUpdate">
						<c:param name="maNV" value="${tempNhanVien.maNV}"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/nhanVien/delete">
						<c:param name="maNV" value="${tempNhanVien.maNV}"></c:param>
					</c:url>
					<tr>
						<td>${tempNhanVien.hoTenNV}</td>
						<td>${tempNhanVien.gioiTinh}</td>
						<td>${tempNhanVien.diaChiNV}</td>
						<td>${tempNhanVien.sdtNV}</td>
						<td>${tempNhanVien.ngayLV}</td>
						
						

						<td>
							<div align="center">
								<a href="${updateLink}">Update</a>&emsp; <a href="${deleteLink}"
									onclick="if(!(confirm('Are you sure to delete this nhan vien?'))) return false">Delete</a>
							</div>

						</td>
					</tr>
				</c:forEach>
			</table>
			<div id="content" align="center" style="margin-top: 20px">
			<input type="button" value="Thêm nhân viên"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button">
		</div>
	</div>
	</div>
</body>
</html>