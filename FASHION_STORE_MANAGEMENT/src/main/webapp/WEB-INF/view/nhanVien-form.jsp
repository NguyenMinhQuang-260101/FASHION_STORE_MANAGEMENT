<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save nhân viên</title>
<style type="text/css">
	body {
  background: #e35869;
	
}
.form-them{
	float: left;
	background-color: white;
	width: 750px;
	margin-left: 600px;
	margin-top:300px;
	padding: 10px;
	height: 300px;
	padding: 30px;
}
label{
	font-size: 20px;
}
.form-them h2{
	text-align: center;
}
input{
	width: 300px;
}
.save{
	width: 80px;
	height: 100%;
	background-color:  #e35869;
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
table,tbody,tr{
	margin-top: 20px;
	padding: 20px;
}

</style>
</head>

<body>
	<div>
<%@include file="main-menu.jsp" %>
</div>
	<div id="container" class="form-them">
		<h2>Thêm nhân viên</h2>
		<form:form action="saveNhanVien" modelAttribute="nhanVien" method="POST">
			<form:hidden path="maNV" />
			<table>
				<tbody>
					<tr>
						<td><label>Họ tên nhân viên:</label></td>
						<td><form:input path="hoTenNV"></form:input></td>
					</tr>
					<tr>
						<td><label>Giới tính:</label></td>
						<td><form:input path="gioiTinh"></form:input></td>
					</tr>
					<tr>
						<td><label>Địa chỉ:</label></td>
						<td><form:input path="diaChiNV"></form:input></td>
					</tr>
					<tr>
						<td><label>Số điện thoại:</label></td>
						<td><form:input path="sdtNV"></form:input></td>
					</tr>
					<tr>
						<td><label>Ngày vào làm:</label></td>
						<td><form:input path="ngayLV"></form:input></td>
					</tr>
					
					
				</tbody>
			</table>
			<input type="submit" value="Thêm" class="save" />
		</form:form>


	</div>

</body>
</html>