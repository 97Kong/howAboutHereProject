<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>


<main id="main">
	<!-- ======= Portfolio Details Section ======= -->
	<section id="portfolio-details" class="portfolio-details" style="height: 660px; margin-left: 60px;">
		<div class="container">
			<div class="row" style="width: 800px; height: 800px;">
				<div class="col-lg-8">
					<div class="owl-carousel portfolio-details-carousel">
						<img src="/img/aqua123.jpg" class="img-fluid" alt=""
							style="background-size: cover;"> <img
							src="/img/aqua124.jpg" class="img-fluid" alt=""
							style="background-size: cover;"> <img
							src="/img/aqua125.jpg" class="img-fluid" alt=""
							style="background-size: cover;">
					</div>
				
      					
				</div>
				<div class="col-lg-4 portfolio-info">
					<h3>
						<strong>아쿠아펠리스호텔</strong>
					</h3>
					<ul>
						<li><strong>위치</strong>: 부산시 수영구</li>
						<li><strong>성급</strong>: ★★★</li>
					</ul>
					<br>
					<div class="text-box-detail"
						style="background-color: #fffff3; width: 500px; height: 200px;">
						<br>
						<p>
							<strong style="margin-left: 10%;">사장님의 한마디</strong>
						</p>
						<p style="margin-left: 10%; color: #808080;">아름다운 광안대교가 보이는
							아쿠아펠리스호텔로 오세용~!!@~!@!~</p>
					</div>
						 <form>
				 	 
				 		<label for="party"><p style="font-size: 30px; color: black;">예약 날짜</p>
      					<p><input type="date" value="" required></p>
      					</label>
      					
   				 </form>
				</div>
			</div>
		</div>
	</section>
	<!-- End Portfolio Details Section -->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<a href="#">
						<div class="card h-100" style="border: 1px solid #808080;">
							<!-- Product image-->
							<img class="card-img-top" src="/img/aquaRoom1.jpg" alt="..."
								style="border: 1px solid #808080;" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center" style="color: black;">
									<!-- Product name-->
									<h5 class="fw-bolder">4인실</h5>
									<!-- Product price-->
									150,000원 ~ 200,000원
									<a href="test2">
									<button style="background-color:#f3230f; color: white; margin-top: 10%;">예약하기</button>
									</a>
								</div>
							</div>
							<!-- Product actions-->
						</div>
					</a>
				</div>

				<div class="col mb-5">
					<a href="#">
						<div class="card h-100" style="border: 1px solid #808080;">
							<!-- Product image-->
							<img class="card-img-top" src="/img/aquaRoom1.jpg" alt="..."
								style="border: 1px solid #808080;" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center" style="color: black;">
									<!-- Product name-->
									<h5 class="fw-bolder">2인실</h5>
									<!-- Product price-->
									100,000원 ~ 150,000원
									<button style="background-color:#f3230f; color: white; margin-top: 10%;">예약하기</button>
								</div>
							</div>
							<!-- Product actions-->
						</div>
					</a>
				</div>
				<div class="col mb-5">
					<a href="#">
						<div class="card h-100" style="border: 1px solid #808080;">
							<!-- Product image-->
							<img class="card-img-top" src="/img/aquaRoom1.jpg" alt="..."
								style="border: 1px solid #808080;" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center" style="color: black;">
									<!-- Product name-->
									<h5 class="fw-bolder">8인실</h5>
									<!-- Product price-->
									400,000원 ~ 500,000원
									<button style="background-color:#f3230f; color: white; margin-top: 10%;">예약하기</button>
								</div>
							</div>
							<!-- Product actions-->
						</div>
					</a>
				</div>
				<div class="col mb-5">
					<a href="#">
						<div class="card h-100" style="border: 1px solid #808080;">
							<!-- Product image-->
							<img class="card-img-top" src="/img/aquaRoom1.jpg" alt="..."
								style="border: 1px solid #808080;" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center" style="color: black;">
									<!-- Product name-->
									<h5 class="fw-bolder">128인실</h5>
									<!-- Product price-->
									5,200,00원 ~ 5,300,00원
									<button style="background-color:#f3230f; color: white; margin-top: 10%;">예약하기</button>
								</div>
							</div>
							<!-- Product actions-->
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	
	<div class="container" style="margin-top: 50px;">
		<form action="/post" method="post">
			<h3>후기 작성</h3>

			<img src="img/ico_24.jpg" style="height: 150px;" alt="">
			<div class="form-group">
				<label for="Username">Title:</label> <input type="text"
					class="form-control" placeholder="Enter title" name="title"
					required="required" />
			</div>
			<div class="form-group">
				<textarea id="summernote" rows="10" class="form-control"
					name="content"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">글쓰기 완료</button>
		</form>
	</div>
	<script>
		$('#summernote').summernote({
			placeholder : 'Hello Bootstrap 4',
			tabsize : 2,
			height : 300
		});
	</script>
</main>
<!-- End #main -->
<%@ include file="layout/footer.jsp"%>