<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%
	response.setContentType("text/html; charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = null;
	
	String condition = request.getParameter("searchCondition");
	if(condition != null) {
		String keyWord = request.getParameter("searchKeyword");
		if(condition.equals("title")) {
			vo.setTitle(keyWord);
			boardList = boardDAO.getBoardSearchTitleList(vo);
		} else if(condition.equals("content")) {
			vo.setContent(keyWord);
			boardList = boardDAO.getBoardSearchContentList(vo);
		} 
	} else {
		boardList = boardDAO.getBoardList(vo);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	h1, h3 { text-align: center;}
	table{ margin : 0 auto;}
</style>
</head>
<body>
<h1>글 목록</h1>
<h3>테스트님 환영합니다... <a href="logout_proc.jsp">Log-out</a></h3>

<div>
<form action="getBoardList.jsp" method="post">
	<table border="1" style="width: 700px;">
		<tr>
			<td align="right">
				<select name="searchCondition">
				<option value="title">제목
				<option value="content">내용
				</select>
				<input type="text" name="searchKeyword">
				<input type="submit" value="검색">
			</td>
		</tr>
	</table>
</form>

<table border="1" style="width: 700px">
	<tr>
		<th bgcolor="orange" width="100">번호</th>
		<th bgcolor="orange" width="200">제목</th>
		<th bgcolor="orange" width="150">작성자</th>
		<th bgcolor="orange" width="150">등록일</th>
		<th bgcolor="orange" width="100">조회수</th>
	</tr>
	<% for(BoardVO board : boardList) { %>
	<tr>
		<td><%= board.getSeq() %></td>
		<td><a href="getBoard.jsp?seq=<%= board.getSeq() %>">
		<%= board.getTitle() %></a></td>
		<td><%= board.getWriter() %></td>
		<td><%= board.getRegDate() %></td>
		<td><%= board.getCnt() %></td>
	</tr>
	<% } %>
</table>
<br>
<div style="text-align: center;">
	<a href="insertBoard.jsp">새글 등록</a>
</div>
</div>
</body>
</html>