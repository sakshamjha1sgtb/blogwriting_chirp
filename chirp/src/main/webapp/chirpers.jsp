<%@page import="org.apache.catalina.SessionIdGenerator"%>
<%@page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%@page import="com.chirp.helper.*"%>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="chirpers.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/9f37ddf547.js"></script>
  <title>Social Networking App</title>
</head>

<body onload="loader()">
<%String email = String.valueOf(session.getAttribute("useremail"));
if(email == "log-out" || email == "null"){
	response.sendRedirect("homepage.jsp");
}
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
<%Connection con = ConnectionProvider.getconnection();
String sql = "select * from users where email=?";
PreparedStatement st = con.prepareStatement(sql);
st.setString(1, email);
ResultSet rs = st.executeQuery();
rs.next();
String fname = rs.getString(3);
String lname = rs.getString(4);
String img = rs.getString(6);
String dob = rs.getString(5);
String about = rs.getString(7);
%>
<div id="loading"></div>
<div class="livea">
        <div class="person">
      <div class="profile-pic"></div>
      <img src="img/chirp.jpg"></img>
    </div>
  </div>

  <section class="nav">
    <div class="icon active" id="active">
    <a href="welcome.jsp">
    <i class="fas fa-fire"></i>
      <p>Home</p>
    </div> </a> 
    <div class="icon">
    <a href="profile.jsp">
      <i class="fas fa-user"></i>
      <p>Profile</p></a>
    </div>
   
    <div class="icon">
   <a href="development.jsp">
      <i class="fas fa-cog"></i>
      <p>Developers</p> </a>
    </div>
    <div class="icon">
     <a href="support.jsp">
      <i class="fas fa-hands-helping"></i>
      <p>Support</p></a>
    </div>
  </section>
<section class="nava">
    <a href="post.jsp">
    <div class="icon">
      <i class="fas fa-plus"></i>
      <p>Add Post</p></a>
    </div>
    
    <div class="icon">
     <a href="chirpers.jsp"> 
      <i class="fas fa-users"></i>
      <p>Chirpers</p></a>
    </div>
     <div class="icon">
    <a href="log-out.jsp">
      <i class="fas fa-sign-out-alt"></i>
      <p>Signout</p></a>
    </div>
    
  </section>

  <%String s1="img/";
  String s3=s1.concat(img); %>
  <div class="live">
        <div class="person">
      <div class="profile-pic"></div>
      <img src="<%=s3%>"></img>
      <p class="name"><%=fname%> <%=lname %></p>
    </div>
  </div>

  <section class="newsfeed">
 <div class="card">
      <div class="content">
        <div class="header">
          <div class="profile-pic"></div>
          <div class="detail">
        		<h1>Here are all the chirpers.</h1><br>
        		<ul>
        		<%String all = "select * from users";
        		PreparedStatement a = con.prepareStatement(all);
        		ResultSet ch = a.executeQuery();
        		while(ch.next()){
        			out.println("<li>"+ch.getString(3)+"&nbsp;"+ch.getString(4)+"<br><br><strong>About:</strong>&emsp;"+ch.getString(7)+"<br><br> <strong>DOb:</strong>&emsp;"+ch.getString(5)+"</li> <br>");
        		}
        		
        		%>
        		
        		</ul>
          </div>
        </div>
      </div>
    </div>






     </section>

  <div class="space"></div>

<script>
var load =document.getElementById("loading");
function loader(){
	load.style.display="none";
}
</script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.js"></script>
  <script src="main.js"></script>
</body>

</body>
</html>