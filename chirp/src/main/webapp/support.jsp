<%@page import="org.apache.catalina.SessionIdGenerator"%>
<%@page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%@page import="com.chirp.helper.*"%>
<!DOCTYPE html>
<html>
<head>
 <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/9f37ddf547.js"></script>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="support.css">
</head>
<body>
<%
String name = String.valueOf(session.getAttribute("username"));
String email = String.valueOf(session.getAttribute("useremail"));
if(email == "log-out" || email == "null"){
	response.sendRedirect("homepage.jsp");
	
			}
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
<div class="home">
<a href="welcome.jsp"><i class="fas fa-home"></i>Home</a>
  </div>
<div class="about-section">
  <h1 class="text-center mt-5 font-weight-bold">Feedback</h1>
  <h3 class="text-center">We would love to hear from you !</h3>
</div>
<div class="wrapper">
    <h1>Support</h1>
      <div class="feedback">
        <h2> If you want any support or any suggestion for our website do contact any of our developers</h2>
        <i><a  href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=kumarsaksham.444@gmail.com&subject=need+support" target="_blank">Saksham</a></i>
        <i><a  href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=indianhrishabh1999@gmail.com&subject=need+support" target="_blank">Hrishabh</a></i>
        <i><a  href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=agarwal.arpit1999@gmail.com&subject=need+support" target="_blank">Arpit </a></i>
        <i><a  href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=dkhan63.dk@gmail.com&subject=need+support" target="_blank">Danish</a></i>
        <i><a  href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=ankitsingh11555@gmail.com&subject=need+support" target="_blank">Ankit</a></i>

      </div>
</div>
<div style="margin-top:500px;"></div>

 <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.js"></script>
</body>
</html>
