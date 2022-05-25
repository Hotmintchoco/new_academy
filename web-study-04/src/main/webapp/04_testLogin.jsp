<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "pinksung";
String pwd = "1234";
String name= "성윤정";
request.setCharacterEncoding("UTF-8");
if(id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd"))) {
	response.sendRedirect("04_main.jsp?name=" + 
		URLEncoder.encode(name, "UTF-8"));
} 
else {
%>
<script type="text/javascript">
	alert("잘못된 입력입니다.")
	history.go(-1)
</script>
<%
}
%>