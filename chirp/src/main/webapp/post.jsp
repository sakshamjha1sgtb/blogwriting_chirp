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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="post.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/9f37ddf547.js"></script>
  <title>Social Networking App</title>
</head>

<body onload="loader()">
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color:black;">create your post here</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="addpost" method="post" enctype="multipart/form-data">
        <div class="form-group">
        <input type="text" class="form-control" required placeholder="enter post title" name="ptitle">
        </div>
        <div class="form-group">
         <label style="color:black;">select a picture</label><br>
        <input type="file" name="pimage" style="color:black;">
        </div>
        
        <div class="form-group">
        <textarea class="form-control" style="height:200px;" placeholder="chirp something here ..." name="pinfo"></textarea>
        </div>
                 <input type="submit" class="btn btn-primary" value="chirp">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
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
session.setAttribute("username", fname);
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
         <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Start Chirping
</button>

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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>