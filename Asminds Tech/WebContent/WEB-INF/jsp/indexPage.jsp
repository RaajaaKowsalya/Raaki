<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #ffffff;
	color: #34495E;
	font-weight: bold;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 10px;
	background-color: #4da6ff;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 10%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 20px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 6% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
	background-position: center;
	background-size: cover;
	background-image:
		url("http://www.mindztechnology.com/assets/mindz/image/banner-img-1.jpg");
	min-height: 70%;
}

.w3-bar .w3-button {
	padding: 16px;
}
</style>
<body>
	<center>
		<h2>Login</h2>


	</center>
	<div id="id01" class="modal">

		<form class="modal-content animate" method="post" action="indexPage">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="data:image/png;base64,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"
					alt="Avatar" class="avatar">
			</div>

			<div class="container">
				<label for="id"><b>Asminds ID</b></label> <input type="text"
					placeholder="Enter Id" name="id" required>
		 <label	for="password"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" id="myInput" name="password" required>
					

<!-- An element to toggle between password visibility -->
<input type="checkbox" onclick="myFunction()">  Show Password
<script type="text/javascript">function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}</script>

				<button type="submit">Login</button>
				<!-- <label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label> -->
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">New <a href="register">Employee??</a></span>
			</div>
		</form>
	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>


	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
		<c:forEach var="EmployeeAddPojo" items="${emp}">
			<a href="#home" class="w3-bar-item w3-button w3-wide">WELCOME ${EmployeeAddPojo.name}, </a> 
			</c:forEach>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">
				<a href="#about" class="w3-bar-item w3-button">ABOUT</a> 
				<a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> PROFILE</a> 
				<a href="#work"	class="w3-bar-item w3-button"><i class="fa fa-th"></i> LEAVE PROPOSAL</a>
				<a href="#claim"	class="w3-bar-item w3-button"><i class="fa fa-th"></i> CLAIM</a>
				 <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> CONTACT</a>
				<button	onclick="document.getElementById('id01').style.display='block'"
					style="width: auto;">LOGIN</button>
			</div>
			<!-- Hide right-floated links on small screens and replace them with a menu icon -->

			<a href="javascript:void(0)"
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
				onclick="w3_open()"> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>

	<!-- Sidebar on small screens when clicking the menu icon -->
	<nav
		class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large"
		style="display: none" id="mySidebar">
		<a href="javascript:void(0)" onclick="w3_close()"
			class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a> <a
			href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
		<a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">PROFILE</a>
		<a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">LEAVE PROPOSAL</a>
		<a href="#claim" onclick="w3_close()" class="w3-bar-item w3-button">CLAIM</a>
		<a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
	</nav>

	<!-- Header with full-height image -->
	<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
		<div class="w3-display-center w3-text-white" style="padding: 48px">

			<span class="w3-xxlarge w3-hide-large w3-hide-medium">ASMINDS TECH SOFTWARE SOLUTIONS PVT LTD</span><br>
			<center>
				<h1>
					<span class="w3-large"><b>ASMINDS TECH SOFTWARE SOLUTIONS PVT LTD <br>
					Bussiness Operations for a digital world...</b>.</span>
				</h1>
				<p>
					<a href="#about"
						class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">we help
						design,enable, and execute bussiness operations to generate customer values</a>
				</p>
			</center>
		</div>
		<div class="w3-display-bottomleft w3-text-grey w3-large"
			style="padding: 24px 48px">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
	</header>

	<!-- About Section -->
	<div class="w3-container" style="padding: 128px 16px" id="about">
		<h3 class="w3-center">ABOUT THE COMPANY</h3>
		<p class="w3-center w3-large">Key features of our company</p>
		<div class="w3-row-padding w3-center" style="margin-top: 64px">
			<div class="w3-quarter">
				<i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
				<p class="w3-large">Responsive</p>
				<p>Understanding the New-Age fuel system</p>
			</div>
			<div class="w3-quarter">
				<i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
				<p class="w3-large">Passion</p>
				<p>Thinking machine first</p>
			</div>
			<div class="w3-quarter">
				<i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
				<p class="w3-large">Design</p>
				<p>Blockchain in Hitech</p>
			</div>
			<div class="w3-quarter">
				<i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
				<p class="w3-large">Support</p>
				<p>we are proud of our heritage and values based on creativity and innovation.
				Discover the best platform to solidy your carrer</p>
			</div>
		</div>
	</div>


	<!-- Promo Section "Statistics" -->
	<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
		<div class="w3-quarter">
			<span class="w3-xxlarge">14+</span> <br>Partners
		</div>
		<div class="w3-quarter">
			<span class="w3-xxlarge">55+</span> <br>Projects Done
		</div>
		<div class="w3-quarter">
			<span class="w3-xxlarge">89+</span> <br>Happy Clients
		</div>
		<div class="w3-quarter">
			<span class="w3-xxlarge">150+</span> <br>Meetings
		</div>
	</div>

	<!-- Profile Section -->
	<div class="w3-container" style="padding: 128px 16px" id="team">
		<h3 class="w3-center">Employee Profile</h3>
		<p class="w3-center w3-large">The one who is part of the company</p>
		
		<div class="w3-row-padding w3-grayscale" style="margin-top: 64px">
			<div class="w3-col l3 m6 w3-margin-bottom">
			
				<div class="w3-card">
					<img
						src="http://www.mindztechnology.com/assets/mindz/image/banner-img-1.jpg"
						alt="John" style="width: 100%">
					<div class="w3-container">
						<c:forEach var="EmployeeAddPojo" items="${emp}">
							<h3>${EmployeeAddPojo.name}</h3>
							<p class="w3-opacity">${EmployeeAddPojo.designation}</p>

							<p>ID: ${EmployeeAddPojo.id}</p>



						</c:forEach>

						<!-- <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
					</div>
				</div>
			</div>
			<div class="w3-col l3 m6 w3-margin-bottom" >
