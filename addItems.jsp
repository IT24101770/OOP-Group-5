<%--
  Created by IntelliJ IDEA.
  User: P
  Date: 2025-05-17
  Time: 2:29 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="AOC - Onepage Responsive Html Template" />
    <meta name="author" content="desideals4u.com" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>AOC | Computer Spare Parts</title>

    <!-- Bootstrap -->
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
    <!-- Master Css -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/color.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">

</head>
<body id = "topbody">

<%
    if(session == null){
        response.sendRedirect("login_reg.jsp");
    }
%>


<!--//================Header start==============//-->
<header id="header">
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 left">
                    <ul>
                        <li><a><i class="fa fa-phone"></i> 0777723123 </a></li>
                        <li class="envolop"><a href="#"><i class="fa fa-envelope-open" aria-hidden="true"></i> 5Gstore@gmail.com</a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 right">
                    <ul>
                        <li>Follow us :</li>
                        <li><a href="#" target="_blank"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="main-menu" class="wa-main-menu sticky-nav">
        <!-- Menu -->
        <div class="wathemes-menu relative">
            <!-- navbar -->
            <div class="navbar navbar-default mar0" role="navigation">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 head-box">
                            <div class="navbar-header">

                                <!-- Logo -->
                                <a class="navbar-brand" href="index.html">
                                    <img class="site_logo" alt="Site Logo"  src="assets/img/logo.png" />
                                </a>
                            </div>
                            <!-- Navbar Collapse -->
                            <div class="navbar-collapse collapse">
                                <!-- nav -->
                                <ul class="nav navbar-nav">
                                    <li><a href="#topbody">Home</a></li>
                                    <li><a href="#about_us">Product & Services</a></li>
                                    <li><a href="#our_blog">About</a></li>
                                    <li><a href="#contact_us">Contact</a></li>
                                </ul>
                                <a  href="#popup1" class="serach-footer hidden-xs"><i class="fa fa-search" aria-hidden="true"></i></a>
                                <div id="popup1" class="overlay">
                                    <div class="search-section">
                                        <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">
                                            <div class="popup">
                                                <div class="search-header">
                                                    <h4>search section</h4>
                                                    <a class="close" href="#">&times;</a>
                                                </div>
                                                <div class="content-search">
                                                    <form class="form-inline">
                                                        <div class="col-sm-8 col-xs-8 form-group top_search" style="padding-right:0px;">
                                                            <div class="row">
                                                                <label class="sr-only" for="search">Search here...</label>
                                                                <span class="serach-bottom"><i class="fa fa-search"></i></span>
                                                                <input type="text" class="form-control search-wrap" id="search" placeholder="Search here...">
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-4 col-xs-4 form-group top_search" style="padding-left:0px;">
                                                                <button class="btn btn-default search-btn">SEARCH</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- navbar-collapse -->
                        </div>
                        <!-- col-md-12 -->
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
            <!-- navbar -->
        </div>
        <!--  Menu -->
    </div>
</header>
<!--//================Header end==============//-->





<section id="main-sec2">




    <form action="addItemServlet" method="POST">

        <h4>Add New Item</h4>
        <p>Enter new items for the customer to buy those things.</p><br>

        <input type="text" placeholder="Product Id" name="pid" class="pname" required>
        <input type="text" placeholder="Product Name  " name="pname" class="pname" required>
        <select name="ptype" class="ptype"required>
            <option value="Desktop Casings">Desktop Casings</option>
            <option value="Cooling Fans">Cooling Fans</option>
            <option value="Motherboards">Motherboards</option>
            <option value="HeatSinks">HeatSinks</option>
        </select>
        <input type="text" placeholder="Quantity" name="quantity" class="pname" required>
        <input type="text" placeholder="Price" name="price" class="pname" required>
        <textarea type="text" placeholder="Description" name="des" class="area" required></textarea><br><br><br>


        <input type = "submit" value = "Add">
    </form>


</section>









<!--//================Footer Section Start==============//-->
<footer>
    <div class="top-footer padTB100">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12 margin-small">
                    <div class="widget">
                        <a href="index.html" class="logo">
                            <img src="assets/img/foot-logo.png" alt="LOGO"/>
                        </a>
                        <p>The largest online computer spare parts delivering and repairing shop.Trust our service we are the better.</p>
                        <ul class="social-icon-footer circle box">
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                        </ul>
                        <p>&copy; 2019 - All Rights Reserved AOC</p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 col-xs-12 margin-small">
                    <div class="widget information">
                        <h4>Information</h4>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Customer Service</a></li>
                            <li><a href="#">Service areas</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Team</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 col-xs-12 margin-small">
                    <div class="widget information">
                        <h4>services</h4>
                        <ul>
                            <li><a href="#">Repairing</a></li>
                            <li><a href="#">Customer</a></li>
                            <li><a href="#">Employee</a></li>

                            <li><a href="#">about</a></li>
                            <li><a href="#">contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 margin-small">
                    <div class="widget">
                        <h4>Gallery</h4>
                        <ul class="gallery">
                            <li><img src="assets/img/all/foot-gallery-1.jpg" alt=""></li>
                            <li><img src="assets/img/all/foot-gallery-2.jpg" alt=""></li>
                            <li><img src="assets/img/all/foot-gallery-3.jpg" alt=""></li>
                            <li><img src="assets/img/all/foot-gallery-4.jpg" alt=""></li>
                            <li><img src="assets/img/all/foot-gallery-5.jpg" alt=""></li>
                        </ul>
                        <ul class="contact-footer">
                            <li><a href=""><i class="fa fa-envelope-o" aria-hidden="true"></i>hello@gmail.com</a></li>
                            <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i>0777723123</a></li>
                            <li><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i>3 ,Stanley Road,Jaffna, Sri Lanka</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--//================Footer Section End==============//-->


</body>
</html>
