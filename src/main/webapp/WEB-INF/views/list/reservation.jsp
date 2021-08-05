<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<main id="main">
    <table class="table table-striped">
    <thead>
        <tr>
            <th><h4><strong>예약숙소</strong></h4></th>
            <th><h4><strong>예약날자</strong></h4></th>
            <th><h4><strong>예약번호</strong></h4></th>

        </tr>
    </thead>
    <tbody>
        <tr>
            <td>아쿠아펠리스호텔</td>
            <td>2021-08-16 ~ 2021-08-17</td>
            <td>1</td>
            <td><button style="margin-left:15px;">예약취소</button></td>
        </tr>
    </tbody> 

    </table>
</main>
<!-- End #main -->
<%@ include file="../layout/footer.jsp"%>