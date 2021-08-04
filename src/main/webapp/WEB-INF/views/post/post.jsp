<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<%@ include file="../layout/header.jsp"%>

<div>
<button type="button" style="margin-top: 20px; float: right; margin-right: 100px;"><a href="/savePost">문의하기</button>
</div>
<br>
<div class="container">


	<c:forEach var="post" items="${postsEntity}"> <!-- items = for each문으로 바뀐다고 생각 var = post는 페이지스코프에 담김-->
		<!-- var은 페이지스코프에들어감 -->

		<div class="card" style="margin-top: 40px;">
			<!-- Block : 넓이 끝가지 , inline : 넓이끝까지 안감. -->
			<div class="card-body">
				<h4 class="card-title">${post.title}</h4>
				<a href="/post/${post.id}" class="btn btn-primary">상세보기</a>
			</div>
		</div>
		<br/>
		<!-- End of Card -->
	</c:forEach>
					

</div>
<!-- End Of Container -->

</html>