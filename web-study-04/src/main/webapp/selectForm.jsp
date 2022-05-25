<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="selectResult.jsp" method="post">
		<table board="1">
			<tr>
				<td>학력</td>
				<td>
					<select name="edu">
						<option selected>재학생</option>
						<option>학사</option>
						<option>석사</option>
						<option>박사</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>소속국가</td>
				<td>
					<select name="na" size="3">
						<option selected>Korea</option>
						<option>USA</option>
						<option>Japan</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>관심분야</td>
				<td>
					<select name="like" size="4" multiple>
						<option>광고/미디어</option>,
						<option selected>프로듀서</option>
						<option>컨설팅</option>,
						<option>그래픽디자이너</option>
					</select>
				</td>
			</tr>
		</table>
		<Input type="submit" value="전송">
		<Input type="reset" value="초기화">
	</form>
</body>
</html>