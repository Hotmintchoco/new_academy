<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="board" class="com.saeyan.javabeans.BoardBean"/>
<jsp:setProperty name="board" property="*"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 완료된 회원 정보</h2>
	<table>
		<tr>
			<td>작성자</td>
			<td><%=board.getName()%></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=board.getPass()%></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=board.getEmail()%></td>
		</tr>
		<tr>
			<td>글제목</td>
			<td><%=board.getTitle()%></td>
		</tr>
		<tr>
			<td>글내용</td>
			<td><%=board.getContent()%></td>
		</tr>
	</table>
</body>
</html>