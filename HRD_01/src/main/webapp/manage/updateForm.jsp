<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="DBPKG.manageDAO"/>
<%
	String no = request.getParameter("no");
%>

<jsp:useBean id="vo" class="DBPKG.manageVO">
	<jsp:setProperty property="*" name="vo"/>
</jsp:useBean>
<%
	vo = dao.getMember(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/manage.js"></script>
<style type="text/css">
	* {margin:0;}
	table {width:600px; margin:10px auto 0;}
	section {width: 1000px; height: 500px; background-color: #D5D5D5; margin:0 auto;}
	section > h1 {text-align: center; line-height: 100px;}
	table, th, td  { border:1px solid #666; }
	th {width: 250px;}
	td {width: 350px;}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<form action="update_impl.jsp" name="frm">
	<section>
	<h1>회원매출조회</h1>
	<table>
		<tr>
			<th> 회원번호  </th>
			<td> <input type="text" name="no" size="20"
			value="<%=vo.getNo() %>" readonly> </td>
		</tr>
		<tr>
			<th> 회원성명  </th>
			<td> <input type="text" name="name" size="20"
			value="<%=vo.getName() %>"></td>
		</tr>
		<tr>
			<th> 회원전화  </th>
			<td> <input type="text" name="phone" size="20"
			value="<%=vo.getPhone() %>"> </td>
		</tr>
		<tr>
			<th> 회원주소  </th>
			<td> <input type="text" name="address" size="20"
			value="<%=vo.getAddress() %>"> </td>
		</tr>
		<tr>
			<th> 가입일자  </th>
			<td> <input type="text" name="joindate" size="20"
			value="<%=vo.getJoindate().substring(0, 10) %>"> </td>
		</tr>
		<tr>
			<th> 고객등급[A:VIP,B:일반,C:직원]  </th>
			<td> <input type="text" name="grade" size="20"
			value="<%=vo.getGrade() %>"> </td>
		</tr>
		<tr>
			<th> 도시코드  </th>
			<td> <input type="text" name="city" size="20"
			value="<%=vo.getCity() %>"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="수정" onclick="return loginCheck()">
				<input type="button" value="조회" onclick="location.href='salesForm.jsp'">
			</td>
		</tr>
	</table>
	</section>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>