<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Welcome To Homepage</title>
<script>var today = new Date(); var cdate;var kdate</script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>jQuery(document).ready(function($) {
    $(".clickable-row").dblclick(function() {
        window.location = $(this).data("href");
    });
}); </script>
 <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
  <link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
  <title>CodePen - Flex-Navbar</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
  
      <style>
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
    </style>
</head>
<body>
<header class="flex-navbar">
  <h1 class="brand"><a href="home99.html" style="text-decoration:none">Vehicle Reservation System</a></h1>
  <ul class="items items-right">
    <li class="item"><a href="update.html">Update</a></li>
    <li class="item"><a href="logout.html">Logout</a></li>
  </ul>
</header>


<h4>Welcome To Homepage ${user.firstName}</h4>
<!-- <a href="logout.html" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Logout</a>
<a href="update.html">Update</a> -->
<br>
<br>
<br>
<p>
<form action="search.html" method="post">
<input list="criteria" name="criteria" >
  <datalist id="criteria">
    <option value="Vehicle Number">Vehicle Number</option>
    <option value="Branch">Branch</option>
    <option value="Insurance Expiry">Insurance Expiry</option>
    <option value="Service Due">Service Due</option>
    <option value="Last Service">Last Service</option>
    <option value="Vehicle Type">Vehicle Type</option>
  </datalist>
  <input type="text" name="Value">
  <button class="btn waves-effect waves-light" type="submit">Search</button>
</form>
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
</tr>
</thead>
  <tbody>
<c:forEach var="vehicles" items="${vehicles}"  >
<a href="update.html"><tr class='clickable-row' data-href='update.html'>
<div id="color_change">
<td> <center> <span style="color:gray"><p id="b">${vehicles.vehicleNumber}</span>
</td>
<td> <center> <span style="color:gray"><p id="c">${vehicles.branch}</span>
</td>
<td> <center> <span style="color:gray"><p id="a">${vehicles.insuranceExpiry}<div></span></center>
</td>
<td> <center> <span style="color:gray"><p id="d">${vehicles.lastService}</span>
</td>
<td> <center> <span style="color:gray"><p id="e">${vehicles.serviceDue}</span>
</td>
<td> <center> <span style="color:gray"><p id="f">${vehicles.vehicleType}</span></center>
</div>		
<script>cdate= document.getElementById("a").innerHTML;
/* document.write(cdate); 
 */
 
 
 kdate= cdate.replace(/-/g,"/"); 
 pdate = new Date(kdate);
/* document.write(pdate);*/
 var ddiff= ((today.getTime()-pdate.getTime())/(1000 * 3600 * 24)); 
	if(ddiff>=15)
		{
		document.getElementById("a").style.color = "#ff0000";
		document.getElementById("b").style.color = "#ff0000";
		document.getElementById("c").style.color = "#ff0000";
		document.getElementById("d").style.color = "#ff0000";
		document.getElementById("e").style.color = "#ff0000";
		document.getElementById("f").style.color = "#ff0000";
		}
 
</script>
</td>
</td>
</tr></a>
</c:forEach>


</tbody>
</table>

<script>
/* document.write(today) */;
</script>
</body>
</html>