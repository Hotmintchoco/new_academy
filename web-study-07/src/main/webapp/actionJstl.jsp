<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${param.loginCheck == 'user'}">
		<jsp:forward page="userMain.jsp">
			<jsp:param value="${param.userid }" name="userName"/>
		</jsp:forward>
	</c:when>
	<c:otherwise>
		<jsp:forward page="managerMain.jsp">
			<jsp:param value="${param.userid }" name="userName"/>
		</jsp:forward>
	</c:otherwise>
</c:choose>
</body>
</html>