<div class="w3-card">

				<c:forEach var="EmployeeAddPojo" items="${emp}">
					<h3>Contact Information:</h3>
					<p class="w3-opacity">Asminds mail Id</p>
					<p>${EmployeeAddPojo.email}</p>
					<p>Mobile No: ${EmployeeAddPojo.phone}</p>
					<p>DOB : ${EmployeeAddPojo.dob}</p>
				</c:forEach>
				<!--  <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
			
		</div>
	</div>
	<div class="w3-col l3 m6 w3-margin-bottom">
	<div class="w3-card">
		<c:forEach var="EmployeeAddPojo" items="${emp}">
			<h3>Previous Company Profile</h3>
			<p class="w3-opacity">Company Name:
				${EmployeeAddPojo.company}</p>
			<p>Resignation date: ${EmployeeAddPojo.resignationdate}</p>
			
			<!--  <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
		</c:forEach>
	</div>
</div></div>
	<div class="w3-col l3 m6 w3-margin-bottom">
	<div class="w3-card">
		<c:forEach var="EmployeeAddPojo" items="${emp}">
			<h3>Qualification</h3>
			<p class="w3-opacity">Highest Qualification:
				${EmployeeAddPojo.degree}</p>
			<p>Institution: ${EmployeeAddPojo.institution}</p>
			<p>Year of Passing :${EmployeeAddPojo.year}</p>
			<!--  <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
		</c:forEach>
	</div>
</div>
	<div class="w3-col l3 m6 w3-margin-bottom">
	<div class="w3-card">
		<c:forEach var="EmployeeAddPojo" items="${emp}">
			<h3>Nationality</h3>
			<p class="w3-opacity">Aadhaar card: ${EmployeeAddPojo.aadhaar}</p>
			<p>Pan Card: ${EmployeeAddPojo.pancard}</p>
			<!--  <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
		</c:forEach>
	</div>
	</div>

	<div class="w3-col l3 m6 w3-margin-bottom">
	<div class="w3-card">
		<c:forEach var="EmployeeAddPojo" items="${emp}">
			<h3>Dependency Details</h3>
			<p class="w3-opacity">Dependency Name:
				${EmployeeAddPojo.dependencyname}</p>
			<p>Relationship: ${EmployeeAddPojo.dependencyrelation}</p>
			<p>Mobile No :${EmployeeAddPojo.dependencyphone}</p>
			<!--  <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
		</c:forEach>
	</div>
</div>
</div>
	<!-- Leave Proposal Section -->
	<div class="w3-container" style="padding: 128px 16px" id="work">
		<h3 class="w3-center">LEAVE PROPOSAL</h3>
		<p class="w3-center w3-large">Leave Apply</p>

		<div class="w3-row-padding" style="margin-top: 64px">
		<form action="leaveapply" method="post">
			<div class="w3-col l3 m6">
				<!-- <img src="/w3images/tech_mic.jpg" style="width: 100%"
					onclick="onClick(this)" class="w3-hover-opacity" alt="A microphone"> -->
					<c:forEach var="EmployeeAddPojo" items="${emp}">
					<input type="hidden" value="${EmployeeAddPojo.id}" name="id">
					Select From Date to apply Leave:<input type="date" name="leavefrom"><br><br>
					Select To Date to apply Leave:<input type="date" name="leaveto">
					</c:forEach>
			</div>
			<div class="w3-col l3 m6">
				<!-- <img src="/w3images/tech_drone.jpg" style="width: 100%"
					onclick="onClick(this)" class="w3-hover-opacity" alt="A drone"> -->
					
			 Leave Type:	<select id="leavetype" name="leavetype">
  <option value="Sick Leave">Sick Leave</option>
  <option value="Casual Leave">Casual Leave</option>
  <option value="Annual Leave">Annual Leave</option>
