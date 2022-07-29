<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.trip.domain.FesDataDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../includes/header.jsp"></jsp:include>
<a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title="âtop">
<i class="fa-solid fa-circle-arrow-up"></i></a>
	
<!-- header card -->
	
	<div class="card">
	   
	</div>
	<br><br>
	<div id="slider">
	<h1>List 화면</h1>
<c:out value="${fes.num }" /><br>
<c:out value="${fes.title }" /><br>
<c:out value="${fes.address }" /><br>
<c:out value="${fes.firstimg }" /><br>
<c:out value="${fes.startdate}" /><br>
<c:out value="${fes.enddate}" /><br>

	
 <div id = "map" style="width: 500px; height: 400px;"></div>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(<c:out value="${fes.mapx}"/>, <c:out value="${fes.mapy }"/>),
			level: <c:out value="${fes.mlevel}" />
		};

		var map = new kakao.maps.Map(container, options);
	</script> 
	


	</div>
        
</body>
</html>