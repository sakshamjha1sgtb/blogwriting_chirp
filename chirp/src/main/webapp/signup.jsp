<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="homepage.css">
    <script>  function triggerJS(){
    	var npass = document.getElementsByName("npassword")[0].value;
    	var cpass = document.getElementsByName("cpassword")[0].value;
    	if(cpass != npass){
    		alert("The password does not match confirm password")
    	}
    }
      </script>
  </head>
  <body>
  <div class="livea">
        <div class="person">
      <div class="profile-pic"></div>
      <img src="img/chirp.jpg"></img>
    </div>
  </div>
    <div class="wrapper">
      <div class="title">
Chirp Signup</div>
<form  action ="firstpage.jsp" onsubmit="triggerJS();" method="post">
    <div class="field">
        <input type="text" name="fname" required>
        <label>First Name</label>
      </div>
      <div class="field">
        <input type="text" name="lname" required>
        <label>Last Name</label>
      </div>
        <div class="field">
          <input type="text" name="email" required>
          <label>Email Address</label>
        </div>
<div class="field">
          <input type="password" name="npassword" required>
          <label>New Password</label>
        </div>
        <div class="field">
            <input type="password"  name="cpassword" required>
            <label>Confirm password</label>
          </div>
        <div class="field">
         <input type="date"  name="date"  value=none required>
            <label>Dob</label>
          </div>

<div class="field">
          <input type="submit" value="Sign-up">
        </div>
<div class="signup-link">
Already a member? <a href="homepage.jsp">Login Here</a></div>
</form>
</div>
</body>
</html>