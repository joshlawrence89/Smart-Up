<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Aviato E-Commerce Template">
  
  <meta name="author" content="Themefisher.com">

  <title>New Pledge</title>

  <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="static/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="static/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Revolution Slider -->
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/navigation.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat+Subrayada&display=swap" rel="stylesheet">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="static/css/style.css">

</head>

<body id="body">

<!-- Start Top Header Bar -->
<section class="top-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4">
	
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="index.html">
						<!-- replace logo here -->
						<svg width="200px" height="90px" viewBox="0 0 220 115" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40" font-family="Montserrat Subrayada" font-weight="bold">
						        <g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="108.94" y="325"> Smart-Up </tspan>
						            </text>
						        </g>
						    </g>
						</svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
			
			</div>
		</div>
	</div>
</section><!-- End Top Header Bar -->
			
<jsp:include page="header.jsp" />

<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">Pledge</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">pledge</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>
	          
	<section class="pricing-table">
		<div class="container">
			<div class="row">
				<!-- single pricing table -->
				<div class="col-md-4 col-sm-6 col-xs-12" >
					<div class="pricing-item">
						
						<!-- plan name & value -->
						<div class="price-title">
							<h3>Basic</h3>
							<strong class="value">$99</strong>
							<p>Perfect for single freelancers who work by themselves</p>
						</div>
						<!-- /plan name & value -->
						
						<!-- plan description -->
						<ul>
							<li><i class="tf-ios-arrow-forward"></i> 1GB Disk Space</li>
							<li><i class="tf-ios-arrow-forward"></i> 10 Email Account</li>
							<li><i class="tf-ios-arrow-forward"></i> Script Installer</li>
							<li><i class="tf-ios-arrow-forward"></i> 1 GB Storage</li>
							<li><i class="tf-ios-arrow-forward"></i> 10 GB Bandwidth</li>
							<li><i class="tf-ios-arrow-forward"></i> 24/7 Tech Support</li>
						</ul>
						<!-- /plan description -->
						
						<!-- signup button -->
						<a class="btn btn-main" href="#">Pledge</a>
						<!-- /signup button -->
						
					</div>
				</div>
				<!-- end single pricing table -->
				
				<!-- single pricing table -->
				<div class="col-md-4 col-sm-6 col-xs-12  "  >
					<div class="pricing-item">
					
						<!-- plan name & value -->
						<div class="price-title">
							<h3>Basic</h3>
							<strong class="value">$99</strong>
							<p>Suitable for small businesses with up to 5 employees</p>
						</div>
						<!-- /plan name & value -->
						
						<!-- plan description -->
						<ul>
							<li><i class="tf-ios-arrow-forward"></i> 1GB Disk Space</li>
							<li><i class="tf-ios-arrow-forward"></i> 10 Email Account</li>
							<li><i class="tf-ios-arrow-forward"></i> Script Installer</li>
							<li><i class="tf-ios-arrow-forward"></i> 1 GB Storage</li>
							<li><i class="tf-ios-arrow-forward"></i> 10 GB Bandwidth</li>
							<li><i class="tf-ios-arrow-forward"></i> 24/7 Tech Support</li>
						</ul>
						<!-- /plan description -->
						
						<!-- signup button -->
						<a class="btn btn-main" href="#">Pledge</a>
						<!-- /signup button -->
						
					</div>
				</div>
				<!-- end single pricing table -->
				
				<!-- single pricing table -->
				<div class="col-md-4 col-sm-6 col-xs-12 ">
					<div class="pricing-item">
						
						<!-- plan name & value -->
						<div class="price-title">
							<h3>Basic</h3>
							<strong class="value">$99</strong>
							<p>Great for large businesses with more than 5 employees</p>
						</div>
						<!-- /plan name & value -->
						
						<!-- plan description -->
						<ul>
							<li><i class="tf-ios-arrow-forward"></i> 1GB Disk Space</li>
							<li><i class="tf-ios-arrow-forward"></i> 10 Email Account</li>
							<li><i class="tf-ios-arrow-forward"></i> Script Installer</li>
							<li><i class="tf-ios-arrow-forward"></i> 1 GB Storage</li>
							<li><i class="tf-ios-arrow-forward"></i> 10 GB Bandwidth</li>
							<li><i class="tf-ios-arrow-forward"></i> 24/7 Tech Support</li>
						</ul>
						<!-- /plan description -->
						
						<!-- signup button -->
						<a class="btn btn-main" href="#">Pledge</a>
						<!-- /signup button -->
						
					</div>
				</div>
				<!-- end single pricing table -->
				
				
			</div>       <!-- End row -->
		</div>   	<!-- End container -->
	</section>   <!-- End section -->

<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li>
						<a href="">
							<i class="tf-ion-social-facebook"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-instagram"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-twitter"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-pinterest"></i>
						</a>
					</li>
				</ul>
				<ul class="footer-menu">
					<li>
						<a href="">CONTACT</a>
					</li>
					<li>
						<a href="">SHIPPING</a>
					</li>
					<li>
						<a href="">TERMS OF SERVICE</a>
					</li>
					<li>
						<a href="">PRIVACY POLICY</a>
					</li>
				</ul>
				<p class="copyright-text">Powered by Bootstrap</p>
			</div>
		</div>
	</div>
</footer>

    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="static/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="static/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="static/plugins/instafeed-js/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="static/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="static/plugins/SyoTimer/build/jquery.syotimer.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/assets/warning.js"></script>  



    <!-- Google Mapl -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script type="text/javascript" src="static/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="static/js/script.js"></script>
    


  </body>
  </html>