<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save khách hàng</title>
</head>

<body>
	<div id="wrapper">
		<div id="header"></div>
	</div>
	<div id="container">
	
		<h3>Save Customer</h3>
		<form:form action="saveKhachHang" modelAttribute="khachHang" method="POST">
			<form:hidden path="maKH" />
			<table>
				<tbody>

					<tr>
						<td><label>Họ tên khách hàng:</label></td>
						<td><form:input path="hoTenKH"></form:input></td>
					</tr>

					<tr>
						<td><label>Số điện thoại:</label></td>
						<td><form:input path="sdtKH"></form:input></td>
					</tr>

					<tr>
						<td><label>Địa chỉ:</label></td>
						<td><form:input path="diaChiKH"></form:input></td>
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