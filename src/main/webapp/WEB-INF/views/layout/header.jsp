<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>여기어때</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="/img/favicon.png" rel="icon">
<link href="/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- CDN (content delevery network -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link href="/vendor/venobox/venobox.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Vlava - v2.2.1
  * Template URL: https://bootstrapmade.com/vlava-free-bootstrap-one-page-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="howHeader">
		<div class="container d-flex align-items-center">
			<div class="logo mr-auto">
				<a href="/home">
					<h1 class="text-light">
						<img src="/img/h1_logo_pc_w.png" class="testimonial-img" alt="">
					</h1>
				</a>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>
			<div class="subscribe-form">
				<form action="/list/searchList" method="get">
					<input type="text" name="searchKeyword"
						style="border: 2px solid #606060"/> 
						
					<button>	
						<img src="/img/ico_srch_2.png" class="btn_srch_open" style="right: 396px;">
					</button>

				</form>
			  

			</div>
			<nav class="nav-menu d-none d-lg-block">
				<ul>

					<c:choose>
						<c:when test="${empty sessionScope.principal}">
						<li><a href="login">로그인</a></li>
						<li><a href="reslist">예약내역</a></li>
						</c:when>
						<c:otherwise>
						<li><a href="/userUpdate">회원정보변경</a></li>
						<li><a href="#">예약내역</a></li>
						<li><a href="/post">문의사항</a></li>
						<li><a href="/user/logout">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			<!-- .nav-menu -->
		</div>
	</header>
	<!-- End Header -->