<%@page import="org.apache.catalina.SessionIdGenerator"%>
<%@page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%@page import="com.chirp.helper.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/9f37ddf547.js"></script>
  
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}
.home{
display:flex;
justify-content:center;
position:fixed;
left:10px;
top:30px;
}
.home a{
text-decoration:none;
color: #BCED91;
font-size:25px;

}
.home a:hover{
 font-size:24px;
}
*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}
.card img{
width:100%;
height:100%;
border-radius:50%;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
  }
.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.card a{
font-size:17px;}
.card a:hover{
color:pink;
}

</style>
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
  <h1>About Us Page</h1>
  <p>We are welcoming you in friends , A website that help you to connect with world .</p>
  <p>This website developed by five passionate coders (Saksham Jha , Hrishabh Singh ,  Arpit Agarwal , Danish khan and Ankit Singh).</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
     <img src="img/saksham.jpeg">
      <div class="container">
        <h2>Saksham kumar</h2>
        <p class="title">Co-Founder</p>
        <p>Roll No. 2018PSC1024</p>
        <p><i class="far fa-envelope-open"></i>&nbsp;&nbsp;kumarsaksham.444@gmail.com&emsp;&emsp;&emsp;&emsp;
       <a href="https://www.instagram.com/sak_shamjha/?igshid=m2w0f6ueigwz" target="_blank"><i class="fab fa-instagram"></i></a></p>
       
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
     <img src="img/hrishabh.jpeg">
      <div class="container">
        <h2>Hrishabh Singh</h2>
        <p class="title">Co-Founder</p>
        <p>Roll No. 2018PSC1029</p>
        <p><i class="far fa-envelope-open"></i>&nbsp;&nbsp;indianhrishabh1999@gmail.com&emsp;&emsp;&emsp;&emsp;
        <a href="https://instagram.com/_hrishabh_s?igshid=1shet0nngg4sk" target="_blank"><i class="fab fa-instagram"></i></a></p>
       
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/arpit.jpeg">
     <div class="container">
        <h2>Arpit Agarwal</h2>
        <p class="title">Designer</p>
        <p>Roll No. 2018PSC1062</p>
        <p><i class="far fa-envelope-open"></i>&nbsp;&nbsp;agarwal.arpit1999@gmail.com&emsp;&emsp;&emsp;&emsp;
        <a href="https://instagram.com/arpit.a?igshid=1smy0u4hvz040" target="_blank"><i class="fab fa-instagram"></i></a></p>
       </div>
        
      </div>
    </div>


  <div class="column">
    <div class="card">
     <img src="img/danish.jpeg">
      <div class="container">
        <h2>Danish Khan</h2>
        <p class="title">Senior web deploper</p>
        <p>Roll No. 2018PSC1017</p>
        <p><i class="far fa-envelope-open"></i>&nbsp;&nbsp;dkhan63@gmail.com &emsp;&emsp;&emsp;&emsp;
       &emsp;&emsp; <a href="https://instagram.com/i._.mdk?igshid=13fbr4l97m58" target="_blank"><i class="fab fa-instagram"></i></a></p>
       
      </div>
    </div>
  </div>


  <div class="column">
    <div class="card">
     <img src="img/ankit.jpeg">
      <div class="container">
        <h2>Ankit Singh</h2>
        <p class="title">Art Director</p>
        <p>Roll No. 2018PSC1068</p>
        <p><i class="far fa-envelope-open"></i>&nbsp;&nbsp;ankitsingh11555@gmail.com&emsp;&emsp;&emsp;&emsp;&emsp;
        <a href="https://instagram.com/_ankit_singh.__?igshid=kqiduj6afbaa" target="_blank"><i class="fab fa-instagram"></i></a></p>
       
        
      </div>
    </div>
  </div>






  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.js"></script>

</body>
</html>
