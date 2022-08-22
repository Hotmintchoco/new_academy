<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>여행가기 좋은날</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/c34800a0df.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/style.css">
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'yg-jalnan', cursive
}

ul>li>a {
	color: #212121;
}

.bg:hover {
	opacity: 0.7;
}

.carousel-inner { //
	height: 300px;
}

p {
	color: #212121;
}

.item, img {
	height: 500px; ! important;
	width: 100% !important;
}


.card-img-top{
height: 300px;
}
</style>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div class="card"></div>
	<br>
	<br>
	<a
		style="display: scroll; position: fixed; bottom: 20px; z-index: 999; right: 60px; font-size: 40px;"
		href="#" title=”top"> <i class="fa-solid fa-circle-arrow-up"></i></a>
	<!-- header card -->


	<div class="card"></div>


	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="carousel-img d-block w-100"
					src="${des[564].destinationFirstImg}" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<p class="subtitle">
					<h1>바다 앞 기암절벽과 정자가 어우러진 아름다운 절경</h1>
					</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="carousel-img d-block w-100"
					src="${des[745].destinationFirstImg}" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<p class="subtitle">
					<h1>밤에 보면 매력이 두 배 #천지연폭포</h1>
					</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="carousel-img d-block w-100"
					src="${des[775].destinationFirstImg}" alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<p class="subtitle">
					<h1>신라 천년의 밤을 만나다! 경주 동궁과 월지, 월정교</h1>
					</p>
				</div>

			</div>
		</div>


		<!-- Control Btn -->

		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>







	<br>
	<br>
	<br>
	<div class="container">
		<div class="text-center">
			<h2>함께 떠나는 힐링 테마여행</h2>
			<p>#유네스코 세계문화유산</p>
		</div>
		<br>
		<div class="row g-1">
			<div class="col-4">
				<a href="http://localhost:8081/destination/get.do?pageNum=1&amount=10&type=&keyword=&destinationAddress=%EC%B6%A9%EC%B2%AD%EB%82%A8&num=708" class="fh5co-card-item image-popup">
					<figure>
						<div class="overlay">
							<i class="ti-plus"></i>
						</div>
						<img src="${des[92].destinationFirstImg}" alt="Image"
							class="img-responsive">
					</figure>
					<div class="fh5co-text">
						<h2>충청도</h2>
						<p>${des[92].destinationTitle}</p>
						<p>
							<span class="btn btn-primary"> 보러가기</span>
						</p>
					</div>
				</a>
			</div>
			<div class="col-4">
				<a href="http://localhost:8081/destination/get.do?pageNum=1&amount=10&type=T&keyword=%EC%84%B8%EA%B3%84%EB%AC%B8%ED%99%94&destinationAddress=&num=674" 
					class="fh5co-card-item image-popup">
					<figure>
						<div class="overlay">
							<i class="ti-plus"></i>
						</div>
						<img src="${des[126].destinationFirstImg}" alt="Image"
							class="img-responsive">
					</figure>
					<div class="fh5co-text">
						<h2>서울</h2>
						<p>${des[126].destinationTitle}</p>
						<p>
							<span class="btn btn-primary">보러가기</span>
						</p>
					</div>
				</a>
			</div>
			<div class="col-4">
				<a href="http://localhost:8081/destination/get.do?pageNum=2&amount=10&type=T&keyword=%EC%84%B8%EA%B3%84%EB%AC%B8%ED%99%94&destinationAddress=&num=178"
					class="fh5co-card-item image-popup">
					<figure>
						<div class="overlay">
							<i class="ti-plus"></i>
						</div>
						<img src="${des[622].destinationFirstImg}" " alt="Image"
							class="img-responsive">
					</figure>
					<div class="fh5co-text">
						<h2>경상도</h2>
						<p>${des[622].destinationTitle}</p>
						<p>
							<span class="btn btn-primary">보러가기</span>
						</p>
					</div>
				</a>
			</div>


			<div class="col-4">
				<a href="http://localhost:8081/destination/get.do?pageNum=1&amount=10&type=T&keyword=%ED%99%94%EC%84%B1&destinationAddress=&num=135"
					class="fh5co-card-item image-popup">
					<figure>
						<div class="overlay">
							<i class="ti-plus"></i>
						</div>
						<img src="${des[665].destinationFirstImg}" alt="Image"
							class="img-responsive">
					</figure>
					<div class="fh5co-text">
						<h2>경기도</h2>
						<p>${des[665].destinationTitle}</p>
						<p>
							<span class="btn btn-primary">보러가기</span>
						</p>
					</div>
				</a>
			</div>

			<div class="col-4">
				<a href="http://localhost:8081/destination/get.do?pageNum=1&amount=10&type=&keyword=&destinationAddress=%EC%A0%84%EB%9D%BC%EB%82%A8&num=758"
					class="fh5co-card-item image-popup">
					<figure>
						<div class="overlay">
							<i class="ti-plus"></i>
						</div>
						<img src="${des[42].destinationFirstImg}" alt="Image"
							class="img-responsive">
					</figure>
					<div class="fh5co-text">
						<h2>전라도</h2>
						<p>${des[42].destinationTitle}</p>
						<p>
							<span class="btn btn-primary">보러가기</span>
						</p>
					</div>
				</a>
			</div>

			<div class="col-sm-4">
				<a href="http://localhost:8081/destination/get.do?pageNum=1&amount=10&type=T&keyword=%EC%84%B8%EA%B3%84%EB%AC%B8%ED%99%94&destinationAddress=&num=318"
					class="fh5co-card-item image-popup">
					<figure>
						<div class="overlay">
							<i class="ti-plus"></i>
						</div>
						<img src="${des[482].destinationFirstImg}" alt="Image"
							class="img-responsive">
					</figure>
					<div class="fh5co-text">
						<h2>인천</h2>
						<p>${des[482].destinationTitle}</p>
						<p>
							<span class="btn btn-primary">보러가기</span>
						</p>
					</div>
				</a>
			</div>

		</div>
	</div>

	<br>
	<br>
	<br>
