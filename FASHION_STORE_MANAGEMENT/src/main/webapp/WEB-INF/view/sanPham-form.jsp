<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save sản phẩm</title>
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
		<h2>Thêm sản phẩm</h2>
		<form:form action="saveSanPham" modelAttribute="sanPham" method="POST">
			<form:hidden path="maSP" />
			<table>
				<tbody>
					<tr>
						<td><label>Tên sản phẩm:</label></td>
						<td><form:input  path="tenSP" pattern="/^[a-zA-Z!@#\$%\^\&*\)\(+=._-]{2,}$/" ></form:input></td>
					</tr>
					<tr>
						<td><label>Kích cỡ:</label></td>
						<td><form:input path="kichCo"></form:input></td>
					</tr>
					<tr>
						<td><label>Số lượng:</label></td>
						<td><form:input  title="Chỉ nhập số" path="soLuong"></form:input></td>
					</tr>
					<tr>
						<td><label>Giá nhập:</label></td>
						<td><form:input  title="Chỉ nhập số" path="giaNhap"></form:input></td>
					</tr>
					<tr>
						<td><label>Giá bán:</label></td>
						<td><form:input  title="Chỉ nhập số" path="giaBan"></form:input></td>
					</tr>
					<tr>
						<td><label>Ảnh sản phẩm:</label></td>
						<td><form:input path="anhSP"></form:input></td>
					</tr>
					
				</tbody>
			</table>
				<input type="submit" value="Thêm" class="save" />
		</form:form>


	</div>

</body>
</html>