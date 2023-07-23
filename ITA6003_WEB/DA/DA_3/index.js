function validateForm() {
  const name = document.getElementById("name").value;
  const regNumber = document.getElementById("regNumber").value;
  const password = document.getElementById("password").value;
  const confirmPassword = document.getElementById("confirmPassword").value;
  const dob = document.getElementById("dob").value;
  const age = parseInt(document.getElementById("age").value);
  const gender = document.querySelectorAll('input[name="gender"]');
  const programme = document.getElementById("programme").value;
  const year = parseInt(document.getElementById("year").value);
  const semester = parseInt(document.getElementById("semester").value);
  const email = document.getElementById("email").value;
  const areaOfInterest = document.getElementsByName("areaOfInterest");
  const cgpa = parseFloat(document.getElementById("cgpa").value);

  // Not empty validation
  if (
    !name ||
    !regNumber ||
    !password ||
    !confirmPassword ||
    !dob ||
    !age ||
    !gender ||
    !programme ||
    !year ||
    !semester ||
    !email ||
    !areaOfInterest ||
    !cgpa
  ) {
    alert("Please fill in all the fields.");
    return false;
  }

  // Registration number validation
  const regNumberRegex = /^[0-9]{2}[A-Z]{3}[0-9]{4,5}$/;
  if (!regNumber.match(regNumberRegex)) {
    alert("Invalid Registration Number.");
    return false;
  }

  // Password match validation
  if (password !== confirmPassword) {
    alert("Passwords do not match.");
    return false;
  }

  // Validate DOB format
  const dobRegex = /^\d{1,2}\/\d{1,2}\/\d{2}$/;
  if (!dob.match(dobRegex)) {
    alert("Invalid Date of Birth format. Please use dd/mm/yy.");
    return false;
  }

  // Validate age
  if (age < 15 || age > 100) {
    alert("Age must be between 18 and 100.");
    return false;
  }

  // Validate gender
  let checked = false;
  for (let i = 0; i < gender.length; i++) {
    if (gender[i].checked) {
      checked = true;
      break;
    }
  }

  if (!checked) {
    alert("Select gender.");
    return false;
  }

  // Validate programme
  if (programme === "no-choice") {
    alert("Select Valid Programme.");
    return false;
  }

  // Validate year
  if (year < 1 || year > 3) {
    alert("Year must be between 1 and 3.");
    return false;
  }

  // Validate semester
  if (semester < 1 || semester > 6) {
    alert("Semester must be between 1 and 6.");
    return false;
  }

  // Validate email format
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!email.match(emailRegex)) {
    alert("Invalid Email Id.");
    return false;
  }

  // Validate area of interest
  checked = false;
  for (let i = 0; i < areaOfInterest.length; i++) {
    if (areaOfInterest[i].checked) {
      checked = true;
      break;
    }
  }

  if (!checked) {
    alert("Select a area of interest.");
    return false;
  }

  // Validate CGPA
  if (cgpa < 0 || cgpa > 10) {
    alert("CGPA must be between 0 and 10.");
    return false;
  }

  return true;
}
