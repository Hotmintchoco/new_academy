<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${model}
	<h1><%=name %> <%=age %></h1>
</body>
</html>