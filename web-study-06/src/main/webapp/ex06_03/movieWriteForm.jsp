<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>정보 등록</h2>
<form method="post" action="movieWrite.jsp">
	<table>
		<tr>
			<td> 제목  </td>
			<td> <input type="text" name="title" size="20"></td>
		</tr>
		<tr>
			<td> 가격  </td>
			<td> <input type="text" name=price size="20">
				원</td>
		</tr>
		<tr>
			<td> 감독  </td>
			<td> <input type="text" name="director" size="20"></td>
		</tr>
		<tr>
			<td> 출연배우  </td>
			<td> <input type="text" name="actor" size="20"></td>
		</tr>
		<tr>
			<td> 시놉시스  </td>
			<td> <textarea name="synopsis"
				rows="10" cols="100"></textarea></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><select name="genre">
					<option selected>액션</option>
					<option>스릴러</option>
					<option>미스터리</option>
					<option>코미디</option>
					<option>애니메이션</option>
			</select></td>
		</tr>
		</table>
	<table style="margin-left: 350px;">
		<tr>
			<td> <input type="submit" value="확인"></td>
			<td> <input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>