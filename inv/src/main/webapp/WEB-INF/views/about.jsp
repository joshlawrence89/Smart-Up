<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="#">
<meta name="author" content="#">

<title>About</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="static/static/images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="static/plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="static/plugins/bootstrap/css/bootstrap.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="static/plugins/revolution-slider/revolution/css/navigation.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat+Subrayada&display=swap" rel="stylesheet">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="static/css/style.css">

</head>

<body id="body">
	<!-- Start Top Header Bar -->
	<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4"></div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Site Logo -->
					<div class="logo text-center">
						<a href="index.html"> <!-- replace logo here --> <svg
								width="200px" height="90px" viewBox="0 0 220 115" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="Montserrat Subrayada" font-weight="bold">
						        <g id="Group"
									transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="108.94" y="325"> Smart-Up </tspan>
						            </text>
						        </g>
						    </g>
						</svg>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Top Header Bar -->
	<jsp:include page="header.jsp" />

	<!-- Main Menu Section -->

	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">About Us</h1>
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="active">About</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="about section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img class="img-responsive" src="static/images/about/about.jpg">
				</div>
				<div class="col-md-6">
					<h2 class="mt-40">About Us</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Eius enim, accusantium repellat ex autem numquam iure officiis
						facere vitae itaque.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Nam qui vel cupiditate exercitationem, ea fuga est velit nulla
						culpa modi quis iste tempora non, suscipit repellendus labore
						voluptatem dicta amet?</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Nam qui vel cupiditate exercitationem, ea fuga est velit nulla
						culpa modi quis iste tempora non, suscipit repellendus labore
						voluptatem dicta amet?</p>
					<a href="#" class="btn btn-main mt-20">Download Company Profile</a>
				</div>
			</div>
			<div class="row mt-40">
				<div class="col-md-3 text-center">
					<img src="static/images/about/awards-logo.png">
				</div>
				<div class="col-md-3 text-center">
					<img src="static/images/about/awards-logo.png">
				</div>
				<div class="col-md-3 text-center">
					<img src="static/images/about/awards-logo.png">
				</div>
				<div class="col-md-3 text-center">
					<img src="static/images/about/awards-logo.png">
				</div>
			</div>
		</div>
	</section>

	<section class="team-members ">
		<div class="container">
			<div class="row">
				<div class="title">
					<h2>Team Members</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="team-member text-center">
						<img class="img-circle" src="static/images/team/team-1.jpg">
						<h4>Josh Lawrence</h4>
						<p>Founder</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="team-member text-center">
						<img class="img-circle" src="static/images/team/team-2.jpg">
						<h4>Josh Lawrence</h4>
						<p>Developer</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="team-member text-center">
						<img class="img-circle" src="static/images/team/team-3.jpg">
						<h4>Josh Lawrence</h4>
						<p>Shop Manager</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="team-member text-center">
						<img class="img-circle" src="static/images/team/team-1.jpg">
						<h4>Josh Lawrence</h4>
						<p>Shop Manager</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div
		class="section video-testimonial bg-1 overly-white text-center mt-50">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Video presentation</h2>
					<a class="play-icon"
						href="https://www.youtube.com/watch?v=oyEuk8j8imI&amp;rel=0"
						data-toggle="lightbox"> <i class="tf-ion-ios-play"></i>
					</a>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href="#"> <i class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href="#"> <i class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href="#"> <i class="tf-ion-social-twitter"></i>
						</a></li>
						<li><a href="#"> <i class="tf-ion-social-pinterest"></i>
						</a></li>
					</ul>
					<ul class="footer-menu">
						<li><a href="#">CONTACT</a></li>
						<li><a href="#">CAREERS</a></li>
						<li><a href="#">TERMS OF SERVICE</a></li>
						<li><a href="#">PRIVACY POLICY</a></li>
					</ul>
					<p class="copyright-text">Powered by Bootstrap</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>