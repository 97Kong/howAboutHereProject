<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<main id="main">
	<div class="containerBox">


		<div class="filter_wrap" style="float: left; margin-left: 400px; background-color: #ddf1fb;  border: 1px solid #808080; ">
			<!-- <div class="fix_title">
          상세조건<button type="button">닫기</button>
        </div> -->
			<!-- <section class="date_wrap">
          <h3>날짜</h3>
          <div class="btn_date"><span class="date_view"><b>7.27 ~ 7.28</b><em>&nbsp;·&nbsp;1박</em></span></div>
        </section> -->
			<h4 style="margin-left: 20px; margin-top: 20px;">상세조건</h4>
			<div class="btn_wrap" style="margin-left: 3px; float: left;">
				<!-- <button type="button" onclick="window.location.href='https://www.goodchoice.kr/product/result?sel_date=2021-07-27&amp;sel_date2=2021-07-28&amp;keyword=%EC%95%84%EC%BF%A0%EC%95%84%ED%8E%A0%EB%A6%AC%EC%8A%A4'">초기화</button> -->
				<button type="submit" style="margin-left: 20px; color: #012305; background-color: #FFFFFF; width: 110px; height: 40px; border-radius: 8px;float: left;">초기화</button>
				<button type="submit" style="margin-left: 10px; color: #FFFFFF; background-color: #012305; width: 110px; height: 40px; border-radius: 8px;float: left;">적용</button>
			</div>
			
			<section style="margin-left: 20px;">
			<hr  color="#000000">
				<strong>성급</strong>
				<ul>
					<li><input type="checkbox" id="adcno_0" name="adcno[]" class="inp_chk" value="1"> <label for="adcno_0" class="label_chk">★</label></li>
					<li><input type="checkbox" id="adcno_1" name="adcno[]" class="inp_chk" value="2"> <label for="adcno_1" class="label_chk">★★</label></li>
					<li><input type="checkbox" id="adcno_2" name="adcno[]" class="inp_chk" value="4"> <label for="adcno_2" class="label_chk">★★★</label></li>
					<li><input type="checkbox" id="adcno_3" name="adcno[]" class="inp_chk" value="7"> <label for="adcno_3" class="label_chk">★★★★</label></li>
					<li><input type="checkbox" id="adcno_4" name="adcno[]" class="inp_chk" value="3"> <label for="adcno_4" class="label_chk">★★★★★</label></li>
				</ul>
				<hr  color="#000000">
			</section>
			<section>
				<strong> <span> <label for="amount"></label> <!-- <input type="text" id="amount" class="price_val" readonly=""> --> <input type="hidden" id="min_price" name="min_price" value="">
						<input type="hidden" id="max_price" name="max_price" value="">
				</span>
				</strong>
				<div class="slider_wrap">
					<div id="slider" class="slider_align ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="1" data-max="30">
						<div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div>
						<span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;">
						</span>
					</div>
					<span class="price_txt"></span> <span class="price_txt"></span>
				</div>
			</section>
		</div>

	
		<div class="container" style="padding: 20px; margin-left: 800px; margin-top: 130px;">
				<div class="button" style="margin-bottom: 20px;margin-left: 560px"><a href="/master/hotel-write"><button>숙소등록</button></div></a>
			<a href="/detail">
				<div class="card" style="width: 650px; height: 300px; background-image: url(/img/aquahotel4.jpg); background-size: cover; border: 2px solid #808080;">
					<div class="card-body" style="color: black; width: 650px; height: 300px; margin: auto;">
						<h2 style="margin-left: 15px;">아쿠아펠리스호텔</h2>
						<h4>&nbsp &nbsp &nbsp ★★★ / 부산 수영구</h4>
					</div>
				</div>
			</a>
			<a href="/master/detailModify"><button>수정</button></a><button>삭제</button>
		</div>
</main>
<!-- End #main -->
<%@ include file="../layout/footer.jsp"%>