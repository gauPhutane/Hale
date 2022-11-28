<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Find a Doctor</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
	<a href="index.jsp" class="H2">Go To Main Page</a>
	<div align="center">
  		<h1 align="center">Find a Doctor</h1>
  		<label for="locationSelector">Please select location:</label>
  		<select id="locationSelector">
  			<option value="null">Select a location..</option>
  			<option id="StillwaterOption" value="Stillwater">Stillwater</option>
  			<option id="OKCOption" value="OKC">Oklahoma City</option>
  			<option id="TulsaOption" value="Tulsa">Tulsa</option>
  		</select>
  		<br/>
  		<br/>
  		<label id="DoctorsLabel" for="Doctors" style="display: none;">Doctors Nearby:</label>
  		<select style="display: none;" id="StillwaterDoctors">
  			<option value="null">Select a doctor..</option>
  			<option id="MartinWasserOption" value="Martin Wasser">Dr. Martin Wasser</option>
  			<option id="CarlTiedemannOption" value="Carl Tiedemann">Dr. Carl Tiedemann</option>
  		</select>
  		<select style="display: none;" id="OKCDoctors">
  			<option value="null">Select a doctor..</option>
  			<option id="BradyStoferOption" value="Brady Stofer">Dr. Brady Stofer</option>
  			<option id="MayScheinerOption" value="May Scheiner">Dr. May Scheiner</option>
  		</select>
  		<select style="display: none;" id="TulsaDoctors">
  			<option value="null">Select a doctor..</option>
  			<option id="SofiaHansellOption" value="Sofia Hansell">Dr. Sofia Hansell</option>
  		</select>
  		<br/>
  		<br/>
  		<a style="display: none;" id="BookAppointment" type="button" href="bookAppointment.jsp" class="form-submit-button">Book Appointment With Doctor</a>
  	</div>
</body>
<script type="text/javascript">
	document.getElementById('locationSelector').addEventListener("change", function(){ 
		if (this.value == 'Stillwater') {
			document.getElementById('DoctorsLabel').style.display = "inline-block";
			document.getElementById('StillwaterDoctors').style.display = "inline-block";
			document.getElementById('OKCDoctors').style.display = "none";
			document.getElementById('TulsaDoctors').style.display = "none";
			document.getElementById('BookAppointment').style.display = "none";
		} else if (this.value == 'OKC') {
			document.getElementById('DoctorsLabel').style.display = "inline-block";
			document.getElementById('OKCDoctors').style.display = "inline-block";
			document.getElementById('StillwaterDoctors').style.display = "none";
			document.getElementById('TulsaDoctors').style.display = "none";
			document.getElementById('BookAppointment').style.display = "none";
		} else if (this.value == 'Tulsa') {
			document.getElementById('DoctorsLabel').style.display = "inline-block";
			document.getElementById('TulsaDoctors').style.display = "inline-block";
			document.getElementById('StillwaterDoctors').style.display = "none";
			document.getElementById('OKCDoctors').style.display = "none";
			document.getElementById('BookAppointment').style.display = "none";
		} else {
			document.getElementById('DoctorsLabel').style.display = "none";
			document.getElementById('TulsaDoctors').style.display = "none";
			document.getElementById('StillwaterDoctors').style.display = "none";
			document.getElementById('OKCDoctors').style.display = "none";
			document.getElementById('BookAppointment').style.display = "none";
		}
	});
	
	document.getElementById('StillwaterDoctors').addEventListener("change", function(){ 
		if (this.value != 'null') {
			document.getElementById('BookAppointment').style.display = "inline-block";
			if (this.value == 'Martin Wasser') {
				document.getElementById('BookAppointment').href = "bookAppointment.jsp?currentDoctor=MartinWasser";
			} else if (this.value == 'Carl Tiedemann') {
				document.getElementById('BookAppointment').href = "bookAppointment.jsp?currentDoctor=CarlTiedemann";
			}
		}
	});
	
	document.getElementById('OKCDoctors').addEventListener("change", function(){ 
		if (this.value != 'null') {
			document.getElementById('BookAppointment').style.display = "inline-block";
			if (this.value == 'Brady Stofer') {
				document.getElementById('BookAppointment').href = "bookAppointment.jsp?currentDoctor=BradyStofer";
			} else if (this.value == 'May Scheiner') {
				document.getElementById('BookAppointment').href = "bookAppointment.jsp?currentDoctor=MayScheiner";
			}
		}
	});
	
	document.getElementById('TulsaDoctors').addEventListener("change", function(){ 
		if (this.value != 'null') {
			document.getElementById('BookAppointment').style.display = "inline-block";
			if (this.value == 'Sofia Hansell') {
				document.getElementById('BookAppointment').href = "bookAppointment.jsp?currentDoctor=SofiaHansell";
			}
		}
	});
	
</script>
</html>