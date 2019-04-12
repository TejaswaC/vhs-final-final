<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Update Vehicle Here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.14.1/moment.min.js"></script>
<style >

  h4 {
  text-align: center;
  font-family: sans-serif;
}
      * {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: Montserrat, sans-serif;
}

.flex-navbar {
  background-color: #858697;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
  padding: 2px 10px;
  display: flex;
  align-items: center;
}

.flex-navbar .items.items-right {
  margin-left: auto;
}


.flex-navbar .brand {
  color: #140700;
  font-size: 1.45em;
}
.flex-navbar ul.items {
  display: flex;
  align-items: center;
  list-style: none;
  margin: 0;
  padding: 0;
  color: #140700;
	font-size: .99em;
  text-transform: uppercase;
}

.flex-navbar > ul.items li.item {
  margin: 0 15px;
}

.flex-navbar > ul.items li.item a {
  text-decoration: none;
  color: #140700;
}

.flex-navbar > ul.items li.item a:hover {
  color: red;
}

@media only screen and (max-width: 577px) {
  .flex-navbar {
    flex-direction: column;
  }
  
  .flex-navbar ul.items {
    flex-direction: column;
  }
  
  .flex-navbar ul.items.items-right {
    margin-left: initial;
  }
  
  .flex-navbar > ul.items li.item {
    margin: 15px 15px;
  }
}
div.container {
  text-align: center;
  margin: 100px auto 0;
}

#button1 {
  display: inline-block;
  background-color: #1984c3;
  color: #fff;
  font-size: .7em;
  font-family:  sans-serif;
  padding: 1em 5em;
  text-decoration: none;
  text-transform: uppercase;
  border-radius: 0.2em;
  border-bottom: 0.25em solid #0f5177;
  -moz-transition: 0.1s;
  -webkit-transition: 0.1s;
  transition: 0.1s;
  box-shadow: 0 2px 3px #ccc;
  position: relative;
}

a:hover {
  background-color: #1e9feb;
  border-bottom-width: 0;
  margin-top: 0.2em;

}
.flex-navbar > ul.items li.item a {
  text-decoration: none;
  color: #140700;
}

.flex-navbar > ul.items li.item a:hover {
  color: red;
}

</style>
</head>
<body>
<header class="flex-navbar">
  <h1 class="brand"><a href="home99.html" style="text-decoration:none">Vehicle Reservation System</a></h1>
  <ul class="items items-right">
 
    <a href="logout.html" >Logout</a>
  </ul>
</header>
<p>Today's Date</p>
<script>var m = moment().format("DD/MM/YYYY");
document.write(m);
/* var t = document.getElementById('superman').value; */
document.write(t);</script>

<div class="container">
<a href="addVehicles.html" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Add Vehicle</a>
</div>
<br>
<table class="table table-sm" border="1" >
<thead>
<tr>
<td> <center> <span style="color:gray">Vehicle Number</span>
</td>
<td> <center> <span style="color:gray">Branch</span>
</td>
<td> <center> <span style="color:gray">Insurance Expiry</span>
</td>
<td> <center> <span style="color:gray">Last Service</span>
</td>
<td> <center> <span style="color:gray">Service Due</span>
</td>
<td> <center> <span style="color:gray">Vehicle Type</span>
</td>
<td> <center> <span style="color:gray">Update Here</span>
</td>
</tr>
</thead>
  <tbody>
<c:forEach var="vehicle"  items="${vehicle}">
<tr>
<td> <center> <span style="color:gray">${vehicle.vehicleNumber}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.branch}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.insuranceExpiry}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.lastService}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.serviceDue}</span>
</td>
<td> <center> <span style="color:gray">${vehicle.vehicleType}</span>
</td>
</td>
<%-- <c:set property="${vehicle.vehicleNumber}" var="vehNumber" ></c:set> --%>
<%-- <fmt:parseNumber var="vehNumber" value="${vehicle.vehicleNumber}" integerOnly="true"/>
<fmt:parseNumber var="vehNumber" integerOnly="true" type="number" value="${vehicle.vehicleNumber}" /> --%> 
<td> <center> <span style="color:gray"><a id="button1" href="updateVehicle.html?id=${vehicle.vehicleNumber}">Update</a></span>
</td>
</tr>
</c:forEach>

</tbody>
</table>
</body>
</html>