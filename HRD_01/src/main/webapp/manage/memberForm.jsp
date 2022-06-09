<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, DBPKG.*"%>
<jsp:useBean id="dao" class="DBPKG.manageDAO"/>
<%
	List<manageVO> list = dao.memberList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {margin:0;}
	table {width:800px; margin:10px auto 0;}
	section {width: 1000px; height: 500px; background-color: #D5D5D5; margin:0 auto;}
	table, th, td  { border:1px solid #666; }
</style>
</head>
<body>
<jsp:include page="header.jsp"/>

		<section>
		<h1>회원목록조회/수정</h1>
			<table>
				<tr>
					<th width=10%>회원번호</th>
					<th width=10%>회원성명</th>
					<th width=15%>전화번호</th>
					<th width=30%>주소</th>
					<th width=15%>가입일자</th>
					<th width=10%>고객등급</th>
					<th width=10%>거주지역</th>
				</tr>
				<%
					for(manageVO vo : list) {
				%>
				<tr>
					<td width=10%><a href="#"><%=vo.getNo() %></a></td>
					<td width=10%><%=vo.getName()%></td>
					<td width=15%><%=vo.getPhone()%></td>
					<td width=30%><%=vo.getAddress()%></td>
					<td width=15%><%=vo.getJoindate()%></td>
					<td width=10%><%=vo.getGrade()%></td>
					<td width=10%><%=vo.getCity()%></td>
				</tr>
				<%
					}
				%>
			</table>
		</section>

<jsp:include page="footer.jsp"/>
</body>
</html>