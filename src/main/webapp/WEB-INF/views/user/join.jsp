<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>회원가입</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
	
	<link  href="/join/css/style.css" rel="stylesheet">

	</head>
	<body class="img js-fullheight" style="background-image: url(/join/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				
				</div>
			</div>
			<div class="row justify-content-center" class=>
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		     	<a href="home">
						<img  src="/img/h1_logo_mo.png" class="login_logo">
					</a>
		      	<form action="#" class="signin-form">
		      		<div class="form-group">
		      			<input type="text" class="form-control" placeholder="Username" required>
		      		</div>
	            <div class="form-group">
	              <input id="password-field" type="password" class="form-control" placeholder="Password" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
							<div class="form-group">
		      			<input type="text" class="form-control" placeholder="Email" required>
		      		</div>
	            <div class="form-group">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Address" required>
								</div>
	            	<button type="submit" class="form-control btn btn-address submit p-3">주소찾기</button>
	            </div>
								</div>
	            	<button type="submit" class="form-control btn btn-primary submit px-3">가입하기</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
								</div>
								
	            </div>
	          </form>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="/join/js/jquery.min.js"></script>
  <script src="/join/js/popper.js"></script>
  <script src="/join/js/bootstrap.min.js"></script>
  <script src="/join/js/main.js"></script>

	</body>
</html>