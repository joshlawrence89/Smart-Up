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
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="#">

<meta name="author" content="#">

<title>Edit Campaign</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

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

<!-- Main Stylesheet -->
<link rel="stylesheet" href="static/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat+Subrayada&display=swap" rel="stylesheet">

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
		</div>
	</div>
</section><!-- End Top Header Bar -->

<jsp:include page="header.jsp" />

<div class="container">
	    <div class="row">
	        <h1 style="text-align:center;">
	        	<span th:text="${editProject.descripction}"></span>
	        	<span th:text="${project.projectName}"></span>
	        </h1>
	        <div style="width: 30%; margin: 35px auto;">
	            <form action="#" th:action="@{/projects/} + ${projectId}" th:object="${project}" method="POST">
	                <div class="form-group">
	                    <input class="form-control" type="text" name="name" placeholder="name" th:field="*{name}"></input>
	                </div>
	                <div class="form-group">
	                    <input class="form-control" type="text" name="image" placeholder="image url" th:field="*{image}"></input>
	                </div>
	                <div class="form-group">
	                    <input class="form-control" type="text" name="description" placeholder="description" th:field="*{description}"></input>
	                </div>
	                <div class="form-group">
	                    <input class="form-control" type="text" name="targetAmount" placeholder="targetAmount" th:field="*{targetAmount}"></input>
	                </div>
	                <div class="form-group">
	                    <button class="btn btn-lg btn-primary btn-block" th:text="${button.submit}"></button>
	                </div>
	        </form>
	        <a href="/projects" th:text="${button.cancel}"></a>
	        </div>
	    </div>
	</div>

</body>
</html>