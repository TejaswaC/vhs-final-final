<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Vehicle</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,100,700,500);
body {
  padding-top: 90px;
  background:#F7F7F7;
  color:#666666;
  font-family: 'Roboto', sans-serif;
  font-weight:100;
}
body{
  width: 100%;
  background: -webkit-linear-gradient(left, #42b3f4, #8cd0f7, #c1e8ff, #51beff);
  background: linear-gradient(to right, #42b3f4, #8cd0f7, #c1e8ff, #51beff);
  background-size: 600% 100%;
  -webkit-animation: HeroBG 20s ease infinite;
          animation: HeroBG 20s ease infinite;
}
@-webkit-keyframes HeroBG {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 100% 0;
  }
  100% {
    background-position: 0 0;
  }
}
@keyframes HeroBG {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 100% 0;
  }
  100% {
    background-position: 0 0;
  }
}
.panel {
  border-radius: 5px;
}
label {
  font-weight: 300;
}
.panel-login {
   border: none;
  -webkit-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  -moz-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  }
.panel-login .checkbox input[type=checkbox]{
  margin-left: 0px;
}
.panel-login .checkbox label {
  padding-left: 25px;
  font-weight: 300;
  display: inline-block;
  position: relative;
}
.panel-login .checkbox {
 padding-left: 20px;
}
.panel-login .checkbox label::before {
  content: "";
  display: inline-block;
  position: absolute;
  width: 17px;
  height: 17px;
  left: 0;
  margin-left: 0px;
  border: 1px solid #cccccc;
  border-radius: 3px;
  background-color: #fff;
  -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
  -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
  transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
}
.panel-login .checkbox label::after {
  display: inline-block;
  position: absolute;
  width: 16px;
  height: 16px;
  left: 0;
  top: 0;
  margin-left: 0px;
  padding-left: 3px;
  padding-top: 1px;
  font-size: 11px;
  color: #555555;
}
.panel-login .checkbox input[type="checkbox"] {
  opacity: 0;
}
.panel-login .checkbox input[type="checkbox"]:focus + label::before {
  outline: thin dotted;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.panel-login .checkbox input[type="checkbox"]:checked + label::after {
  font-family: 'FontAwesome';
  content: "\f00c";
}
.panel-login>.panel-heading .tabs{
  padding: 0;
}
.panel-login h2{
  font-size: 20px;
  font-weight: 300;
  margin: 30px;
}
.panel-login>.panel-heading {
  color: #848c9d;
  background-color: #e8e9ec;
  border-color: #fff;
  text-align:center;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
  border-top-left-radius: 0px;
  border-top-right-radius: 0px;
  border-bottom: 0px;
  padding: 0px 15px;
}
.panel-login .form-group {
  padding: 0 30px;
}
.panel-login>.panel-heading .login {
  padding: 20px 30px;
  border-bottom-leftt-radius: 5px;
}
.panel-login>.panel-heading .register {
  padding: 20px 30px;
  background: #2d3b55;
  border-bottom-right-radius: 5px;
}
.panel-login>.panel-heading a{
  text-decoration: none;
  color: #666;
  font-weight: 300;
  font-size: 16px;
  -webkit-transition: all 0.1s linear;
  -moz-transition: all 0.1s linear;
  transition: all 0.1s linear;
}
.panel-login>.panel-heading a#register-form-link {
  color: #fff;
  width: 100%;
  text-align: right;
}
.panel-login>.panel-heading a#login-form-link {
  width: 100%;
  text-align: left;
}
.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
  height: 45px;
  border: 0;
  font-size: 16px;
  -webkit-transition: all 0.1s linear;
  -moz-transition: all 0.1s linear;
  transition: all 0.1s linear;
  -webkit-box-shadow: none;
  box-shadow: none;
  border-bottom: 1px solid #e7e7e7;
  border-radius: 0px;
  padding: 6px 0px;
}
.panel-login input:hover,
.panel-login input:focus {
  outline:none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  border-color: #ccc;
}
.btn-login {
  background-color: #E8E9EC;
  outline: none;
  color: #2D3B55;
  font-size: 14px;
  height: auto;
  font-weight: normal;
  padding: 14px 0;
  text-transform: uppercase;
  border: none;
  border-radius: 0px;
  box-shadow: none;
}
.btn-login:hover,
.btn-login:focus {
  color: #fff;
  background-color: #2D3B55;
}
.forgot-password {
  text-decoration: underline;
  color: #888;
}
.forgot-password:hover,
.forgot-password:focus {
  text-decoration: underline;
  color: #666;
}
.btn-register {
  background-color: #E8E9EC;
  outline: none;
  color: #2D3B55;
  font-size: 14px;
  height: auto;
  font-weight: normal;
  padding: 14px 0;
  text-transform: uppercase;
  border: none;
  border-radius: 0px;
  box-shadow: none;
}
.btn-register:hover,
.btn-register:focus {
  color: #fff;
  background-color: #2D3B55;
}
.logout{
background-color: #E8E9EC;
  outline: none;
  color: #2D3B55;
  font-size: 14px;
  width:80px;
  height: auto;
  font-weight: normal;
  padding: 14px 0;
  text-transform: uppercase;
  border: none;
  border-radius: 3px;
  box-shadow: none;
  position:absolute;
  right:20px;
}
.logout:hover,
.logout:focus {
  color: #fff;
  background-color: #2D3B55;
}
</style>
</head>
<body>
<div class="container">
   <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-login">
        <div class="panel-body">
         
          <div class="row">
          
            <div class="col-lg-12">
            <a href="home99.html" class="form-control btn logout">Home </a> 
            <br>
           <h2>UPDATE VEHICLE <a href="logout.html" class="form-control btn logout">Logout </a> </h2> 
             <form id="login-form" action="updatenew.html" method="post" role="form" style="display: block;">
             
                  <div class="form-group">
                    <input type="text" name="vehicleNumber" id="username" tabindex="1" class="form-control" placeholder="Vehicle Number" value="${vehicle.vehicleNumber}">
                  </div>
                  <div class="form-group">
                    <input type="text" name="branch" id="email" tabindex="1" class="form-control" placeholder="Branch" value="${vehicle.branch}">
                  </div>
                  <div class="form-group">
                    <input type="text" name="vehicleType" id="password" tabindex="2" class="form-control" placeholder="Vehicle Type" value="${vehicle.vehicleType}">
                  </div>
                  <div class="form-group">
                    <input type="date" name="insuranceExpiry" id="confirm-password" tabindex="2" class="form-control" placeholder="Insurance Expiry"value="${vehicle.insuranceExpiry}">
                  </div>
                  <div class="form-group">
                    <input type="date" name="lastService" id="confirm-password" tabindex="2" class="form-control" placeholder="Last Service" value="${vehicle.lastService}">
                  </div>
                  <div class="form-group">
                    <input type="date" name="serviceDue" id="confirm-password" tabindex="2" class="form-control" placeholder="ServiceDue" value="${vehicle.lastService}">
                  </div>
                  
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Submit">
                      </div>
                    </div>
                  </div>
              </form>
              <form id="register-form"  method="post" role="form" style="display: none;">
                
              </form>
            </div>
          </div>
        </div>
         <div class="panel-heading">
          <div class="row">
            
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>