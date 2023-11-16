<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save nhân viên</title>
</head>

<body>
	<div id="wrapper">
		<div id="header"></div>
	</div>
	<div id="container">
		<h3>Update nhân viên</h3>
		<form:form action="updateNhanVien" modelAttribute="nhanVien" method="POST">
			<form:hidden path="maNV" />
			<table>
				<tbody>
					<tr>
						<td><label>Họ tên nhân viên:</label></td>
						<td><form:input path="hoTenNV"></form:input></td>
					</tr>
					<tr>
						<td><label>Giới tính</label></td>
						<td><form:input path="gioiTinh"></form:input></td>
					</tr>
					<tr>
						<td><label>Địa chỉ</label></td>
						<td><form:input path="diaChiNV"></form:input></td>
					</tr>
					<tr>
						<td><label>Số điện thoại</label></td>
						<td><form:input path="sdtNV"></form:input></td>
					</tr>
					<tr>
						<td><label>Ngày vào làm:</label></td>
						<td><form:input path="ngayLV"></form:input></td>
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