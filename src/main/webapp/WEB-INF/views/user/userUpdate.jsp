<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<body>
	<div class="container" style="margin-top: 100px;">
		<!-- ﻿username=머시기&password=머시기&email=머시기&address=머시기 -->
		<h3>내 정보 수정</h3>
		<img src="/img/ico_23.png" style="height: 150px;" alt="">
		<form action="/user/${principal.id}" method="post">
			<div class="form-group">
				<label for="Username">Username:</label> <input value="${principal.username}" type="text" class="form-control" placeholder="Enter Username" readonly="readonly" />
			</div>
			<div class="form-group">
				<label for="Password">Password:</label> <input value="${principal.password}" type="password" class="form-control" placeholder="Enter password" name="password" required="required" />
			</div>
			<div class="form-group">
				<label for="Email">Email :</label> <input value="${principal.email}" type="email" class="form-control" placeholder="Enter email" readonly="readonly" />
			</div>

			<input class="btn btn-info" type="button" onClick="goPopup();" value="주소찾기" />
			<div class="form-group">
				<label for="Addr">Address :</label> <input value="${principal.address}" type="text" class="form-control" placeholder="Enter address" name="address" id="address" readonly="readonly" />
			</div>
			<button type="submit" class="btn btn-primary">회원수정</button>
		</form>
	</div>
	<%@ include file="layout/footer.jsp"%>