<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
<style>
div {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.error {
	color: red;
}
</style>
<script>
	function validateForm() {
		var name = document.forms["signupForm"]["name"].value;
		var email = document.forms["signupForm"]["email"].value;
		var mobile = document.forms["signupForm"]["mobile"].value;
		var dob = document.forms["signupForm"]["dob"].value;
		var location = document.forms["signupForm"]["location"].value;
		var isValid = true;

		// Name validation
		if (name == "") {
			document.getElementById("nameError").innerText = "Name is required";
			isValid = false;
		} else {
			document.getElementById("nameError").innerText = "";
		}

		// Email validation
		if (email == "") {
			document.getElementById("emailError").innerText = "Email is required";
			isValid = false;
		} else {
			document.getElementById("emailError").innerText = "";
		}

		// Mobile validation
		if (mobile == "") {
			document.getElementById("mobileError").innerText = "Mobile is required";
			isValid = false;
		} else if (!/^\d{10}$/.test(mobile)) {
			document.getElementById("mobileError").innerText = "Invalid mobile number";
			isValid = false;
		} else {
			document.getElementById("mobileError").innerText = "";
		}

		// Date of Birth validation
		if (dob == "") {
			document.getElementById("dobError").innerText = "Date of Birth is required";
			isValid = false;
		} else {
			document.getElementById("dobError").innerText = "";
		}

		// Location validation
		if (location == "") {
			document.getElementById("locationError").innerText = "Location is required";
			isValid = false;
		} else {
			document.getElementById("locationError").innerText = "";
		}

		return isValid;
	}
</script>
</head>
<body>
	<div>

		<h1>User Registration</h1>
		<form name="signupForm" action="login"
			onsubmit="return validateForm()" 
			enctype="multipart/form-data">

			<fieldset>
				<legend>Signup here,</legend>
				<table>
					<tr>
						<th>Name:</th>
						<th><input type="text" name="name" required><span
							id="nameError" class="error"></span></th>
					</tr>
					<tr>
						<th>Email:</th>
						<th><input type="email" name="email" required><span
							id="emailError" class="error"></span></th>
					</tr>
					<tr>
						<th>Mobile:</th>
						<th><input type="tel" pattern="[0-9]{10}" name="mobile"
							required><span id="mobileError" class="error"></span></th>
					</tr>
					<tr>
						<th>Date of Birth:</th>
						<th><input type="date" name="dob" required><span
							id="dobError" class="error"></span></th>
					</tr>
					<tr>
						<th>Location :</th>
						<th><input type="text" name="location" required><span
							id="locationError" class="error"></span></th>
					</tr>
					<br>
					<tr>
						<label for="resume">idenficationDoc:</label>
						<input type="file" name="resume" id="resume" accept=".pdf">
					</tr>

					<tr>
						<th><button>Signup</button></th>
						<th><button type="reset">Cancel</button></th>
					</tr>
				</table>

			</fieldset>
		</form>
	</div>
</body>
</html>
