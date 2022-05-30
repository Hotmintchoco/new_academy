<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center">게시판 글쓰기</h2>
<form method="post" action="boardWrite.jsp">
	<table border="1" style="margin: 0 auto">
		<tr>
			<td> 작성자  </td>
			<td> <input type="text" name="name" size="15"></td>
		</tr>
		<tr>
			<td> 비밀번호  </td>
			<td> <input type="password" name="pass" size="15">
				(게시물 수정 삭제시 필요합니다.)</td>
		</tr>
		<tr>
			<td> 이메일  </td>
			<td> <input type="text" name="email" size="25"></td>
		</tr>
		<tr>
			<td> 글 제목  </td>
			<td> <input type="text" name="title" size="40"></td>
		</tr>
		<tr>
			<td> 글 내용  </td>
			<td> <textarea name="content" 
				rows="10" cols="100"></textarea></td>
		</tr>
	</table>
	<table style="margin: 0 auto">
		<tr>
			<td> <input type="submit" value="등록"></td>
			<td> <input type="reset" value="다시 작성"></td>
		</tr>
	</table>
</form>
</body>
</html>