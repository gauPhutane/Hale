<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="styles.css" />
</head>

<body>
<a href="index.jsp" class="H2">Go To Main Page</a>
 <div align="center">
  <h1><b><u>BOOK APPOINTMENT</u></b></h1>
  <br /><br />
  <form action="<%= request.getContextPath() %>/booked.jsp" method="post">
   <table style="with: 80%">
   
    <label>
    <b>Patient Id</b>
    <input type="text" name="patId" />
    </label>
    
    <br /><br />
    
    <label>
    <b>Speciality</b>
    <select id ="departments" name="departments">
  		<option value="0">Please select</option>
  		<option value="Allergy and immunolog">Allergy and immunology</option>
 		<option value="Anesthesiology">Anesthesiology</option>
  		<option value="Diagnostic radiology">Diagnostic radiology</option>
  		<option value="Internal medicine">Internal medicine</option>
  		<option value="Neurology">Neurology</option>
  		<option value="Obstetrics and gynecology">Obstetrics and gynecology</option>
  		<option value="Ophthalmology">Ophthalmology</option>
  		<option value="Pediatrics">Pediatrics</option>
  		<option value="Psychiatry">Psychiatry</option>
  		<option value="Radiation oncology">Radiation oncology</option>
  		<option value="Surgery">Surgery</option>
  		<option value="Urology">Urology</option>
	</select>
    </label>
    
    <br /><br />
    
    <label>
    <b>Doctor</b>
    	<select id ="doctor" name="doctor">
  		<option value="0">Please select</option>
  		<option id="MartinWasser" value="Dr. Martin Wasser">Dr. Martin Wasser</option>
 		<option id="CarlTiedemann" value="Dr. Carl Tiedemann">Dr. Carl Tiedemann</option>
  		<option id="BradyStofer" value="Dr. Brady Stofer">Dr. Brady Stofer</option>
  		<option id="MayScheiner" value="Dr. May Scheiner">Dr. May Scheiner</option>
  		<option id="SofiaHansell" value="Dr. Sofia Hansell">Dr. Sofia Hansell</option>
	</select>
    </label>
    
    <br /><br />
     
     <label>
     <b>Date</b>
     <input type="date" name="appointmentDate"/>
     </label>
     
     <br /><br />
   
  	<label>
  	<b>Time</b>
  	<select name="time">
  		<option value="0">Please select</option>
  		<option value="8:00 AM">8:00 AM</option>
 		<option value="8:30 AM">8:30 AM</option>
  		<option value="9:00 AM">9:00 AM</option>
  		<option value="9:30 AM">9:30 AM</option>
  		<option value="10:00 AM">10:00 AM</option>
  		<option value="10:30 AM">10:30 AM</option>
  		<option value="11:00 AM">11:00 AM</option>
  		<option value="11:30 AM">11:30 AM</option>
  		<option value="12:00 PM">12:00 PM</option>
  		<option value="12:30 PM">12:30 PM</option>
  		<option value="2:00 PM">2:00 PM</option>
  		<option value="2:30 PM">2:30 PM</option>
	</select>
  	</label>
  	
  	<br/><br /><br/>
   </table>
   
   <input type="submit" value="Book Appointment" class ="form-submit-button"/>
  </form> 
 </div>
</body>
<script>
var url = new URL(window.location.href);
var currentDoctor = url.searchParams.get("currentDoctor");
console.log(currentDoctor);

(function() {
  	if (currentDoctor == "MartinWasser") {
  		document.getElementById('MartinWasser').selected = true;
  	} else if (currentDoctor == "CarlTiedemann") {
  		document.getElementById('CarlTiedemann').selected = true;
  	} else if (currentDoctor == "BradyStofer") {
		document.getElementById('BradyStofer').selected = true;
	} else if (currentDoctor == "MayScheiner") {
		document.getElementById('MayScheiner').selected = true;
	} else if (currentDoctor == "SofiaHansell") {
		document.getElementById('SofiaHansell').selected = true;
	}
})();
</script>

</html>
