<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save sản phẩm</title>
<style type="text/css">
body {
	background: #e35869;
}

.form-them {
float: left;
	background-color: white;
	width: 750px;
	margin-left: 500px;
	margin-top:200px;
	padding: 10px;
	height: 350px;
	padding: 30px;
}

label {
	font-size: 20px;
}

.form-them h2 {
	text-align: center;
}

input {
	width: 100%;
}

.save {
	width: 80px;
	height: 100%;
	background-color: #e35869;
	text-align: center;
	border-radius: 20px;
	margin-top: 20px;
	font-size: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-left: 280px;
	color: white;
}

table, tbody, tr {
	margin-top: 20px;
	padding: 20px;
}
</style>
</head>

<body>
	<div>
		<%@include file="main-menu.jsp"%>
	</div>

	<div id="container" class="form-them">
		<h3>Update Giỏ Hàng Sản Phẩm</h3>
		<!-- ***** CHƯA THÊM modelAttribute *****-->
		<form:form action="updateSanPhamToCart" modelAttribute="cart"
			method="POST">
			<form:hidden path="sanPham.maSP" />
			<table>
				<tbody>
					<tr>
						<td><label>Tên sản phẩm:</label></td>
						<td><form:input path="sanPham.tenSP"></form:input></td>
					</tr>
					<tr>
						<td><label>Kích cỡ</label></td>
						<td><form:input path="sanPham.kichCo"></form:input></td>
					</tr>
					<tr>
						<td><label>Ảnh sản phẩm</label></td>
						<td><form:input path="sanPham.anhSP"></form:input></td>
					</tr>
					<tr>
						<td><label>Số lượng mua:</label></td>
						<td><form:input path="soLuongMua"></form:input></td>
					</tr>

					<tr>
						<td><form:hidden path="tongGiaSP" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Cập nhật" class="save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>


	</div>

</body>
</html>