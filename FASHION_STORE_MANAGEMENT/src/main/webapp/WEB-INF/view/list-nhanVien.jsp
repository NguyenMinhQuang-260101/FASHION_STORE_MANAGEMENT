<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List nhân viên</title>
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
.list-nhanvien-table{
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
			<h1>QUẢN LÝ NHÂN VIÊN</h1>
		</div>
	
	<div id="container" class="list-nhanvien-table">
	<div id="content" align="right" style="margin: 5px 50px 5px 5px">
			<input type="button" value="Thêm nhân viên"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button">
		</div>
			<table style="height:auto;width: 95%">
				<tr style="color: white; background-color: #566573" >
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
			
	</div>
	
	</div>
</body>
</html>