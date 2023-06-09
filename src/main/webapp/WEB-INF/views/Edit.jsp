<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>edit</title>
    <style>
        .body, table, input, select, button{
            border-radius: 10px;
        }
        input{
            margin: 8px;
            padding: 5px;
        }
        .body{
            margin-top: 120px;
            border: solid 2px black;
            width: 800px;
            height: 500px;
            z-index: 2;
        }
        a{
            color: blue;
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
    <center>
        <div class="body">
            <form action="editProfile">
                <table>
                    <h1 style="color: red; text-decoration: underline;">Edit profile</h1>
                    <tr>
                        <td>First Name : </td>
                        <td><input type="text" placeholder="First Name" name="firstName"></td>
                        <td>Last Name : </td>
                        <td><input type="text" placeholder="Last Name" name="lastName"></td>
                    </tr>
                    <tr>
                        <td>Gender : </td>
                        <td><select name="gender" id="">
                            <option>--Gender--</option>
                            <option>Male</option>
                            <option>Female</option>
                        </select></td>
                        <td>Dob : </td>
                        <td><input type="date" placeholder="dd-mm-yyyy" name="dob"></td>
                    </tr>
                    <tr>
                        <td>Mobile Number : </td>
                        <td><input type="text" placeholder="Mobile Number" name="mobileNumber"></td>
                        <td>Aadhar Number : </td>
                        <td><input type="text" placeholder="Aadhar Number" name="aadharNumber"></td>
                    </tr>
                    <tr>
                        <td>Blood Group : </td>
                        <td><select name="bloodGroup" id="" >
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
                        <td>State : </td>
                        <td><input type="text" placeholder="State" name="state">
                    </tr>
                    <tr>
                        <td>City : </td>
                        <td><input type="text" placeholder="City" name="city"></td>
                        <td>Pincode : </td>
                        <td><input type="text" placeholder="Pincode" name="pincode"></td>
                    </tr>
                    <tr>
                        <td>Mail : </td>
                        <td><input type="text" placeholder="mail" name="mail"></td>
                    </tr>
                </table><br>
                <input type="checkbox" required style="cursor: pointer;">I agree to all the Terms and
				Conditions <br>
                <button type="submit" style="background-color: red;padding: 5px; cursor: pointer;">edit</button>
            </form>
            <a href="profile"><input type="submit" value="profile" style="background-color: red;padding: 5px; cursor: pointer;"></a>
            <h4>${message }</h4>
        </div>
    </center>
</body>
</html>