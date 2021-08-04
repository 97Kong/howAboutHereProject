<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main id="main">

	<!-- 카테고리 선택란 -->
	<div class="checkBoxBox">
		<div class="form-check-inline">
			<label>
				<input type="checkbox" value="">모텔
			</label>
		</div>

		<div class="form-check-inline">
			<label>
				<input type="checkbox" value="">호텔
			</label>
		</div>

		<div class="form-check-inline">
			<label>
				<input type="checkbox" value="">리조트
			</label>
		</div>
	</div>

	<!-- 호텔 입력란 --->
	<div id="detailBox">
		<div>
			<label>호텔명:</label>
			<input type="text" id="">
		</div>
		<div>
			<label>호텔성급:			
					<select id="">
						<option>★</option>
						<option>★★</option>
						<option>★★★</option>
						<option>★★★★</option>
						<option>★★★★★</option>
					</select>
			</label>
		</div>

		<div>
			<label>위치:</label>
			<input type="text" id="">
		</div>
		<div>
			<label>사진:</label>
			<input type="text" id="">
		</div>
		<div>
			<label>홍보용글:</label>
			<textarea class="form-control" rows="5" id="comment"></textarea>
		</div>
	</div>

	<button>저장</button>
</main>
<!-- End #main -->
<%@ include file="../layout/footer.jsp"%>