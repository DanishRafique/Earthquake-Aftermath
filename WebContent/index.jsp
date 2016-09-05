<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head 
         content must come *after* these tags -->
    <title>Earthquake Aftermath</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/mystyles.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap-social.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="img/redcrossapp.png" height=30 width=41></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i> Map</a></li>
                    <li><a href="#"><i class="fa fa-medkit"></i> Relief Help</a></li>
                    <li><a href="aboutus.html"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> About</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Menu <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Recents Earthquake</a></li>
                            <li><a href="#">Eathquake Facts</a></li>
                            <li><a href="#">Your Experience</a></li>
                            <li><a href="#">How to Survuve an Earthquake</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Specials</li>
                            <li><a href="#">Donate</a></li>
                            <li><a href="#">Seek Help</a></li>
                        </ul>
                    </li>

                    <li><a href="contactus.html"><i class="fa fa-envelope-o"></i> Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span>Login</a>
                    </li>
                </ul>
            </div>
         </div>
    </nav>

    <div id="loginModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Login</h4>
            </div>
            <div class="modal-body" style="display:inline;" >
                <form action="LoginServlet" class="form-inline" role="signin" method="POST">
                    <div class="form-group">
                        <label class="sr-only" for="email">Email address</label>
                        <input type="text" class="form-control input-sm" name ="email" placeholder="Email" style="margin-left:5px;">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="password">Password</label>
                        <input type="text" class="form-control input-sm" name="pwd" placeholder="Password">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Remember me
                        </label>
                    </div>
                    <span>
                    <button type="submit" class="btn btn-info btn-sm">Sign in</button>
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Cancel</button></span>
                </form>
            </div>
            </div>
        </div>
    </div>
    <div id="reserveModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Donate</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="Number of Guest" class="col-sm-2 control-label">Amount</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"><input type="radio" name="1">100</label>
                            <label class="radio-inline"><input type="radio" name="1">500</label>
                            <label class="radio-inline"><input type="radio" name="1">1000</label>
                            <label class="radio-inline"><input type="radio" name="1">5000</label>
                            <label class="radio-inline"><input type="radio" name="1">10000</label>
                            <label class="radio-inline"><input type="radio" name="1">50000</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Section" class="col-sm-2 control-label">Section</label>
                        <div class="col-sm-10">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-success active">
                                    <input type="radio" name="options" id="option1" autocomplete="off" checked> Internet Banking
                                </label>
                                <label class="btn btn-primary">
                                    <input type="radio" name="options" id="option2" autocomplete="off"> Paypal
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Date and Time" class="col-sm-2 control-label">Date and Time</label>
                        <div class="col-sm-3">
                            <input type="password" class="form-control" name="date" placeholder="Date" onfocus="(this.type='date')">
                            <span class="glyphicon glyphicon-calendar form-control-feedback" aria-hidden="true" style="margin-right:15px"></span>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="time" placeholder="Time" onfocus="(this.type='time')">
                            <span class="glyphicon glyphicon-time form-control-feedback" aria-hidden="true" style="margin-right:15px"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-warning">Donate</button>
                             <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="alert alert-warning alert-dismissible col-sm-10 col-sm-10-pull-2" role="alert" style="margin-left:20px;">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
                            </button>
                            <strong>Warning:</strong> Please <a href="tel:+85212345678" class="alert-link">call</a> us for any assistance.
                        </div>
                    </div>

                </form>
            </div>
            </div>
        </div>
    </div>


    <header class="jumbotron row-header" >

        <!-- Main component for a primary marketing message or call to action -->

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-8">
                    <h1>Earthquake Aftermath</h1>
                    <p style="padding:40px;"></p>
                    <p>Thangkhonao Gangte wasn't sure if he was awake when a magnitude-6.7 earthquake struck northeastern India on Monday morning."What is happening? Am I dreaming or is this real?" Gangte, who works for World Vision's HIV AIDS Project, asked himself.</p>
                </div>
                <div class="col-xs-12 col-sm-2">
                    <p style="padding:20px";></p>
                    <img src="img/redcrossapp.png" class="img-responsive">
                </div>
                <div class="col-xs-12 col-sm-2">
                    <p><p style="padding:40px;"></p><a class="btn btn-warning btn-block" href="#Reserve Table"  data-toggle="modal" data-target="#reserveModal">Donate</a></p>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="row row-content">
            <div class="col-xs-12">
                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="1" ></li>
                        <li data-target="#mycarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img class="img-responsive" src="img/earthquake.png" alt="Uthapizza">
                            <div class="carousel-caption">
                                <h2>North Korea Earthquake <span class="label label-danger label-xs">Latest</span> <span class="badge">Today</span></h2>
                                <p>North Korean TV says the country has conducted a hydrogen nuclear test: Report</p>
                                <p><a  href="#" class="btn btn-primary btn-xs">More &raquo;</a></p>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="img/manipur-earthquake.png" alt="Weekend Grand Buffer">
                            <div class="carousel-caption">
                                <h2>Manipur Earthquake <span class="label label-danger label-xs">National</span></h2>
                                <p>Manipur earthquake: 6 killed, 100 injured in pre-dawn tremor</p>
                                <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="img/oklahama-earthquake.png" alt="Alberto Somayya">
                            <div class="carousel-caption">
                                <h2 >Oklahama Misfortune <span class="label label-danger label-xs">Special</span></h2>
                                <p>What is causing Oklahoma's record earthquakes? </p>
                                <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div>
            <ol class="breadcrumb">
                <li class="active">Home</li>
            </ol>
        </div>


        <div class="row row-content">
        <div class="col-xs-12 col-sm-3 col-sm-push-9">
                
                <p style="padding:20px;"></p>
                <h3 align=center>Today's Report</h3>
        </div>
            <div class="col-xs-12 col-sm-9 col-sm-pull-3">
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img class="media-object img-thumbnail" src="img/earthquake.png" alt="Uthappizza">
                        </a>
                    </div>
                    <div class="media-body">
                    <h2 class="media-heading">North Korea Earthquake <span class="label label-danger label-xs">Latest</span> <span class="badge">Today</span></h2>
                    <p>North Korean TV says the country has conducted a hydrogen nuclear test: Report</p>
                    <p><a  href="#" class="btn btn-primary btn-xs">More &raquo;</a></p>
                    </div>
                </div>
            </div>
        </div>
        

        <div class="row row-content">
            <div class="col-xs-12 col-sm-3">
                <p style="padding:20px;"></p>
                <h3 align=center>Indian News</h3>
            </div>
            <div class="col-xs-12 col-sm-9">
                <div class="media">
                    
                    <div class="media-body">
                <h2 class="media-heading">Manipur Earthquake <span class="label label-danger label-xs">National</span></h2>
                <p>Manipur earthquake: 6 killed, 100 injured in pre-dawn tremor</p>
                <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
            </div>
            <div class="media-middle media-right">
                        <a href="#">
                            <img class="media-object img-thumbnail" src="img/manipur-earthquake.png" alt="Buffet">
                        </a>
                    </div>
        </div>
    </div>
</div>

        <div class="row row-content">
            <div class="col-xs-12 col-sm-3 col-sm-push-9">
                <p style="padding:20px;"></p>
                <h3 align=center>Inside Report</h3>
            </div>
            <div class="col-xs-12 col-sm-9 col-sm-pull-3">
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img class="media-object img-thumbnail" src="img/oklahama-earthquake.png" alt="Alberto Somayya">
                        </a>
                    </div>
                    <div class="media-body">
                <h2 class="media-heading">Oklahama Misfortune <span class="label label-danger label-xs">Special</span></h2>
                <p>What is causing Oklahoma's record earthquakes?</p>
                <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
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
                    <p align=center>� Copyright 2015 Earthquake Aftermath</p>
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