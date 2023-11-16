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
		<h3>View Sản Phẩm</h3>
		<!-- ***** CHƯA THÊM modelAttribute *****-->
		<form:form action="addSanPhamToCart" modelAttribute="cart"
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
						<td><form:hidden path="tongGiaSP"/></td>
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