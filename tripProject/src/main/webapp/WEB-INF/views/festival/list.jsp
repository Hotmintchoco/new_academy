<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List 화면</h1>
	 <table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>사진</th>
				<th>축제 시작일</th>
				<th>축제 종료일</th>
				<th>주소</th>
			</tr>
		</thead>
	<tbody>
			<c:forEach items="${list}" var="festivaldata">
				<tr>
					<td><c:out value="${festivaldata.num}"/></td>
					<td><c:out value="${festivaldata.title}"/></td>
					<td><c:out value="${festivaldata.firstimg}"/></td>
					<td><c:out value="${festivaldata.startdate}"/></td>
					<td><c:out value="${festivaldata.enddate }"/></td>
					<td><c:out value="${festivaldata.address }"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
 <div id = "map" style="width: 500px; height: 400px;"></div>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${mapX}, ${mapY}),
			level: ${mLevel}
		};

		var map = new kakao.maps.Map(container, options);
	</script> 
	


	</div>
        
</body>
</html>