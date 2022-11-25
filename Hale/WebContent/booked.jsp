<%--Author:Megha Jamloki --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
   
   <a href="index.jsp" class="H2">Go To Main Page</a>
 <div align="center">
 
 <img src="images/img1.jpg" width="200px" height="200px" >
  <h1><b>Thank you! Your appointment has been confirmed.</b></h1>
  
    <br /><br />
    
     <font size="+2"><b><u>Appointment Details</u></b></font>
 <br/> <br/>
  <font size="4" face="Arial" >
  <table align="center" border="1" cellpadding="5">

	<tr>
		 <th>Patient Id</th>
         <th>Speciality</th>
         <th>Doctor</th>
         <th>Date</th>
         <th>Time</th>
   </tr>
   
     <TR>
 
	<TD><%=request.getParameter("patId")%></TD>
	<TD><%=request.getParameter("departments")%></TD>
	<TD><%=request.getParameter("doctor")%></TD>
	<TD><%=request.getParameter("appointmentDate")%></TD>
	<TD><%=request.getParameter("time")%></TD>
	
	</TR>

</TABLE>
</font>
</div>
</body>
</html>