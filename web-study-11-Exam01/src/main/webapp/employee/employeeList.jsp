<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.saeyan.dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap" align="center">
<h1> 게시글 리스트 </h1>
	<table class="list">
		<tr>
			<td colspan="5" style="border: white; text-align: right">
				<a href="EmployeeServlet?command=board_write_form">게시글 등록</a>
			</td>
		</tr>
		<tr><th>아이디</th><th>이름</th><th>권한</th><th>성별</th><th>전화번호</th></tr>
		<c:forEach var="board" items="${boardList}">
			<tr class="record">
				<td>${board.id}</td>
				<td><a href="EmployeeServlet?command=employee_view&id=${board.id}">
				${board.name}
				</a></td>
				<c:choose>
					<c:when test="${board.lev == 'A'}">
						<td>운영자</td>
					</c:when>
					<c:otherwise>
						<td>일반사원</td>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${board.gender == 1}">
						<td>남자</td>
					</c:when>
					<c:otherwise>
						<td>여자</td>
					</c:otherwise>
				</c:choose>
				<td>${board.phone}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>