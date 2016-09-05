<!DOCTYPE html>
 <%@ page import="java.sql.*" %>

<%  Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<html lang="en">

<head>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head 
         content must come *after* these tags -->
    <title>Earthquake Aftermath: About Us</title>
        <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap-social.css" rel="stylesheet">
    <link href="css/mystyles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body data-spy="scroll" data-target="#myScrollSpy" data-offset="200">
 <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:earth_help/aftermath@localhost:1521:XE", "earth_help", "aftermath");

            Statement statement1 = connection.createStatement() ;
          //  Statement statement2 = connection.createStatement() ;
         //   Statement statement3 = connection.createStatement() ;
            ResultSet rs1;
               rs1 = statement1.executeQuery("select * from contactus ") ; 
            //   rs2 = statement2.executeQuery("select * from medicine ") ;
            //   rs3 = statement3.executeQuery("select * from accessories ") ;
            
        %>
         
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<a class="navbar-brand" href="index.html"><img src="img/redcrossapp.png" height=30 width=41></a>-->
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html"><span class="glyphicon glyphicon-home"
                         aria-hidden="true"></span> Home</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i> Map</a></li>
                    <li><a href="lostfound.html"><i class="fa fa-location-arrow"></i> Lost &amp; Found</a></li>
                    <li class="active"><a href="#"><i class="fa fa-medkit"></i> Relief Help</a></li>
                    <li ><a href="#"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> About</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                         role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                         Menu <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Recents Earthquake</a></li>
                            <li><a href="#">Eathquake Facts</a></li>
                            <li><a href="#">Your Experience</a></li>
                            <li><a href="#">How to Survive an Earthquake</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Specials</li>
                            <li><a href="#">Donate</a></li>
                            <li><a href="#">Seek Help</a></li>
                        </ul>
                    </li>
                    <li><a href="contactus.html"><i class="fa fa-envelope-o"></i> Contact</a></li>
                </ul>

            </div>
        </div>
    </nav>  
    <header class="jumbotron">

        <!-- Main component for a primary marketing message or call to action -->

        <div class="container">
            <div class="row row-header">
                <div class="col-xs-12 col-sm-10">
                    <h1>Earthquake Aftermath</h1>
                </div>
            </div>
        </div>
    </header>
    <nav class="navbar navbar-inverse navi" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbari" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div id="navbari" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html"><i class="fa fa-binoculars"></i> Seek Help</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bullhorn" aria-hidden="true"></span> Have Some Info</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-hand-up" aria-hidden="true"></span> Volunteer</a></li>
                    <li class="donatetitle"><a href="aboutus.html"><i class="fa fa-inr"></i> Donate</a></li>
                </ul>
            </div>
         </div>
    </nav>


    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-10">
                <div class="row">
                    <div class="col-xs-12">
                        <ol class="breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                </li>
                                <li>
                                    <a href="indexadmin.html">Edit</a>
                                </li>
                                <li class="active">Feedback
                                </li>
                        </ol>
                    </div>
                     <div class="col-xs-12">
                        <h3>Feedbacks and Comments</h3>
                            <hr>
                    </div>
                 </div>
        
            

        <div id="food_distribution" class="row row-content">
            <div class="col-xs-12">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>
                                Name
                            </th>
                            <th>
                                Contact No:
                            </th>
                            <th>
                                Email
                            </th>
                            <th>
                                Feedback
                            </th>
                            <% while(rs1.next()){ %>
            <TR>
                <TD> <%= rs1.getString("firstname")+" "+rs1.getString("lastname") %></td>
                <TD> <%= rs1.getString("contact")%></TD>
               <TD> <%= rs1.getString("email") %></TD>
               <TD> <%= rs1.getString("feed") %></TD>
            </TR>
            <%  } %>
                    </table>
                </div>
            </div>
        </div>
         
        </div>
    </div>
</div>        
    



    <footer class="row-footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-5 col-xs-offset-1 col-sm-2 col-sm-offset-1">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col-xs-6 col-sm-5">
                    <h5>Our Address</h5>
                    <address>
		              221B, Baker Street<br>
		              Clear Water Bay, Waston<br>
		              London<br>
		              <i class="fa fa-phone"></i>: +91 1234 5678<br>
		              <i class="fa fa-fax"></i>: +91 8765 4321<br>
		               <i class="fa fa-envelope"></i><a href="mailto:earthquakes.aftermath.help@gmail.com">earthquakes.aftermath.help@gmail.com</a>
		           </address>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="nav navbar-nav" style="padding: 40px 10px;">
						<a class="donatetitle" href="https://pages.giveforward.com/emergency/page-rkfm575/"><i class="fa fa-inr"></i></a>
                        <a class="btn btn-social-icon btn-google-plus" href="https://plus.google.com/u/1/109598616715036420262?hl=en"><i class="fa fa-google-plus"></i></a>
                        <a  class="btn btn-social-icon btn-facebook" href="https://www.facebook.com/earthquakeafters/"><i class="fa fa-facebook"></i></a>
                        <a class="btn btn-social-icon btn-twitter" href="https://twitter.com/earthquake_help"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-social-icon btn-youtube" href="https://www.youtube.com/channel/UCsLEORaYAi9eZVCGtQSVV_g"><i class="fa fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col-xs-12">
                    <p style="padding:10px;"></p>
                    <p align=center>© Copyright 2015 Earthquake Aftermath</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script>
    var jumboHeight = $('.jumbotron').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});</script>

    <script src="js/bootstrap.min.js"></script>
</body>

</html>