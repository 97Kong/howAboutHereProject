<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body>

<body>
	<div class="container">
		<!-- block - 넓이의 끝까지 차지함 ,  inline - 머시고 -->

		<!--글쓰기 버튼 수정해야함~!!@~-->
		<a href="after_write">
			<button>글쓰기</button>
		</a>
			

		<c:forEach var="post" items="${postEntity}">
			<!-- var에 정리된 값은 페이지스코프에 들어간다 -->
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">${post.title}</h4>
					<a href="/post/${post.id}" class="btn btn-primary">상세보기</a>
				</div>
			</div>
			<br />
			<!-- End Of Card -->
		</c:forEach>


	
	</div>
	<!-- End Of Container -->

<%@ include file="../layout/footer.jsp"%>
</body>
</html>