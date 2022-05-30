<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="item" class="com.saeyan.javabeans.ItemBean" />
<jsp:setProperty name="item" property="*" />
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
			<td>상품명</td>
			<td><%=item.getName()%></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><%=item.getPrice()%></td>
		</tr>
		<tr>
			<td>설명</td>
			<td><%=item.getDesciption()%></td>
		</tr>
	</table>
</body>
</html>