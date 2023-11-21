<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save khách hàng</title>
</head>
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
<body>
	<div>
<%@include file="main-menu.jsp" %>
</div>
	<div id="container" class="form-them">
		<h2>Update khách hàng</h2>
		<form:form action="updateKhachHang" modelAttribute="khachHang" method="POST">
			<form:hidden path="maKH" />
			<table>
				<tbody>

					<tr>
						<td><label>Họ tên khách hàng:</label></td>
						<td><form:input path="hoTenKH" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/"
								title="Chỉ nhập chữ"></form:input></td>
					</tr>

					<tr>
						<td><form:input path="sdtKH" pattern="[0-9]{10}"
								title="Số điện thoại 10 số"></form:input></td>
					</tr>

					<tr>
						<td><label>Địa chỉ:</label></td>
						<td><form:input path="diaChiKH" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/"></form:input></td>
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