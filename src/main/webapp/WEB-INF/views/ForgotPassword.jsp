<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>forgot password</title>
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
	background-color: red;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	filter: blur(10px);
	-webkit-filter: blur(15px);
	/* border: solid 1px black; */
	display: flex;
	flex-wrap: wrap;
}

.forgot {
	position: absolute;
	left: 41%;
	top: 180px;
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
	border-collapse: collapse;
}
</style>
<body>
	<div class="maindiv">
	</div>
	<div class="body"></div>
	<div class="forgot">
		<center>
			<form action="forgotPasswordDonar">
				<table>
					<h1 style="color: black;">Reset Password</h1>
					<tr>
					<td>Mobile Number*</td>
					<td>:</td>
						<td><input type="text" placeholder="Mobile Number"
							name="mobileNumber" required></td>
					</tr>
					<tr>
					<td>Password*</td>
					<td>:</td>
						<td><input type="password" placeholder="Password"
							name="password" required="required"></td>
					</tr>
                    <tr>
                    <td>Confirm Password*</td>
					<td>:</td>
						<td><input type="password" placeholder="Confirm Password"
							name="confirmPassword" required="required"></td>
					</tr>
				</table><br>
				<input type="submit" value="reset" style="width: 60px; height: 24px; cursor: pointer;"></input>
			</form><br>
            <a href="http://localhost:8081/BloodDonarProject/bloodDonar"><input type="submit" value="cancel" style="width: 60px; height: 24px; cursor: pointer;"></input></a><br><br>
            <p>${message }</p>
		</center>
	</div>
</body>
</html>