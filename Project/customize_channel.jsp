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
<script>
 $(document).ready(function(){
            $(".fa.fa-trash").click(function(){
                var v = $(this).attr("rel");
              
                $.post(
                        "delete_category.jsp",{id:v}, function(data){
                    
                    if(data.trim()==="success"){
                          $("#"+v).fadeOut(1000);
                        
                    }
                    else{
                        alert(data);
                    }
                }
                );
            });
  </script>          

<!---profile--->

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
  <body data-spy="scroll" data-target=".navbar" data-offset="50">

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
                                                                                       
                                                                            <div class="dropbtn"> <img  src="../album/<%=code%>.jpg"  width="40" height="35"></div>
                                                                        
                                                                    <div class="dropdown-content">
                                                                   
                                                                                       
                                                                      <a href="Your_channel.jsp">Your Channel </a>
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
     <!-- Nav pills-->
     
     
      

    
    
    <style>
        .title-cc{
            font-size: large;
        } 
        
        
        
        body{
    color: #333;
}

.product-tabs {
    position: fixed;
}

.nav-tabs {
    
    margin-top: 4px;
    border-bottom: 3px solid #ddd;
}

.nav-tabs > li {
    float: none;
    display: inline-block;
    margin-bottom: -3px;
}

.nav-tabs>li>a:hover {
    border-color: #eee #eee #ddd;
    border-color: transparent;
    background-color: transparent;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    border: 1px solid transparent;
    border-bottom-color: #d51335;
    border-bottom-width: 3px;
}

.tab-pane{
    padding: 10px;
}

.tab-control .previous-button, .tab-control .next-button{
    position: absolute;
    top: 25%;
}

.tab-control .previous-button{
    left: 10%;
}

 .tab-control .next-button{
     right: 10%;
 }
 .tab-pane > h1{
     font-size: small;
 }
.nav-text{
 color: grey;
 font-size: 15px;
min-width: 100px;
font-weight: bold;
 }
.contain-leftside{
float: right;
padding: 5px 18px;
 font-size: 15px;
}
.back{
 font-size: 14px;
padding: 8px 8px;
float: right;
}   
.img-upload{
  max-width:150px;

}
.upload-image{
    font-size: 12px;
}
.button-submit{
  position: absolute;
  left: 250px;
}
body {margin:25px;}

div.polaroid {
  width: 20%;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
}
.image-style{
    margin: 40px;
    border-radius: 8px;
    max-width: 100%;
   height: 100px;
}
.edit--name{
    font-size: medium;
    padding: 10px;
}
.edit--name >a > i{
    padding: 20px;
    
}
.tab-pane > p1{
    font-size: large;
    
}

    </style>
         
  <meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script> 
     <link href="css/sb-admin-2.min.css" rel="stylesheet">
    
  
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="main-grids">
                            <div class="title-cc"><b>Channel customization</b></div>
                            <div class="top-grids">
					 <div class="col-sm-10 product-tabs">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab1" class="nav-text" data-toggle="tab">Branding</a></li>
                    <li class=""><a href="#tab2" class="nav-text" data-toggle="tab">Basic info</a></li>
                   <div class="contain-leftside"><button class="btn btn-danger" type="button">Publish</button></div>
                   <a class="back"  href="customize_channel.jsp">cancel</a>
                   <a class="back"  href="Your_channel.jsp">VIEW CHANNEL</a>
                </ul>    
  
      </div>
      </div>

                <div class="tab-content">
                    <div class="tab-pane active" id="tab1"><br><br><br>
                        <h1> Your profile picture will appear where your channel is presented on YouTube, like next to your videos and comments </h1>
                        <div class="polaroid"> <img class="image-style"  width="100" height="100" src="../album/<%=code%>.jpg" /></div>
                       <form method="post" ACTION="upload-image.jsp?code=<%=code%>" name="uploadForm" ENCTYPE='multipart/form-data'>
                         <input type="file" name="uploadFile" class="form-control" style="max-width : 30%"><br>
                         <input type="submit" name="Submit" value="submit" class="btn btn-danger">
                          </form> 
                         
                         
                    </div>
                    <div class="tab-pane" id="tab2"><br><br><br>
                        <p1><b>Channel name and description</b></p1>
                        
                        <div class="edit--name"><B><%=rs.getString(3)%></B>                         
                             <a href="edit_category.jsp?code=<%=code%>"><i class="fas fa-edit" rel="<%=code%>" style="color:grey"> </i> </a>
                                        
                             <br>
                            
                             <label>Description  </label> </div> 
                              <form method="post" action="channel_descript.jsp">
                             <textarea class="form-control" style ="resize:none; max-width:55%" onkeyup="countChars2(this); " rows="3" name="descript"  maxlength="110" ></textarea>
                             <p id="charNum2" style="color: green;"><b>0 characters</b></p>
                          <div class="edit--name">     <label>Contact info</label><br>
                              Let people know how to contact you with business inquiries. The email address you enter may appear in the<br> About section of your channel and be visible to viewers. <br></div>
                             
         
                             <input type="text"class="form-control" name="email" style="max-width:30%" placeholder="Enter Your Email"><br><br>
                             <input type="submit" class="btn btn-success" value="submit">
                             </form>     
                    </div>
                   
                </div>
                
            </div>
                           
                        </div></div>
                                
           <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
    
                                    function countChars2(obj){
                                        var maxLength = 100;
                                        var strLength = obj.value.length;

                                        if(strLength > maxLength){
                                            document.getElementById("charNum2").innerHTML = '<span style="color: red;">'+strLength+' out of '+maxLength+' characters</span>';
                                        }else{
                                            document.getElementById("charNum2").innerHTML = strLength+' out of '+maxLength+' characters';
                                        }
                                    }
                         
                             
     function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
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