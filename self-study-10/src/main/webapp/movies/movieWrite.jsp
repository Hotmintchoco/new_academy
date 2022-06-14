<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
</head>
<body>
<div id="wrap" align="center">
	<form method="post" enctype="multipart/form-data" name="frm">
		<table>
			<tr>
				<th> 제 목 </th>
				<td><input type="text" name="title" size="80"></td>
			</tr>
			<tr>
				<th> 가 격 </th>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<th> 감 독 </th>
				<td><input type="text" name="director"></td>
			</tr>
			<tr>
				<th> 배 우 </th>
				<td><input type="text" name="actor"></td>
			</tr>
			<tr>
				<th> 설 명 </th>
				<td><textarea rows="10" cols="80" name="sysnopsis"></textarea></td>
			</tr>
			<tr>
				<th> 사 진 </th>
				<td>
				<input type="file" name="poster"><br>
				(주의사항 : 이미지를 변경하고자 할때만 선택하세요.)
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" value="확인">
		<input type="reset" value="취소">
		<input type="button" value="목록" onclick="location.href='movieList.do'">
	</form>
</div>
</body>
</html>