<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
</head>
<body>
<div id="wrap" align="center">
	<h1>정보 삭제</h1>
	<form action="movieDelete.do" method="post">
		<table>
			<tr>
				<td style="text-align: center;">
				<c:choose>
					<c:when test="${empty movie.poster}">
						<img src="images/noimage.gif">
					</c:when>
					<c:otherwise>
						<img src="images/${movie.poster}">
					</c:otherwise>
				</c:choose>
				</td>
				<td>
               <table>
                  <tr>
                     <th style="width: 80px"> 제 목 </th>
                     <td>
                     ${movie.title}
                     </td>
                  </tr>
                  <tr>
                     <th> 가 격 </th>
                     <td>
                     ${movie.price}
                     </td>
                  </tr>
                  <tr>
                     <th> 감 독 </th>
                     <td>
                     ${movie.director}
                     </td>
                  </tr>
                  <tr>
                     <th> 배 우 </th>
                     <td>
                     ${movie.actor}
                     </td>
                  </tr>
                  <tr>
                     <th> 시놉시스 </th>
                     <td>
                     ${movie.sysnopsis}
                     </td>
                  </tr>
                  <tr>
                     <th> 사 진 </th>
                     <td>
                     ${movie.poster}
                     </td>
                  </tr>
               </table>
            </td>
			</tr>
		</table>
		<br>
		<input type="hidden" name="code" value="${movie.code}">
		<input type="submit" value="삭제">
		<input type="button" value="목록" onclick="location.href='movieList.do'">
	</form>
</div>
</body>
</html>