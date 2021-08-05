<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main id="main">


	<!-- 호텔 입력란 --->
	<div  style="padding:10px">
		<label>호수:</label>
		<input type="text" id="">
	</div>
	<div  style="padding:10px">
		<label>가격:</label>
		<input type="text" id="">
	</div>
	<div  style="padding:10px">
		<label>최대인원:			
				<select id="">
					<option>2명</option>
					<option>3명</option>
					<option>4명</option>
					<option>5명</option>
					<option>6명</option>
					<option>제한없음</option>
				</select>
		</label>
	</div>
	<div style="padding:10px">
		<label>사진(최대 3개):</label>
		<input type="file" id="">
	</div>
	<button>저장</button>
</main>
<!-- End #main -->



<%@ include file="../layout/footer.jsp"%>