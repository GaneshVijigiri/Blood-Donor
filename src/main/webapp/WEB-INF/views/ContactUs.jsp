<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>contact us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .body, table, input, select, button{
            border-radius: 10px;
        }
        input{
            margin: 8px;
            padding: 5px;
        }
        .body{
            margin-top: 100px;
            border: solid 2px black;
            width: 500px;
            height: 500px;
            z-index: 2;
        }
        a{
            color: blue;
        }
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
.logo, .home, .register, .search, .contact, .about{
    width: 180px;
    height: 70px;
    cursor: pointer;
}
.maindiv .home :hover,.maindiv .register :hover,.maindiv .search :hover,.maindiv .contact :hover, ,.maindiv .about :hover{
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
#account{
    color: black;
    font-size: 16px;
}
    </style>
</head>
<body>
    <div class="maindiv">
        <div class="logo">
            <a href="http://localhost:8081/BloodDonarProject/main"><p id="blood">Blood <img src="blood.png" alt=""><br><span>Donar</span></p></a>
        </div>
        <div class="home">
            <a href="http://localhost:8081/BloodDonarProject/main"><p>Home <i class="fa-solid fa-house"></i></p></a>
        </div>
        <div class="search">
            <a href="http://localhost:8081/BloodDonarProject/search"><p>Search <i class="fa-solid fa-magnifying-glass"></i></p></a>
        </div>
        <div class="contact">
            <a href="#"> <p>Contact Us <i class="fa-solid fa-mobile"></i></p></a>
        </div>
        <div class="about">
			<a href="profile"><p>Profile <i class="fa-solid fa-user"></i></p></a>
		</div>
    </div>
    <center>
        <div class="body">
            <form action="donarContactUs">
                <table>
                    <h1 style="color: red; text-decoration: underline;">Contact Us</h1>
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td><input type="text" placeholder="Name" required="required"></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td>:</td>
                        <td><input type="text" placeholder="Mobile Number" required="required"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>:</td>
                        <td><input type="text" placeholder="Email" required></td>
                    </tr>
                    <tr>
                        <td>Message</td>
                        <td>:</td>
                        <td><textarea name="" id="" cols="30" rows="10" placeholder="Message.."></textarea></td>
                    </tr>
                </table>
                <button type="submit" style="background-color: red;padding: 5px;">contact</button>
            </form>
            <h5>${request }</h5>
        </div>
    </center>
</body>
</html>