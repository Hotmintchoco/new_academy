<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%request.setCharacterEncoding("UTF-8"); %>
<title>Insert title here</title>
</head>
<body>
<%
	String portal = request.getParameter("portal");

	if(portal.equals("네이버")) {
		response.sendRedirect("https://www.naver.com");
	} else if (portal.equals("다음")) {
		response.sendRedirect("https://www.daum.net");
	} else if (portal.equals("네이트")) {
		response.sendRedirect("https://www.nate.com");
	} else if (portal.equals("구글")) {
		response.sendRedirect("https://www.google.com");
	} else {
		
	}
%>
</body>
</html>