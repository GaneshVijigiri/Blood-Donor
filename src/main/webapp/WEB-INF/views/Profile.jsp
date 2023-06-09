<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>profile</title>
    <style>
        body{
    margin: 0px;
    padding: 0px;
    }
    .maindiv{
        width: 100%;
        height: 80px;
        background-color: rgb(173, 0, 0);
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
    }
    .logo, .home, .search, .contact{
        width: 180px;
        height: 70px;
        cursor: pointer;
    }
    .maindiv .home :hover,.maindiv .search :hover,.maindiv .contact :hover{
        color: yellow;
    }
    a{
        text-decoration: none;
        color: blue;
    }
    .logo{
        width: 150px;
        height: 60px;
        background-color: white;
        border-radius: 10px;
    }
    .logo img{
        width: 12px;
        height: 14px;
    }
    #blood{
        color: red;
        font-weight: bold;
        font-size: 16px;
        text-align: center;
    }
    #blood span{
        font-size: 25px;
    }
    p{
        text-align: center;
        color: white;
        font-size: 20px;
    }
    .about{
        border: solid 2px black;
	width: 320px;
	height: auto;
	position: relative;
    top: 50px;
    left: 40%;
    }
    ul{
    list-style: none;
    }
    ul li{
        padding: 10px;
    }
    * {
	border-radius: 10px
    }
    </style>
</head>
<body>
    <div class="maindiv">
        <div class="logo">
            <a href="main"><p id="blood">Blood <img src="blood.png" alt=""><br><span>Donar</span></p></a>
        </div>
        <div class="home">
            <a href="main"><p>Home <i class="fa-solid fa-house"></i></p></a>
        </div>
        <div class="search">
            <a href="search"><p>Search <i class="fa-solid fa-magnifying-glass"></i></p></a>
        </div>
        <div class="contact">
            <a href="contactUs"> <p>Contact Us <i class="fa-solid fa-mobile"></i></p></a>
        </div>
    </div>
    <div class="about">
        <center><h1 style="color: red;">Hello ${bloodDonar.getFirstName() } <br>Your Details</h1></center>
        <ul>
            <li><b>First Name :</b> ${bloodDonar.getFirstName() }</li>
            <li><b>Last Name :</b> ${bloodDonar.getLastName() }</li>
            <li><b>Dob :</b> ${bloodDonar.getDob() }</li>
            <li><b>Age :</b> ${age }</li>
            <li><b>Gender :</b> ${bloodDonar.getGender() }</li>
            <li><b>Mobile Number :</b> ${bloodDonar.getMobileNumber() }</li>
            <li><b>Aadhar Number :</b> ${bloodDonar.getAadharNumber() }</li>
            <li><b>Blood Group :</b> ${bloodDonar.getBloodGroup() }</li>
            <li><b>State :</b> ${bloodDonar.getState() }</li>
            <li><b>City :</b> ${bloodDonar.getCity() }</li>
            <li><b>Pincode :</b> ${bloodDonar.getPincode() }</li>
            <li><b>Email :</b> ${bloodDonar.getMail() }</li>
        </ul>
        <hr>
			<center>
				<a href="bloodDonar"><input type="submit" value="logout"
					style="background-color: red; padding: 4px; cursor: pointer;"></a>
                    <a href="edit"><input type="submit" value="edit"
                        style="background-color: red; padding: 4px; cursor: pointer;"></a>
			</center>
			<br>
    </div>
</body>
</html>