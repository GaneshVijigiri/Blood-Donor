<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>login</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/webresources/css/Main.css" />
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

.maindiv {
	width: 100%;
	height: 80px;
	background-color: rgb(173, 0, 0);
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.logo, .home, .register, .search, .contact, .about {
	width: 180px;
	height: 70px;
	cursor: pointer;
}

.maindiv .home :hover, .maindiv .register :hover, .maindiv .search :hover,
	.maindiv .contact :hover, .maindiv .about :hover {
	color: yellow;
}

a {
	text-decoration: none;
	color: blue;
}

.logo {
	width: 150px;
	height: 60px;
	background-color: white;
	border-radius: 10px;
}

.logo img {
	width: 12px;
	height: 14px;
}

#blood {
	color: red;
	font-weight: bold;
	font-size: 16px;
	text-align: center;
}

#blood span {
	font-size: 25px;
}

p {
	text-align: center;
	color: white;
	font-size: 20px;
}

.body {
	margin-top: 20px;
	width: 99.9%;
	height: 680px;
	background-image: url('');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	filter: blur(4px);
	-webkit-filter: blur(4px);
	/* border: solid 1px black; */
	display: flex;
	flex-wrap: wrap;
}

.search {
	position: absolute;
	left: 40%;
	top: 250px;
	z-index: 2;
	width: auto;
	height: auto;
}

input {
	width: 220px;
	height: 30px;
	border-radius: 8px;
}

.table {
	width: 400px;
	height: 120px;
}

.table td {
	color: black;
}

select {
	border-radius: 10px;
	height: 25px;
}
</style>
<body>
	<div class="maindiv">
		<div class="logo">
			<a href="http://localhost:8081/BloodDonarProject/main"><p
					id="blood">
					Blood <img src="resources/images/blood.png" alt=""><br> <span>Donar</span>
				</p></a>
		</div>
		<div class="home">
			<a href="http://localhost:8081/BloodDonarProject/main"><p>
					Home <i class="fa-solid fa-house"></i>
				</p></a>
		</div>
		<div class="register">
			<a href="http://localhost:8081/BloodDonarProject/register"><p>
					Registration <i class="fa-solid fa-address-card"></i>
				</p></a>
		</div>
		<div class="search">
			<a href="http://localhost:8081/BloodDonarProject/search"><p>
					Search <i class="fa-solid fa-magnifying-glass"></i>
				</p></a>
		</div>
		<div class="contact">
			<a href="http://localhost:8081/BloodDonarProject/contactUs">
				<p>
					Contact Us <i class="fa-solid fa-mobile"></i>
				</p>
			</a>
		</div>
		<div class="about">
			<b><a href="http://localhost:8081/BloodDonarProject/profile"><p> Profile <i class="fa-solid fa-user"></i></p></a></b>
		</div>
	</div>
	<div class="body"></div>
	<div class="search">
		<center>
			<form action="mainDonar">
				<table class="table">
					<h1 style="color: red;">Search for Donar</h1>
					<tr>
						<td>Blood Group*</td>
						<td>:</td>
						<td><select name="bloodGroup" id="" required>
								<option>--select--</option>
								<option>O+</option>
								<option>O-</option>
								<option>A+</option>
								<option>A-</option>
								<option>B+</option>
								<option>B-</option>
								<option>AB+</option>
								<option>AB-</option>
						</select></td>
					</tr>
					<tr>
						<td>City*</td>
						<td>:</td>
						<td><input type="text" placeholder="City" name="city"
							required></td>
					</tr>
					<tr>
						<td>State*</td>
						<td>:</td>
						<td><input type="text" placeholder="State" name="state"
							required></td>
					</tr>
				</table>
				<br>
				<button type="submit" style="background-color: red; padding: 5px; cursor: pointer;">search</button>
			</form>
			<br>
	</div></center>
	<center>
		<table style="position: relative; top: -200px; border-collapse: collapse;" border="1">
			<tr>
				<th>Name</th>
				<th>Gender</th>
				<th>Dob</th>
				<th>Blood Group</th>
				<th>State</th>
				<th>City</th>
				<th>Email</th>
				<th>Request</th>
			</tr>
			<c:forEach var="donar" items="${list }">
				<tr>
					<td>${donar.firstName }</td>
					<td>${donar.gender }</td>
					<td>${donar.dob }</td>
					<td>${donar.bloodGroup }</td>
					<td>${donar.state }</td>
					<td>${donar.city }</td>
					<td>${donar.mail }</td>
					<td><a href="http://localhost:8081/BloodDonarProject/request">request</a></td>
				</tr>
				<p>${message }</p>
			</c:forEach>
		</table>
	</center>
</body>
</html>