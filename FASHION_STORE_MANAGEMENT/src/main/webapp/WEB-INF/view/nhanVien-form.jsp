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
	margin-left: 500px;
	margin-top:200px;
	padding: 10px;
	height: 350px;
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
						<td><form:input path="hoTenNV" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/"
								title="Chỉ nhập chữ"></form:input></td>
					</tr>
					<tr>
						<td><label>Giới tính:</label></td>
						<td><form:input path="gioiTinh" for="gioiTinh" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/"
								title="Chỉ nhập chữ"></form:input></td>
					</tr>
					<tr>
						<td><label>Địa chỉ:</label></td>
						<td><form:input path="diaChiNV" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/"></form:input></td>
					</tr>
					<tr>
						<td><label>Số điện thoại:</label></td>
						<td><form:input path="sdtNV" pattern="[0-9]{10}"
								title="Số điện thoại 10 số"></form:input></td>
					</tr>
					<tr>
						<td><label>Ngày vào làm:</label></td>
						<td><form:input path="ngayLV" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/"></form:input></td>
					</tr>


				</tbody>
			</table>
			<input type="submit" value="Thêm" class="save" />
		</form:form>


	</div>

</body>
</html>