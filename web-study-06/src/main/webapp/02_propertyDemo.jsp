<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>

이름 : <jsp:getProperty name="member" property="name"/> <br>
아이디 : <jsp:getProperty name="member" property="userid"/>
<hr>

<jsp:setProperty name="member" property="name" value="전수빈"/>
<jsp:setProperty name="member" property="userid" value="pinksubin"/>
이름 : <jsp:getProperty name="member" property="name"/> <br>
아이디 : <jsp:getProperty name="member" property="userid"/>
</body>
</html>