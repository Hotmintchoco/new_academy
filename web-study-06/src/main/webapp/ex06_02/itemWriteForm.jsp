<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>정보 입력 폼</h2>
<form method="post" action="itemWrite.jsp">
	<table>
		<tr>
			<td> 상품명  </td>
			<td> <input type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td> 가격  </td>
			<td> <input type="text" name="price" size="20">
				(게시물 수정 삭제시 필요합니다.)</td>
		</tr>
		<tr>
			<td> 설명  </td>
			<td> <textarea name="desciption"
				rows="10" cols="100"></textarea></td>
		</tr>
	</table>
	<table style="margin-left: 350px;">
		<tr>
			<td> <input type="submit" value="전송"></td>
			<td> <input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>