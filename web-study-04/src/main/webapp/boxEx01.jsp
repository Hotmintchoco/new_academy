<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>검색 엔진 정보 페이지</h2>
	
	<b>검색 엔진을 선택하세요.</b>

	<form action="boxResult.jsp" method="post">
		<table board="1">
			<tr>
				<td>
					<select name="portal" size="4">
						<option selected>네이버</option>
						<option>다음</option>
						<option>네이트</option>
						<option>구글</option>
					</select>
				</td>
			</tr>
		</table>
		<Input type="submit" value="확인">
	</form>
</body>
</html>