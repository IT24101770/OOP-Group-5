<%--
  Created by IntelliJ IDEA.
  User: P
  Date: 2025-05-17
  Time: 2:44 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
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
<body id="topbody">



<!--//================Header start==============//-->
<header id="header">
  <div class="top-bar">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12 left">
          <ul>
            <li><a><i class="fa fa-phone"></i>0777723123</a></li>
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
                <!-- Button For Responsive toggle -->

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





<section class="payment-block">
  <div class="container">
    <div class="row">
      <div class="col-md-8 column">

        <form action="payment" method="POST" class="book-payment">
          <div class="billing-sec">
            <div class="row">
              <div class="col-md-12">
                <div class="field">
                  <br><br>
                  <h4>Enter Payment Details</h4>
                  <p>Pay with your Visa/Master card.</p><br>
                </div>
              </div>
              <div class="col-md-12">
                <div class="field">
                  <label>Name on the card<span>*</span></label>
                  <input type="text" name = "cardname">
                </div>
              </div>

              <div class="col-md-12">
                <div class="field">
                  <label>Card Number<span>*</span></label>
                  <input type="text"  name = "cardnumber">
                </div>
              </div>

              <div class="col-md-12">
                <div class="field">
                  <label>Card expiry date<span>*</span></label>
                  <input type="text" name = "month" placeholder = "month.."><br>
                  <input type = "text" name = "year" placeholder = "year.."><br>
                  <input type = "text" name = "cvc" placeholder = "CVC..">
                </div>
              </div>

              <div class="col-md-12">
                <div class="field">
                  <label>Your email address to send the invoice<span>*</span></label>
                  <input type="text"  name = "email">
                </div>
              </div>

              <div class="col-md-12">
                <div class="field">
                  <label>Contact number<span>*</span></label>
                  <input type="text"  name = "conNumber">
                </div>
              </div>

              <input type = "submit" Value = "Pay" class = "login-button">

            </div>
          </div>
        </form>
      </div>

    </div>
  </div>
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
              <li><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i>11 / 3 ,Stanley Road ,Jaffna, Sri Lanka</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<!--//================Footer Section End==============//-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugin/megamenu/js/hover-dropdown-menu.js"></script>
<script src="assets/plugin/megamenu/js/jquery.hover-dropdown-menu-addon.js"></script>
<script src="assets/plugin/owl-carousel/js/owl.carousel.min.js"></script>
<script src="assets/plugin/counter/js/jquery.countTo.js"></script>
<script src="assets/plugin/counter/js/jquery.appear.js"></script>
<script src="assets/plugin/fancyBox/js/jquery.fancybox.pack.js"></script>
<script src="assets/plugin/fancyBox/js/jquery.fancybox-media.js"></script>
<script src="assets/plugin/maps/js/jquery.mousewheel.min.js"></script>
<script src="assets/plugin/maps/js/raphael.min.js"></script>
<script src="assets/plugin/maps/js/jquery.mapael.min.js"></script>
<script src="assets/plugin/maps/js/world_countries.min.js"></script>
<script src="assets/plugin/maps/js/world_countries_mercator.min.js"></script>
<script src="assets/plugin/maps/js/world_countries_miller.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCB9P8720RmV-t4df_U1TxC-JJ_FKVcc6I"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
