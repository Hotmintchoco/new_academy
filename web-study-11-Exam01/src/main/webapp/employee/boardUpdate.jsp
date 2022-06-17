<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h1> 게시글 수정 </h1>
	<form name="frm" method="post" action="EmployeeServlet">
		<input type="hidden" name="command" value="board_update">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" size="30" value="${board.id}" readonly>
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" size="30" value="${board.pass}">
				 </td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" size="30" value="${board.name}">
				 </td>
			</tr>
			<tr>
				<th>권한</th>
				<td>
					<select name="lev" size="1">
						<option value="A">운영자</option>
						<option value="B">일반회원</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<select name="gender">
						<option value="1">남자</option>
						<option value="2">여자</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" size="30" name="phone"
				value="${board.phone}"></td>
			</tr>
		</table>
		<br><br>
		<input type="submit" value="등록" onclick="return boardCheck()">
		<input type="reset" value="취소">
		<input type="button" value="목록" onclick="location.href='EmployeeServlet?command=employee_list'">
	</form>
</div>
</body>
</html>