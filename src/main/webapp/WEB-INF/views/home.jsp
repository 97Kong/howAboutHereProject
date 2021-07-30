<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="layout/header.jsp"%>
<!-- ======= Hero Section ======= -->
<section id="hero">
	<div class="hero-container">
		<h1>당신의 최고의 밤을 책임지겠습니다</h1>
		<h2>대한민국 초특가 유일 최초</h2>
		<!-- <a href="#" class="btn-get-started scrollto">추천숙소</a> -->
	</div>
</section>
<!-- End Hero -->
<main id="main">
	<!-- ======= Featured Section ======= -->
	<section id="featured" class="featured">
		<section id="featured" class="featured">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
						<div class="card">
							<img src="img/motel.jpg" class="card-img-top" alt="..." style="width: 270px; height: 220px; border: 1px solid #808080;">
							<div class="card-body">
								<h5 class="card-title">
									<a href="">모텔</a>
								</h5>
								<a href="/motelList" class="btn">더보기</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
						<div class="card">
							<img src="img/hotel.jpg" class="card-img-top" alt="..." style="width: 270px; height: 220px; border: 1px solid #808080;">
							<div class="card-body">
								<h5 class="card-title">
									<a href="">호텔</a>
								</h5>
								<a href="hotelList" class="btn">더보기</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
						<div class="card">
							<img src="img/리조트.jpg" class="card-img-top" alt="..." style="width: 270px; height: 220px; border: 1px solid #808080;">
							<div class="card-body">
								<h5 class="card-title">
									<a href="">리조트</a>
								</h5>
								<a href="resortList" class="btn">더보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="recommend">
				<h2 style="margin-top: 150px;">
					<strong>여기어때 소식</strong>
				</h2>
				<ul>
					<li style="border: 1px solid #ece6cc;"><a href="https://www.goodchoice.kr/b2b/intro" target="_blank"><img src="img/banner1.png" alt="여기어때 비즈니스" style="width: 165px; height: 150px;"><strong
							style="color: black; margin-left: 90px;">여기어때 비즈니스 출장부터 복지까지 여기어때 비즈니스로 스마트하게</strong> </a></li>
					<br>
					<li style="border: 1px solid #ece6cc;"><a href="https://www.goodchoice.kr/font" target="_blank"><img src="img/banner2.png " alt="여기어때 잘난체"><strong
							style="color: black; margin-left: 90px;">여기어때 서체 출시 젊고 당당한 여기어때 잘난체 지금 다운로드 받으세요!</a></li>
				</ul>
			</div>
			</div>
		</section>
		<!-- End Featured Section -->
</main>
<!-- End #main -->
<%@ include file="layout/footer.jsp"%>
