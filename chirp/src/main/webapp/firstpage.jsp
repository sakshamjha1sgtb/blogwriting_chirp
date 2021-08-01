<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
 <%@page import="com.chirp.helper.*" %>
 <%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>password is</title>
</head>
<body style="
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  background: #242C39; ">
<%  String pass = request.getParameter("npassword");
	String cpass = request.getParameter("cpassword");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String email = request.getParameter("email");
	String dob = request.getParameter("date");
	Connection con = ConnectionProvider.getconnection();
	Statement st = con.createStatement();
	if(cpass.equals(pass)){
		int i = st.executeUpdate("insert into users values ('"+email+"','"+pass+"','"+fname+"','"+lname+"','"+dob+"','defaultpic.jpg','i am using this website')");
		out.print("<h1 style='color:#fff;'>you are registered !!!! </h1>");
	}
	else{
		response.sendRedirect("signup.jsp");
	}
%>
<br>
<br><a href="homepage.jsp" class="btn btn-primary">Login Here </a><br>
</body>
</html>
