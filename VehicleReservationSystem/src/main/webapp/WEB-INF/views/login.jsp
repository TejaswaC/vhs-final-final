<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>

<style>
   /************** 
    Body css
 ***************/
 body{
 border: 2px solid black;
  padding: 25px;
  background: url(http://wallpaperget.com/images/ultra-hd-wallpapers-37.jpg);
  background-repeat: no-repeat;
  background-size: 100%;
 }
 img{
 object-fit: cover;
 }
body {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  


}
.box {
  width: 350px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #191919;
  border: none;
  border-radius: 25px;
  text-align: center;
}
h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
  letter-spacing: 5px;
}
/************** 
 Input Fields
***************/
#username, #pass{
  border: 2px solid #0097e6;
  background: none;
  display: block;
  margin: 20px auto;
  padding: 15px 45px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 25px;
  text-align: center;
  transition: 250ms width ease, 250ms border-color ease;
}
/************** 
   On Hover
***************/
#username:hover, #pass:hover{
  width: 220px;
}
/************** 
   On Focus
***************/
#username:focus, #pass:focus{
  width: 250px;
  border-color: #6fb98f;
}
/************** 
 Submit Button
***************/
#submit{
  border: 2px solid #2ecc71;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  padding: 15px 40px;
  outline: none;
  color: white;
  border-radius: 25px;
  cursor: pointer;
  text-transform: uppercase;
  font-weight: 200;
  transition: 250ms background ease;
  -webkit-transition: 250ms background ease;
  -moz-transition: 250ms background ease;
  -o-transition: 250ms background ease;
}
#s8{
  border: 2px solid #2ecc71;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  padding: 15px 40px;
  outline: none;
  text-decoration:none;
  color: white;
  border-radius: 25px;
  cursor: pointer;
  text-transform: uppercase;
  font-weight: 200;
  transition: 250ms background ease;
  -webkit-transition: 250ms background ease;
  -moz-transition: 250ms background ease;
  -o-transition: 250ms background ease;
}
/************** 
   On Hover
***************/
#submit:hover{
  background: #2ecc71;
}
</style> 

<!-- <div id="particles-js"></div> -->
<div class="wrapper">
<body>
    

<form class="box" action="login.html" method="POST" target="_self">
        <h1>Login</h1>
        <input type="text" name="empId" id="username" placeholder="Employee ID" autocomplete="off" required>
        <input type="password" name="password" id="pass" placeholder="Password" autocomplete="off" required>
        <input type="submit" id="submit" value="login">
        <a href = "register.html"><input type = "button" value="New User"  id="s8"></a>
      </form>
      
    <a href="sendMails.html"><button>SendMails</button></a>
  

</body>
</div>
</html>