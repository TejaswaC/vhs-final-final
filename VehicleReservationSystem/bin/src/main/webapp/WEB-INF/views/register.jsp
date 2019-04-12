<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Registration Page</title>
<style>
* {
  font-family: 'Maven Pro', sans-serif;
  box-sizing: border-box;
}
body,html {
  height: 100%;
  width: 100%;
  margin: 0;
  padding: 0;
  background-image: linear-gradient(270deg, #ffffff 50%, #e3e7e8);
  text-align: center;
  font-family: 'Segoe UI';
}
form {
  width: 40%;
  margin-left: 30%;
  padding-top: 10%;
}
input {
  width: 100%;
  background: transparent;
  border-bottom: solid 1px #2ecc71;
  border-top: none;
  border-left: none;
  border-right: none;
  font-size: 1rem;
  padding: 0.5em 0.4em;
  transition: all 0.4s;
  color: #0097e6;
  margin: 0.7rem 0;
}
radio{
  font-size: 1rem;
  
}

table
{
  color: #bdc3c7;
  
}
button {
  background: transparent;
  width: 50%;
  margin-top: 2.5rem;
  font-size: 1rem;
  border: solid 1px #0097e6;
  padding: 1em 0;
  color: #333333;
  transition: all 0.6s;
}
button:hover {
  cursor:pointer;
  background:#333333;
}
h1 {
  color: #333333;
  border-bottom: solid 1px #0097e6;
  padding: 0 0 0.8em 0;
  width: 50%;
  margin-left: 25%;
  margin-bottom: 1em;
}
@media (max-width: 550px) {
  form {
  width: 90%;
  margin-left: 3%;
  padding-top: 5%;
}
  input {
    font-size: 1em;
  }
}
</style>
</head>
<body>
<form action="insert.html" method="post">
    <div class="container">
      <h1>Register</h1>
      <hr>
      <label for="empId"><b></b></label>
      <input type="text" placeholder="Enter Employee ID" name="empId" required>
      <label for="firstName"><b></b></label>
      <input type="text" placeholder="Enter First Name" name="firstName" required>
      <label for="lastName"><b></b></label>
      <input type="text" placeholder="Enter Last Name" name="lastName" required>
      <br>
      <label for="gender"></label>
      <select name="gender" style="width: 550px; margin-top: 5%; font-size: 1rem; color: #333333; border:1px solid #2ecc71; height: 30px ;background: transparent;" >
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="Other">Other</option>
        <option value="Not Defined">Prefer Not to Say</option>
      </select>
      
      <br><br>
      <label for="contactNumber"><b></b></label>
      <input type="number" placeholder="Enter Conatct Number" name="contactNumber" required>
      <label for="email"><b></b></label>
      <input type="email" placeholder="Enter Email" name="email" required>
  
      <label for="password"><b></b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
  
      <label for="branch"><b></b></label>
      <input type="text" placeholder="Enter Branch" name="branch" required>
      <hr>
  
      
      <button type="submit" class="registerbtn">Register</button>
    </div>
  
   
  </form>
</body>
</html>