</select>
  
  </div>
</div>
<br><br>
					<div class="w3-col l3 m6">
				<!-- <img src="/w3images/tech_phone.jpg" style="width: 100%"
					onclick="onClick(this)" class="w3-hover-opacity" alt="A phone"> -->
					Reason:<textarea rows="5" cols="50" name="reason"></textarea>
					<button class="w3-button w3-black" type="submit">
						<i class="fa fa-paper-plane"></i> APPLY
					</button>
				</form>
			</div>
			</div>
			
	<div id="modal01" class="w3-modal w3-black"
		onclick="this.style.display='none'">
		<span
			class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright"
			title="Close Modal Image">×</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img id="img01" class="w3-image">
			<p id="caption" class="w3-opacity w3-large"></p>
		</div>
	</div>

	
	<div class="w3-container w3-light-grey w3-padding-64" id="claim">
		<h3 class="w3-center">CLAIM SUPPORT</h3>
		<p class="w3-center w3-large">Claim </p>

		<div class="w3-row-padding" style="margin-top: 64px">
		<form action="claimapply" method="post">
			<div class="w3-col l3 m6">
				<!-- <img src="/w3images/tech_mic.jpg" style="width: 100%"
					onclick="onClick(this)" class="w3-hover-opacity" alt="A microphone"> -->
					<c:forEach var="EmployeeAddPojo" items="${emp}">
					<input type="hidden" value="${EmployeeAddPojo.id}" name="id">
					Select From Date to apply:<input type="date" name="claimfrom"><br><br>
					Select To Date to apply :<input type="date" name="claimto">
					</c:forEach>
			</div>
			<div class="w3-col l3 m6">
				<!-- <img src="/w3images/tech_drone.jpg" style="width: 100%"
					onclick="onClick(this)" class="w3-hover-opacity" alt="A drone"> -->
					
			 Claim Type:	<select id="claimtype" name="claimtype">
  <option value="Medical claim">Medical claim</option>
  <option value="Insurance claim">Insurance claim</option>
  <option value="Travel claim">Travel claim</option>
  <option value="Fuel claim">Fuel claim</option>
  <option value="Maternity/Paternity claim"> Maternity / Paternity claim</option>
</select>
<br><br><br>
Submit bill: <input type="file" name="claimbill">

				<!-- <img src="/w3images/tech_phone.jpg" style="width: 100%"
					onclick="onClick(this)" class="w3-hover-opacity" alt="A phone"> -->
					<br><br><br>
					Description:<textarea rows="5" cols="50" name="description"></textarea>
					<br><br>
					<button class="w3-button w3-black" type="submit">
						<i class="fa fa-paper-plane"></i> SUBMIT
					</button>
				</form>
 
  </div>
	</div>

	<!-- Contact Section -->
	<div class="w3-container w3-light-grey" style="padding: 128px 16px" id="contact">
		<h3 class="w3-center">CONTACT</h3>
		<p class="w3-center w3-large">Lets get in touch. Send us a
			message:</p>
		<div style="margin-top: 48px">
			<p>
				<i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i>
				Arul S,
			</p>
			<p>
				<i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone:
				+91-9952431694
			</p>
			<p>
				<i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i>
				Email: hr@asminds.com
			</p>
			<br>
			<form action="/action_page.php" target="_blank">
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Name"
						required name="Name">
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Email"
						required name="Email">
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Subject"
						required name="Subject">
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Message"
						required name="Message">
				</p>
				<p>
					<button class="w3-button w3-black" type="submit">
						<i class="fa fa-paper-plane"></i> SEND MESSAGE
					</button>
				</p>
			</form>
			<!-- Image of location/map -->
			<img src="/w3images/map.jpg" class="w3-image w3-greyscale"
				style="width: 100%; margin-top: 48px">
		</div>
	</div>

	<!-- Footer -->
	<footer class="w3-center w3-black w3-padding-64">
		<a href="#home" class="w3-button w3-light-grey"><i
			class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<!-- <p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a>
		</p> -->
	</footer>

	<script>
		// Modal Image Gallery
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
			var captionText = document.getElementById("caption");
			captionText.innerHTML = element.alt;
		}

		// Toggle between showing and hiding the sidebar when clicking the menu icon
		var mySidebar = document.getElementById("mySidebar");

		function w3_open() {
			if (mySidebar.style.display === 'block') {
				mySidebar.style.display = 'none';
			} else {
				mySidebar.style.display = 'block';
			}
		}

		// Close the sidebar with the close button
		function w3_close() {
			mySidebar.style.display = "none";
		}
	</script>

</body>
</html>