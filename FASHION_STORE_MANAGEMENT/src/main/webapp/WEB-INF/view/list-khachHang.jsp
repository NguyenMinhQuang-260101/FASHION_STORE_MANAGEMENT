<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List khách hàng</title>
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
				<input type="button" value="Thêm khách hàng"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"> <br> <br>
				<table style="width: 100%">
					<tr>
						<th>Họ tên khách hàng</th>
						<th>Số diện thoại</th>
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
	</div>
</body>
</html>