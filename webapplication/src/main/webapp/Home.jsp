<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Amazon management system</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">

</head>
<body>

     <div class="Container">
  
          <div class="row">
         <h1 style="text-align: center;">List Amazon</h1>
         </div>
         
         <div class ="row">
            <div class ="col-lg-3">
            <a th:href ="@{/Amazon/new}" class = "btn btn-primary btn-sm mb-3">Add Amazon</a>
            </div>
         </div>
      <table class="table table-striped table-bordered">
         <thead class= "table-dark">
         
         
        <form action="addcustomer" method="post">

<input type="text" name="firstname" placeholder="firstname"/><br/>
<input type="text" name="lastname" placeholder="lastname"/><br/>
<input type="text" name="email" placeholder="email"/><br/>
<input type="submit" value="submit"><br/>

</form>
    </thead>

      <tbody>
      
    <tr th:each="Amazon:${amazon}">
     <td th:text ="${amazon.id}"></td>
     <td th:text ="${amazon.name}"></td>
     <td th:text ="${amazon.cost}"></td>
    
   </tr>
   
     </tbody>
     </table>
      </div>
      </body>
</html>


<%-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon System</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">


</head>
<body>
<div id="gopal" >
<form action=""> <table>
   <h1><span style="color: aqua;">L</span><span style="color: brown;">i</span><span style="color: blue;">s</span><span style="color: pink;">t</span><span style="color:gold">&nbsp;</span><span style="color: blue;">A</span><span style="color:chartreuse">m</span><span style="color:darkorange ">a</span><span style="color:white">z</span><span style="color:brown">o</span><span style="color: blue;">n</span></h1>
<br>
<button style="background-color: red;">Add Amazon</button>
<form action="addcustomer" method="post">

<input type="text" name="firstname" placeholder="firstname"/><br/>
<input type="text" name="lastname" placeholder="lastname"/><br/>
<input type="text" name="email" placeholder="email"/><br/>
<input type="submit" value="submit"><br/>

</form>

<tr>
    <td><label for="" style="color: white;">First name:</label></td>
<td><input type="text" id="" placeholder="Enter your name"></td>
</tr>
<tr>
<td><label for="" style="color: white;">Last name:</label></td>
<td><input type="text" id=""placeholder="last name"></td>
</tr>
<tr>

<td>   <label for=""  style="color: white;" > &nbsp;  &nbsp;Email:</label></td> 
<td>  <input type="text" id=""placeholder="Email"></td>
</tr></table><br>
   <input style="background-color: blueviolet;" type="submit" name="" id="">
</form>
</div>















<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Web Application</title>
</head>

<body style="text-align:center;">
<h1> WebAppliaction </h1>


<form action="addcustomer" method="post">

<input type="text" name="firstname" placeholder="firstname"/><br/>
<input type="text" name="lastname" placeholder="lastname"/><br/>
<input type="text" name="email" placeholder="email"/><br/>
<input type="submit" value="submit"><br/>

</form>

<form action="deletecustomer" method="delete">
<button class="btn btn-delete">
  <span class="mdi mdi-delete mdi-24px"></span>
  <span class="mdi mdi-delete-empty mdi-24px"></span>
  <span>"delete"</span>
</button>

</form>
</body>
</html> --%>