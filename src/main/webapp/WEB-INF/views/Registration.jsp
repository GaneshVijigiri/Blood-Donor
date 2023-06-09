<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.body, table, input, select, button {
	border-radius: 10px;
}

input {
	margin: 8px;
	padding: 5px;
}

.body {
	margin-top: 100px;
	border: solid 2px black;
	width: 800px;
	height: 620px;
	z-index: 2;
}

a {
	color: blue;
}

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

.logo, .home, .search, .contact {
	width: 180px;
	height: 70px;
	cursor: pointer;
}

.maindiv .home :hover, .maindiv .search :hover,
	.maindiv .contact :hover {
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

#account {
	color: black;
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="maindiv">
		<div class="logo">
			<a href="http://localhost:8081/BloodDonarProject/main"><p id="blood">
					Blood <img src="blood.png" alt=""><br>
					<span>Donar</span>
				</p></a>
		</div>
		<div class="home">
			<a href="http://localhost:8081/BloodDonarProject/main"><p>
					Home <i class="fa-solid fa-house"></i>
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
	</div>
	<center>
		<div class="body">
			<form action="registerDonar">
				<table>
					<h1 style="color: red; text-decoration: underline;">Registration
						form</h1>
					<tr>
						<td>First Name* :</td>
						<td><input type="text" placeholder="First Name" required
							name="firstName"></td>
						<td>Last Name :</td>
						<td><input type="text" placeholder="Last Name"
							name="lastName"></td>
					</tr>
					<tr>
						<td>Gender* :</td>
						<td><select name="gender" required>
								<option>--Gender--</option>
								<option>Male</option>
								<option>Female</option>
						</select></td>
						<td>DOB* :</td>
						<td><input type="date" placeholder="dd-mm-yyyy" required name="dob"></td>
					</tr>
					<tr>
						<td>Mobile Number* :</td>
						<td><input type="text" placeholder="Mobile Number" required
							name="mobileNumber"></td>
						<td>Aadhar Number* :</td>
						<td><input type="text" placeholder="Aadhar Number" required
							name="aadharNumber"></td>
					</tr>
					<tr>
						<td>Blood Group* :</td>
						<td><select id="" required name="bloodGroup">
								<option>--select--</option>
								<option>O+</option>
								<option>O-</option>
								<option>A+</option>
								<option>A-</option>
								<option>B+</option>
								<option>B+</option>
								<option>B-</option>
								<option>AB+</option>
								<option>AB-</option>
						</select></td>
						<td>State* :</td>
						<td><input type="text" placeholder="State" required
							name="state">
					</tr>
					<tr>
						<td>City* :</td>
						<td><input type="text" placeholder="City" required
							name="city"></td>
						<td>Pincode :</td>
						<td><input type="text" placeholder="Pincode" name="pincode"></td>
					</tr>
					<tr>
						<td>Email* :</td>
						<td><input type="text" placeholder="Email" required
							name="mail"></td>
					</tr>
					<tr>
						<td>Password* :</td>
						<td><input type="password" placeholder="Password" required
							name="password"></td>
						<td>Confirm Password :</td>
						<td><input type="password" placeholder="Confirm Password"
							name="confirmPassword"></td>
					</tr>
				</table>
				<input type="checkbox" required style="cursor: pointer;">I agree to all the Terms and
				Conditions <br>
				<br> <input type="submit" value="Register"
					style="background-color: red; padding: 5px; cursor: pointer;"></input>
			</form>
			<p id="account">Already have an account</p>
			<b><a href="bloodDonar">login</a></b>
		</div>
		<p>${message }</p>
	</center>
</body>
</html>