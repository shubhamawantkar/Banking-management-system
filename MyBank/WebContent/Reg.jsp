<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("Reg_db.jpg");

  height: 120%;
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.center {
  margin: auto;
  width: 100%;
  border: 3px solid green;
  padding: 10px;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 33%;
  margin: 20px;
  max-width: 400px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>

<body>
<div class="bg-img">
<br><br><br>
  <form action="Reg" method="post" class="container" class="center">
  
    <h1>Register</h1>

    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
	
	<label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter password" name="psw" required>
    
    <label for="psw"><b>Confirm</b></label>
    <input type="password" placeholder="Confirm password" name="psw_repeat" required>
    
    <button type="submit" class="btn">Sign up</button>
    <br><br>
    <p>already registered <a href="login.jsp">login here</a>
  </form>
</div>
</body>
</html>