<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<% 
    Cookie c[] = request.getCookies();
    String email = null;
     for(int i=0; i<c.length;i++)
    {
        if(c[i].getName().equals("user"))
        {
            email =c[i].getValue();
            break;
        }
    }
     if(email!=null && session.getAttribute(email)!=null)
     {
          try{
            Class.forName("com.mysql.jdbc.Driver");
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","");
           Statement st = cn.createStatement();
            
            
            ResultSet  rs = st.executeQuery("select * from registration where email = '"+email+" ' ");
        if(rs.next()){
            String code = rs.getString("code");
%>



<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>My Play a Entertainment Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<!-- //fonts -->
<!---profile--->
<script>
    .circular--square {
  border-radius: 50%;
 
}
    </script>
   
    
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
 
    
.dropbtn {
  background-color:white;
  color: black;
  padding: 10px;
  width: 100px;
  font-size: 6px;
  border: none;
  border-radius: 10px;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 200px;
  box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);
  z-index: 1;
  right: 5px;
}

.dropdown-content a {
  color: black;
  padding: 10px 40px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: white;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: white;}


.circular--square {
  border-top-left-radius: 50% 50%;
  border-top-right-radius: 50% 50%;
  border-bottom-right-radius: 50% 50%;
  border-bottom-left-radius: 50% 50%;
  
  position: absolute;
  top: 60px;
  left: 20px;
  font-size: 18px;

 

}
</style>
<!--profile-->
</head>
  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="main.jsp"><h1><img src="images/logo.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
					<input type="submit" value=" ">
				</form>
			</div>
			<div class="header-top-right">
				<div class="file">
                                    <a href="upload.jsp"type="button" class="btn btn-white btn-lg" >Upload</a>&nbsp;&nbsp;&nbsp;&nbsp;
				
					<!-- pop-up-box -->
									<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
									<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
									<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
									<!--//pop-up-box -->
                                                                        <div class="dropdown">
                                                                                       
                                                                            <div class="dropbtn"><button class="btn btn-default"> <img  src="logo/aklogo.jpeg"
                                                                                    
                                                                                                                                      width="40" height="35"></button></div>
                                                                        
                                                                    <div class="dropdown-content">
                                                                   
                                                                                       
                                                                      <a href="#">Your Channel</a>
                                                                      <a href="#">Sign out</a>
                                                                    </div>
                                                                  </div>
                                                                         
									
                           
                                
                            </div>
				
				<div class="clearfix"> </div>
			</div>
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
	
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">MENU</div>
				<div class="t-img">
					<img src="images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="drop-navigation drop-navigation">
                                    <ul class="nav nav-sidebar"><br><br>
					<li class="active"><a href="index.html" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
					<li><a href="shows.html" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>TV Shows</a></li>
					<li><a href="history.html" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>History</a></li>
					<li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>Movies<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-2">
							<li><a href="movies.html">English</a></li>                                             
							<li><a href="movies.html">Chinese</a></li>
							<li><a href="movies.html">Hindi</a></li> 
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu1" ).click(function() {
							$( "ul.cl-effect-2" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>Sports<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-1">
							<li><a href="sports.html">Football</a></li>                                             
							<li><a href="sports.html">Cricket</a></li>
							<li><a href="sports.html">Tennis</a></li> 
							<li><a href="sports.html">Shattil</a></li>  
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="movies.html" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>Songs</a></li>
					<li><a href="news.html" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>News</a></li>
				  </ul>
				  <!-- script-for-menu -->
						<script>
							$( ".top-navigation" ).click(function() {
							$( ".drop-navigation" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<div class="side-bottom">
						<div class="side-bottom-icons">
							<ul class="nav2">
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="facebook twitter"> </a></li>
								<li><a href="#" class="facebook chrome"> </a></li>
								<li><a href="#" class="facebook dribbble"> </a></li>
							</ul>
						</div>
						
					</div>
				</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="main-grids">
				<div class="top-grids">
					<div class="recommended-info">
                                            <!DOCTYPE html>
                                         
                                                <img class="circular--square"  width="100" height="100" src="../album/<%=code%>.jpg" />
                                           
                                                <style>  
                                                div.profile--text{
                                                      position: absolute;
                                                      top: 85px;
                                                      left: 156px;
                                                      font-size: 18px;

                                                  }
                                                  div.edit--profile{
                                                    position: absolute;
                                                      top: 110px;
                                                      left: 156px;
                                                      font-size: 15px;  
                                                  }
                                                  div.button-postion{
                                                     float: right;
                                                      margin: 30px;
                                                      font-size: small;
                                                      color: blue
                                                   
                                                  }
                                                 
                                                  
                                                  
                                                </style>
                                            
                                                    
                                             
                                                   
                                              	</div>
					
    <!-- Bootstrap core JavaScript
    ================================================== -->
                                                <!-- Placed at the end of the document so the pages load faster -->
                                                <script src="js/bootstrap.min.js"></script>
                                                <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
                                                <!-- nav Bar-->
                                                <div class="container">

                                                <div class="profile--text"><b> <%= rs.getString(3) %> </b></div>
                                                <div class="edit--profile"> 2 subscribers </div>
                                                <div class="button-postion">
                                                   
                                                    <a href="customize_channel.jsp" type="button" class="btn btn-primary">CUSTOMIZE CHANNEL</a>
                                                    <a href="manage_videos.jsp" type="button" class="btn btn-primary">MANAGE VIDEOS</a><nav class="navgation">
                                                </div>
                                                </div>
                                </div>
                        </div>
                                                <style>
                                                    .nav-text{
                                                        color: grey;
                                                        font-size: 20px;
                                                          min-width: 180px;
                                                    }
                                                    </style>
                                                    
                                                    
                            
                                                <div class="navbar-contain">
                                                    <div class="nav-link">
                                                <ul class="nav nav-tabs" >
                                                   
                                                    <li class="active"><a class="nav-text" data-toggle="tab" href="#home">HOME</a></li>
                                                  <li><a class="nav-text" data-toggle="tab" href="#menu1"> VIDEOS</a></li>
                                                  <li><a class="nav-text" data-toggle="tab" href="#menu2">PLAYLISTS</a></li>
                                                  <li><a class="nav-text" data-toggle="tab" href="#menu3">CHANNEL</a></li>
                                                   <li><a class="nav-text" data-toggle="tab" href="#menu3">DISCUSSION</a></li>
                                                    <li><a class="nav-text" data-toggle="tab" href="#menu3">ABOUT</a></li>
                                                </ul>
                                                    </div>

                                                <div class="tab-content">
                                                  <div id="home" class="tab-pane fade in active">
                                                    <h3>HOME</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                  </div>
                                                  <div id="menu1" class="tab-pane fade">
                                                    <h3>Menu 1</h3>
                                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                                  </div>
                                                  <div id="menu2" class="tab-pane fade">
                                                    <h3>Menu 2</h3>
                                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                                  </div>
                                                  <div id="menu3" class="tab-pane fade">
                                                    <h3>Menu 3</h3>
                                                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                                  </div>
                                                </div>
                                              </div>
                                              </div>
        

    
  </body>
</html>
<%
}
         else{
                out.print("Invalid Email");
                
            }
            cn.close();
            
    }
         catch(Exception er){
                out.print(er.getMessage());
            }
        }
     else
     {
         response.sendRedirect("index.jsp");
     }
%>