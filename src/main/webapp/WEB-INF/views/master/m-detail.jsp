<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main id="main">

	<!-- 카테고리 선택란 -->
	<div class="checkBoxBox">
		<div class="form-check-inline"  style="padding:10px">
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
		<div  style="padding:10px">
			<label>호텔명:</label>
			<input type="text" id="">
		</div>
		<div  style="padding:10px">
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

		

	
	
		<div class="form-group"  style="padding:10px; margin-bottom:30px">
			<div class="form-group">
				<label>위치:</label>
					<input type="text" class="form-control"	
						placeholder="Address" name="address" id="address"
						readonly="readonly" style="width: 400px"/>
				</div>
			<button type="button" onClick="goPopup();" style="width: 150px; border: 2px solid black">주소찾기</button>
		</div>

		<div style="padding:10px">
			<label>사진:</label>
			<input type="text" id="">
		</div>
		<div style="padding:10px">
			<label>홍보용글:</label>
			<textarea class="form-control" rows="5" id="comment" style="width: 500px"></textarea>
		</div>
	</div>
	<button>저장</button>
</main>
<!-- End #main -->


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
<%@ include file="../layout/footer.jsp"%>