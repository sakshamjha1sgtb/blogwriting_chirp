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
Forgot password? </div>
<form action="password.jsp" method="post">
        <div class="field">
          <input type="text" required name="email">
          <label>Email Address</label>
        </div>
<div class="field">
          <input type="text" required name="fname">
          <label>enter your first name</label>
        </div>
<div class="content">
<div class="pass-link">
Do not worry just fill these out ...
</div>
</div>
<div class="field">
          <input type="submit" value="Login">
        </div>

</form>
</div>
</body>
</html>