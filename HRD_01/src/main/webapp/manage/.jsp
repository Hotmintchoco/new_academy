<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="DBPKG.manageDAO"/>
<%
	String no = request.getParameter("no");
%>

<jsp:useBean id="vo" class="DBPKG.SalesVO">
	<jsp:setProperty property="*" name="vo"/>
</jsp:useBean>
<%
	vo = dao.getSales(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {margin:0;}
	table {width:600px; margin:10px auto 0;}
	section {width: 1000px; height: 500px; background-color: #D5D5D5; margin:0 auto;}
	table, th, td  { border:1px solid #666; }
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<form action="sales_impl.jsp" name="frm">
	<section>
	<h1>회원매출조회</h1>
	<table>
		<tr>
			<td> 회원번호  </td>
			<td> <input type="text" name="no" size="20"
			value="<%=vo.getNo() %>" readonly> </td>
		</tr>
		<tr>
			<td> 회원성명  </td>
			<td> <input type="text" name="name" size="20"
			<%=vo.getName() %>></td>
		</tr>
		<tr>
			<td> 고객등급  </td>
			<td> <input type="text" name="grade" size="20"
			value="<%=vo.getGrade() %>" readonly> </td>
		</tr>
		<tr>
			<td> 매출  </td>
			<td> <input type="text" name="sales" size="20"
			value="<%=vo.getSales() %>"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="수정" onclick="return loginCheck()">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</section>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>