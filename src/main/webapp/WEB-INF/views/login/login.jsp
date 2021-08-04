<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
  <head>
  	<title>로그인</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	
	<link  href="/login/css/style.css" rel="stylesheet">

	</head>
	<body class="img js-fullheight" style="background-image: url(/login/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				
				</div>
			</div>
			<div class="row justify-content-center" class=>
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
					<a href="index">
						<img  src="/img/h1_logo_mo.png" class="login_logo">
					</a>
		      	
		      	<form action="login/login" method="post" class="signin-form">
		      		<div class="form-group">
		      			<input type="text" class="form-control" placeholder="Username" name="username" required>
		      		</div>
	            <div class="form-group">
	              <input id="password-field" type="password" class="form-control" placeholder="Password" name="password" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">로그인</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
								</div>
								
	            </div>
	          </form>
	          
	          <div class="social d-flex text-center">
	          	<a href="" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> 비밀번호재설정</a>
	          	<a href="/joinForm" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> 회원가입</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="/login/js/jquery.min.js"></script>
  <script src="/login/js/popper.js"></script>
  <script src="/login/js/bootstrap.min.js"></script>
  <script src="/login/js/main.js"></script>

	</body>
</html>
