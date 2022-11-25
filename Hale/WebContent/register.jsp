<%--Author: Gautami Phutane--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body {
    position: relative;
    background-image: url("images/Register_Background.jpg");
    background-size:100% 100vh;
    }
    </style>
</head>

<body>
<script>
var check = function() {
	  if (document.getElementById('password').value ==document.getElementById('confirm_password').value) {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = 'Passwords Match';
	 	  } else {
	    document.getElementById('message').style.color = 'red';
	   document.getElementById('message').innerHTML = 'Passwords do not Match';
	  }
	}
</script>

<a href="index.jsp" class="H2">Go To Main Page</a>
 <div align="center">
  <h1>User Registration Form</h1>
  <form action="registrationConfirmation.jsp" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
    <tr>
     <td>Email</td>
     <td><input type="text" name="email" /></td>
    </tr>
      <tr>
     <td>Password</td>
     <td> <input name="password" id="password" type="password" onkeyup='check();' /></td>
    </tr>
      <tr>
     <td>Confirm Password</td>
     <td><input type="password" name="confirm_password" id="confirm_password" onkeyup='check();'/>
  <span id='message'></span></td>
    </tr>
    <tr>
     <td>Health Issues</td>
     <td><textarea id="issue" name="issue" rows="4" cols="50">
     </textarea></td>
    
   </table>
   <input type="submit" value="Submit" class ="form-submit-button" />
  </form>
 </div>
</body>

</html>