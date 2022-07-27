<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>코스추천</title>
  <link rel="stylesheet" href="../fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
  <link rel="stylesheet" href="../css/nav.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/animate.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/c34800a0df.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f7f2591af5145e97bd2969fcf925e6f"></script>
<style>
    @font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
      
   * {font-family: 'yg-jalnan', cursive }

  .gd-container {
  max-width: 1100px;
  position: relative;
  margin: 0 auto;
  padding-left: 15px;
  padding-right: 15px;
}

 ul > li > a {color: #212121;}
 #slider {width: 1000px; height: 1000px; margin: 0 auto;}

.dotOverlay {color:#747474; position:relative;bottom:-30px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay {position:relative;bottom:55px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}

#courseTitle h1 {text-align: center;}
#courseTitle p {text-align: center;}

.btn_good .ico {
    background: url(https://cdn.visitkorea.or.kr/resources/images/sub/ico_mpost01_on.png);
    width: 42px; height: 36px;
    display: inline-block;
    test-indent: -9999px;
    }
.btn_good { width: 75px; height: 55px; border: none; background-color: #FFFFFF; }
</style>
     
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
	         <!-- title, city 입력 -->
	     <div id="courseTitle">
	     	<h1>코스 제목</h1>
	     	<p>지역명</p>
	     	<button type="button" class="btn_good">
	     		<span class="ico"></span>
	     		<span class="num" id="numLike">10</span>
	     	</button>
	     	<hr>
	     </div>
	     
	        
	     <div id="map" style="width:500px;height:400px; margin: 0 auto;"></div>
	     <p>총 거리</p><span id="i_result"></span>
	<hr>
		
	</div>
	
	<script>
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		var distanceOverlay;
		var dots = {};

		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
		    {
		        title: '카카오', 
		        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		    },
		    {
		        title: '생태연못', 
		        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		    },
		    {
		        title: '텃밭', 
		        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		    },
		    {
		        title: '근린공원',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    },
		    {
		        title: '제주공항',
		        latlng: new kakao.maps.LatLng(33.5106, 126.4914)
		    }
		];

	    
		for (var i = 0; i < positions.length; i ++) {
			var imageSrc = "../img/marker/marker-icon" + (i+1) +".png"; 
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(40, 45); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    
		 // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    var content = '<div class="customoverlay">' +
		        '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
		        '    <span class="title">'+ positions[i].title +'</span>' +
		        '  </a>' +
		        '</div>';
		    
		    var customOverlay = new kakao.maps.CustomOverlay({
		        map: map,
		        position: positions[i].latlng,
		        content: content,
		        yAnchor: 1 
		    });
		}

		var linePath;
		var lineLine = new kakao.maps.Polyline();
		var distance;
		var totalDistance = 0;

		for (var i = 0; i < positions.length; i++) {
			if (i != 0) {
				linePath = [ positions[i - 1].latlng, positions[i].latlng ]
			}
			;
			lineLine.setPath(linePath);

			var drawLine = new kakao.maps.Polyline({
				map : map,
				path : linePath,
				strokeWeight: 3, // 선의 두께입니다 
            	strokeColor: '#db4040', // 선의 색깔입니다
            	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            	strokeStyle: 'solid' // 선의 스타일입니다
			});
			

			distance = Math.round(lineLine.getLength());
			totalDistance = totalDistance + distance; 
			displayCircleDot(positions[i].latlng, distance);
		}
		
		function displayCircleDot(position, distance) {
			if (1000 > distance && distance > 0) {
				// 마커까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
				var distanceOverlay = new kakao.maps.CustomOverlay(
					{
						content : '<div class="dotOverlay">거리 <span class="number">'
								+ distance + '</span>m</div>',
						position : position,
						yAnchor : 1,
						zIndex : 2
					});

				// 지도에 표시합니다
				distanceOverlay.setMap(map);
			} else if (distance > 999) {
				distance = Math.round(distance / 100)/10;
				var distanceOverlay = new kakao.maps.CustomOverlay(
					{
						content : '<div class="dotOverlay">거리 <span class="number">'
								+ distance + '</span>km</div>',
						position : position,
						yAnchor : 1,
						zIndex : 2
					});
				// 지도에 표시합니다
				distanceOverlay.setMap(map);
			}
		}
		totalDistance = Math.round(totalDistance / 100)/10;
		
		var result = totalDistance + "km";
		document.getElementById("i_result").innerHTML=result;
	</script>   
    
<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>