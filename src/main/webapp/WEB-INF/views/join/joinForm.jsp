<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>회원가입</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="/join/css/style.css" rel="stylesheet">

</head>
<body class="img js-fullheight"
	style="background-image: url(/join/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5"></div>
			</div>
			<div class="row justify-content-center" class=>
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<a href="index"> <img src="/img/h1_logo_mo.png"
							class="login_logo">
						</a>
						<form action="/join/join" method="post" class="signin-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username"
								name="username"
									required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" class="form-control"
									placeholder="Password" name="password" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Email"
								name="email"
									required>
							</div>
							<div class="form-group">
								<div class="form-group">
								 <input type="text" class="form-control"	
										placeholder="Address" name="address" id="address"
										readonly="readonly">
								</div>
								<button type="button" onClick="goPopup();"
									class="form-control btn btn-address submit p-3">주소찾기</button>
							</div>
							<div>
								<button type="submit"
									class="form-control btn btn-primary submit px-3">가입하기</button>
							</div>

							<div class="form-group d-md-flex">
								<div class="w-50"></div>
							</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<script>

function goPopup(){
	var pop = window.open("/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
}
function jusoCallBack(roadFullAddr){
	let addressEL = document.querySelector("#address");
	addressEL.value = roadFullAddr; // 값을 address 폼에 넣는 코드
	console.log(addressEL);
		
}


</script>
	<script src="/join/js/jquery.min.js"></script>
	<script src="/join/js/popper.js"></script>
	<script src="/join/js/bootstrap.min.js"></script>
	<script src="/join/js/main.js"></script>

</body>
</html>