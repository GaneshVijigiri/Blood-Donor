<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>request</title>
<style>
    *{
        border-radius: 10px;
    }
.request{
    width: 500px;
    height: 550px;
    border: solid 2px black;
    position: relative;
    top: 100px;
}
input{
    padding: 8px;
    margin: 5px;
}
</style>
</head>
<body>
	<center>
		<div class="request">
			<form action="requestDonar">
				<table>
                    <h1 style="color: red;">Request form</h1>
					<tr>
						<td>Name*</td>
						<td>:</td>
						<td><input type="text" placeholder="name" required="required"></td>
					</tr>
					<tr>
						<td>Mobile Number*</td>
						<td>:</td>
						<td><input type="text" placeholder="Mobile Number" required="required"></td>
					</tr>
					<tr>
						<td>Blood Group*</td>
						<td>:</td>
						<td><select name="bloodGroup" required>
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
						<td>Prescription*</td>
						<td>:</td>
						<td><input type="file" placeholder="prescription" required="required"></td>
					</tr>
					<tr>
						<td>Address*</td>
						<td>:</td>
						<td><textarea name="" id="" cols="30" rows="5"
								placeholder="Address"></textarea required></td>
					</tr>
					<tr>
						<td>Message</td>
						<td>:</td>
						<td><textarea name="" id="" cols="30" rows="5"
								placeholder="Message.."></textarea></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td><input type="submit" value="request" style="background-color: red; cursor: pointer;"></td>
					</tr>
				</table>
				<h4s><p>${request }</p></h4>
			</form>
			<a href="http://localhost:8081/BloodDonarProject/main"><input type="button" value="cancel" style="background-color: red; cursor: pointer;"></a>
		</div>
	</center>
</body>
</html>