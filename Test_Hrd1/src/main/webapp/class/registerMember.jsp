<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="DBPKG.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String today = new SimpleDateFormat("yyyyMMdd").format(new Date());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* { margin: 0; border: 0; }
	header { width: 1100px; height: 100px; background-color: navy; 
	margin: 0 auto; }
	header h1 { text-align: center; line-height: 100px; color: white; }
	nav { width: 1100px; height: 50px; background-color: blue;
	margin: 0 auto; }
	nav a { float: left; font-size: 20px;  margin: 15px 40px 0 10px; 
	color: white; text-decoration: none; } 
	section { width: 1100px; height: 500px; margin: 0 auto;
	border: 1px solid navy; }
	section h2 { text-align: center; line-height: 50px; }
	section div { margin: 30px; }
	table { width: 800px; margin: 0 auto; }
	table, tr, th, td { border: 1px solid gray; }
	input { background-color: silver; }
	footer { width: 1100px; height: 100px; background-color: navy;
	margin: 0 auto; }
	footer p { text-align: center; line-height: 100px; 
	color: white; }
</style>
</head>
<body>
	<header>
		<h1>수강관리 프로그램 ver 1.0</h1>
	</header>
	
	<nav>
		<a href="classManage.jsp">과정관리</a>
		<a href="memberList.jsp">수강생 정보</a>
		<a href="teacherList.jsp">교사정보</a>
		<a href="index.jsp">홈으로..</a>
	</nav>
	
	<section>
		<h2>과정 등록</h2>
		<div>
			<form action="registerMemberImpl.jsp" method="post">
				<table>
					<tr>
						<td>과정번호</td>
						<td>
							<input type="text" name="no">
						</td>
					</tr>
					<tr>
						<td>수강생명</td>
						<td>
							<input type="text" name="name">
						</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="phone">
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<input type="text" name="address">
						</td>
					</tr>
					<tr>
						<td>수강등록일</td>
						<td>
							<input type="text" name="registDate" value="<%=today%>" readonly>
						</td>
					</tr>
					<tr>
						<td>타입</td>
						<td>
							<input type="text" name="type">
						</td>
					</tr>
				</table>
				
				<input type="submit" value="등록">
			</form>
		</div>
	</section>
	
	<footer>
		<p>HRDKOREA Copyright@2022 All rights reserved Human Resources Development Service of Korea</p>
	</footer>
</body>
</html>