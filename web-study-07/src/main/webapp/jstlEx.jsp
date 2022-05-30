<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
List<String> seasonList = new ArrayList<String>();
seasonList.add("봄");
seasonList.add("여름");
seasonList.add("가을");
seasonList.add("겨울");
request.setAttribute("list", seasonList);
%>
<c:forEach var="season" items="${list}">
	${season}<br>
</c:forEach>