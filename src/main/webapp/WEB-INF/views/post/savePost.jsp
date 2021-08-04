<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<body>
	<div class="container" style="margin-top: 50px;">
		<form action="/post/post" method="post">
		<h3>후기 작성</h3>
		
		<img src="img/ico_24.jpg" style="height: 150px;" alt="">
			<div class="form-group">
				<label for="Username">Title:</label> <input type="text" class="form-control" placeholder="Enter title" name="title" required="required" />
			</div>
			<div class="form-group">
				<textarea id="summernote" rows="10" class="form-control" name="content"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">글쓰기 완료</button>
		</form>
	</div>
	<script>
    $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 300
      });
      </script>
	<%@ include file="../layout/footer.jsp"%>