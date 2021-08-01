<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="homepage.css">
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
CHIRP </div>
<form action="Login" method="post">
<% String user = String.valueOf(session.getAttribute("useremail"));
if(user=="log-out"){
	out.println("<div class='field'><p>Logout successfully</p> </div>");
	session.setAttribute("useremail", null);
}
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
        <div class="field">
          <input type="text" required name="email">
          <label>Email Address</label>
        </div>
<div class="field">
          <input type="password" required name="pass">
          <label>Password</label>
        </div>
<div class="content">
<div class="pass-link">
<a href="forgot.jsp">Forgot password?</a></div>
</div>
<div class="field">
          <input type="submit" value="Login">
        </div>
<div class="signup-link">
Not a member? <a href="signup.jsp">Signup now</a></div>
</form>
</div>
</body>
</html>