<div class="text-center">
			<h2>#축제 #문화 #추천 </h2>
<span class="btn btn-outline-info"><a href="/festival/page.do">자세한게 궁금해? 여기 click!!</a></span>
		</div>
		<div class="body2" style="height: 600px;">
	<div class="slide-track">
<div class="slider-container">
        <span class="slider-span" id="slider-span1"></span>
        <span class="slider-span" id="slider-span2"></span>
        <span class="slider-span" id="slider-span3"></span>
        <span class="slider-span" id="slider-span4"></span>
        <span class="slider-span" id="slider-span5"></span>
        <span class="slider-span" id="slider-span6"></span>
        <span class="slider-span" id="slider-span7"></span>
    
    <div class="image-slider">
        <div class="sliders-div" id="slider-1">
            <img src="${data[0].firstimg }" alt="" class="img" id="img1">
            <a href="#slider-span1" class="button" id="button-1"></a>
        </div>
        <div class="sliders-div" id="slider-2">
            <img src="${data[178].firstimg }" alt="" class="img" id="img2">
            <a href="#slider-span2" class="button" id="button-2"></a>
        </div>
        <div class="sliders-div" id="slider-3">
            <img src="${data[289].firstimg }" alt="" class="img" id="img3">
            <a href="#slider-span3" class="button" id="button-3"></a>
        </div>
        <div class="sliders-div" id="slider-4">
            <img src="${data[8].firstimg }" alt="" class="img" id="img4">
            <a href="#slider-span4" class="button" id="button-4"></a>
        </div>
        <div class="sliders-div" id="slider-5">
            <img src="${data[135].firstimg }"alt="" class="img" id="img5">
            <a href="#slider-span5" class="button" id="button-5"></a>
        </div>
        <div class="sliders-div" id="slider-6">
            <img src="${data[136].firstimg }" alt="" class="img" id="img6">
            <a href="#slider-span6" class="button" id="button-6"></a>
        </div>
        <div class="sliders-div" id="slider-7">
            <img src="${data[140].firstimg }" alt="" class="img" id="img7">
            <a href="#slider-span7" class="button" id="button-7"></a>
        </div>
    </div>
</div>
</div>
</div>
	
	<jsp:include page="includes/footer.jsp"></jsp:include>

</body>
</html>
