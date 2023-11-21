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
	margin-top: 200px;
	padding: 10px;
	height: 500px;
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
	margin-left: 50px;
}

.test img {
	width: 150px;
	height: 150px;
	margin-left: 250px;
}
</style>
</head>

<body>
	<div>
		<%@include file="main-menu.jsp"%>
	</div>

	<div id="container" class="form-them">
		<h3 style="margin-left: 250px">View Sản Phẩm</h3>
		<!-- ***** CHƯA THÊM modelAttribute *****-->
		<form:form action="addSanPhamToCart" modelAttribute="cart"
			method="POST">
			<form:hidden path="sanPham.maSP" />
			<div class="test">
				<img src="${cart.sanPham.anhSP}" alt="anhSP" />
			</div>
			<table>
				<tbody>

					<tr>
						<td><label>Tên sản phẩm:</label></td>
						<td><input disabled value="${cart.sanPham.tenSP}" /></td>
					</tr>
					<tr>
						<td><label>Kích cỡ</label></td>
						<td><input disabled value="${cart.sanPham.kichCo}" /></td>
					</tr>
					<tr>
						<td><label>Số lượng:</label></td>
						<td><input disabled value="${cart.sanPham.soLuong}" /></td>
					</tr>
					<tr>
						<td><label>Giá bán:</label></td>
						<td><input disabled value="${cart.sanPham.giaBan}" /></td>
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
						<td><input type="submit" value="Thêm" class="save" /></td>
					</tr>
				</tbody>
			</table>

			<table hidden="">
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
						<td><label>Số lượng:</label></td>
						<td><form:input path="sanPham.soLuong"></form:input></td>
					</tr>
					<tr>
						<td><label>Giá nhập:</label></td>
						<td><form:input path="sanPham.giaNhap"></form:input></td>
					</tr>
					<tr>
						<td><label>Giá bán:</label></td>
						<td><form:input path="sanPham.giaBan"></form:input></td>
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
						<td><input type="submit" value="Thêm" class="save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>


	</div>

</body>
</html>