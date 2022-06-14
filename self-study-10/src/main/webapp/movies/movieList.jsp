<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div id="wrap" align="center">
	<h1>리스트</h1>
	<table class="list">
		<tr>
			<td colspan="5" style="border: white; text-align: right">
				<button onclick="location.href='movieWrite.do'"
				class="btn btn-info">정보등록</button>
			</td>
		</tr>
		
		<tr><th>제목</th><th>감독</th><th>배우</th><th>가격</th><th>수정</th><th>삭제</th></tr>
		
		<c:forEach var="movie" items="${movieList}">
		<tr class="record">
			<td>${movie.title}</td>
			<td>${movie.director}</td>
			<td>${movie.actor}</td>
			<td>${movie.price} 원</td>
			<td><a href="movieUpdate.do?code=${movie.code}">상품 수정</a></td>
			<td><a href="movieDelete.do?code=${movie.code}">상품 삭제</a></td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>