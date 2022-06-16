<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
	<h1> 게시글 상세보기 </h1>
		<table>
			<tr>
				<th>아이디</th><td>${board.id}</td>
			</tr>
			<tr>
				<th>비밀번호</th><td>${board.pass}</td>
			</tr>
			<tr>
				<th>권한</th>
				<c:choose>
					<c:when test="${board.lev == 'A'}">
						<td>운영자</td>
					</c:when>
					<c:otherwise>
						<td>일반사원</td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<th>성별</th>
				<c:choose>
					<c:when test="${board.gender == 1}">
						<td>남자</td>
					</c:when>
					<c:otherwise>
						<td>여자</td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${board.phone}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><fmt:formatDate value="${board.enter}"/></td>
			</tr>
		</table>
		<br> <br>
		<input type="button" value="게시글 수정" onclick=
			"open_win('BoardServlet?command=board_check_pass_form&id=${board.id}',
			'update')">
		<input type="button" value="게시글 삭제" onclick=
			"open_win('BoardServlet?command=board_check_pass_form&id=${board.id}',
			'delete')">
		<input type="button" value="게시글 리스트" onclick=
			"location.href='BoardServlet?command=board_list'">
		<input type="button" value="게시글 등록" onclick=
			"location.href='BoardServlet?command=board_write_form'">
</div>
</body>
</html>