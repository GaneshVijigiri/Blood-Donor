<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>login</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/Main.css'/>" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
body {
	margin: 0px;
	padding: 0px;
}


.body {
	margin-top: 20px;
	width: 99.9%;
	height: 750px;
	background-image: url('resources/images/bg.jpg');
	background-repeat: no-repeat;
	background-color: red;
	background-size: cover;
	background-position: center;
	filter: blur(10px);
	-webkit-filter: blur(15px);
	/* border: solid 1px black; */
	display: flex;
	flex-wrap: wrap;
}

.login {
	position: absolute;
	left: 41%;
	top: 250px;
	z-index: 2;
    border: solid 2px black;
    padding: 30px;
    background-color: white;
    border-radius: 10px;
}

input {
	width: 220px;
	height: 30px;
	border-radius: 8px;
}

table {
	width: 200px;
	height: 120px;
}
</style>
<body>
	<div class="body"></div>
	<div class="login">
		<center>
			<form action="loginBloodDonar">
				<table>
					<h1 style="color: black;">LogIn</h1>
					<tr>
						<td><input type="text" placeholder="Mobile"
							name="mobileNumber"></td>
					</tr>
					<tr>
						<td><input type="password" placeholder="Password"
							name="password"></td>
					</tr>
				</table>
				<input type="submit" value="login" style="width: 60px; height: 24px; cursor: pointer;"></input>
			</form><br>
			<a href="http://localhost:8081/BloodDonarProject/main"><input type="submit" value="cancel" style="width: 60px; height: 24px; cursor: pointer;"></input></a>
			<br><br> <a href="http://localhost:8081/BloodDonarProject/forgotPassword" style="background-color: white;">forgot
				password?</a><br>
				<p>${message }</p>
		</center>
	</div>
</body>
</html>