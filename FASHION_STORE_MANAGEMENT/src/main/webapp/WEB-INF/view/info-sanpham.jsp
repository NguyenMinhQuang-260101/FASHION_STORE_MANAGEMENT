<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save sản phẩm</title>
</head>

<body>
	<div id="wrapper">
		<div id="header"></div>
	</div>
	<div id="container">
		<h3>Save Customer</h3>
				<!-- ***** CHƯA THÊM modelAttribute *****-->
		<form:form action="addSanPhamToCart" modelAttribute="sanPham" method="POST">
			<form:hidden path="maSP" />
			<table>
				<tbody>
					<tr>
						<td><label>Tên sản phẩm:</label></td>
						<td><form:input path="tenSP"></form:input></td>
					</tr>
					<tr>
						<td><label>Kích cỡ</label></td>
						<td><form:input path="kichCo"></form:input></td>
					</tr>
					<tr>
						<td><label>Số lượng:</label></td>
						<td><form:input path="soLuong"></form:input></td>
					</tr>
					<tr>
						<td><label>Giá nhập:</label></td>
						<td><form:input path="giaNhap"></form:input></td>
					</tr>
					<tr>
						<td><label>Giá bán:</label></td>
						<td><form:input path="giaBan"></form:input></td>
					</tr>
					<tr>
						<td><label>Ảnh sản phẩm</label></td>
						<td><form:input path="anhSP"></form:input></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>


	</div>

</body>
</html>