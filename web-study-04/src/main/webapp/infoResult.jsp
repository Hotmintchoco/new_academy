<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>ID : </b> <%=request.getParameter("id") %> <br>
	<b>PW : </b> <%=request.getParameter("pwd") %> <br>
	<b>자기소개</b> <br>
	<%=request.getParameter("dec") %><br>
</body>
</html>