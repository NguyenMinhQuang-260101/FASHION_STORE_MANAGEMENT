<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif';
	}
	body{
		position: relative;
		width: 100%;
		min-height: 150vh%;
	}
	nav{
		position: fixed;
		width: 200px;
		height: 100%;
		background: #f1f1f1;
		display: flex;
		justify-content: center;
		align-items: center;
		border-right: 1px solid black;
		z-index: 1000;
		
	}
	nav ul{
		width: 100%;
		list-style: none;	
		overflow: hidden;
	}
	nav ul li a{
		width: 100%;
		color: blue;
		font-size: 1.2em;
		text-decoration: none;
		display: inline-flex;
		align-items: center;
		padding: 15px;
		transition: linear 0.5s;
		
	}
	nav ul li a ion-icon{
		margin: 0 20px;
		color: blue;
		font-size: 1.2em ; 
		transition: linear 0.2s;
	}
	nav ul li a:hover{
		background: blue;
		color:white;
	}
	nav ul li a:hover ion-icon{
		color:white;
	}
	.content{
		position: absolute;
		top:0;
		left:250px;
		width: calc(100% - 250px);
		min-height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		padding:20px;
		transition: ease in out 0.5s;
	}
	content h2{
		font-size: 4.5em;
		color: blue;
		text-transform: uppercase;
	}
</style>
</head>
<body>
<nav>
	<ul>
		<li><a href="/Fashion_Store_Management/">
		<ion-icon name="home-outline"></ion-icon>
		Trang chủ</a></li>
		<li><a href="/Fashion_Store_Management/sanPham/list">
		<ion-icon name="storefront-outline"></ion-icon>
		Sản phẩm</a></li>
		<li><a href="/Fashion_Store_Management/nhanVien/list">
		<ion-icon name="person-outline"></ion-icon>
		Nhân viên</a></li>
		<li><a href="/Fashion_Store_Management/khachHang/list">
		<ion-icon name="person-outline"></ion-icon>
		Khách hàng</a>
		</li>
		<li><a href="#home">
		<ion-icon name="receipt-outline"></ion-icon>
		Hoá đơn</a>
		<li><a href="#home">
		<ion-icon name="log-out-outline"></ion-icon>
		Đăng xuất</a>
		</li>
		
	</ul>
</nav>

<footer>

</footer>
</body>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</html>