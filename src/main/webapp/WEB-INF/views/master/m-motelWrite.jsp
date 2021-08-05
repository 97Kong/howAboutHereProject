<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main id="main">

	<!-- 숙박업소 입력란 --->
	<div  style="padding:10px">
		<label>모텔명:</label>
		<input type="text" id="">
	</div>


	<div id="detailBox">
	
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
			<input type="file" id="">
		</div>
		<div style="padding:10px">
			<label>홍보용글:</label>
			<textarea class="form-control" rows="5" id="comment" style="width: 500px"></textarea>
		</div>
		<div>
			
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