<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="moive" class="com.saeyan.javabeans.MovieBean" />
<jsp:setProperty name="moive" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 완료된 정보</h2>
	<table>
		<tr>
			<td>제목</td>
			<td><%=moive.getTitle()%></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><%=moive.getPrice()%></td>
		</tr>
		<tr>
			<td>감독</td>
			<td><%=moive.getDirector()%></td>
		</tr>
		<tr>
			<td>출연배우</td>
			<td><%=moive.getActor()%></td>
		</tr>
		<tr>
			<td>시놉시스</td>
			<td><textarea rows="10" cols="100">
			<%=moive.getSynopsis()%>
			</textarea>
			</td>
		</tr>
		<tr>
			<td>장르</td>
			<td><%=moive.getGenre()%></td>
		</tr>
	</table>
</body>
</html>