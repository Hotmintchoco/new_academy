<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>여행가기 좋은날 - 로그인</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/templatemo-ocean-vibes.css">
<link rel="stylesheet" href="css/nav.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<script src="https://kit.fontawesome.com/c34800a0df.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@import url("https://fonts.googleapis.com/css?family=Inconsolata:700");

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html, body {
	width: 100%;
	height: 100%;
}

.container {
	position: absolute;
	margin: auto;
	top: 0;
	left: 0;
	right: 100px;
	bottom: 0;
	width: 200px;
	height: 100px;
}

.container .search {
	position: absolute;
	margin: auto;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 40px;
	height: 40px;
	background: aqua;
	border-radius: 50%;
	transition: all 0.5s;
	z-index: 4;
}

.container .search:hover {
	cursor: pointer;
}

.container .search::before {
	content: "";
	position: absolute;
	margin: auto;
	top: 22px;
	right: 0;
	bottom: 0;
	left: 22px;
	width: 12px;
	height: 2px;
	background: white;
	transform: rotate(45deg);
	transition: all 0.5s;
}

.container .search::after {
	content: "";
	position: absolute;
	margin: auto;
	top: -5px;
	right: 0;
	bottom: 0;
	left: -5px;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	border: 2px solid white;
	transition: all 0.5s;
}

.container input {
	position: absolute;
	margin: auto;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 50px;
	height: 50px;
	outline: none;
	border: none;
	background: aqua;
	color: white;
	text-shadow: 0 0 10px aqua;
	padding: 0 80px 0 20px;
	border-radius: 30px;
	box-shadow: 0 0 25px 0 aqua, 0 20px 25px 0 rgba(0, 0, 0, 0.2);
	transition: all 0.5s;
	opacity: 0;
	z-index: 5;
	font-weight: bolder;
	letter-spacing: 0.1em;
}

.container input:hover {
	cursor: pointer;
}

.container input:focus {
	width: 200px;
	opacity: 1;
	cursor: text;
}

.container input:focus ~ .search {
	right: -150px;
	background: #151515;
	z-index: 6;
}

.container input:focus ~ .search::before {
	top: 0;
	left: 0;
	width: 25px;
}

.container input:focus ~ .search::after {
	top: 0;
	left: 0;
	width: 25px;
	height: 2px;
	border: none;
	background: white;
	border-radius: 0%;
	transform: rotate(-45deg);
}

.container input::placeholder {
	color: white;
	opacity: 0.5;
	font-weight: bolder;
}

.gd-container {
	max-width: 1100px;
	position: relative;
	margin: 0 auto;
	padding-left: 15px;
	padding-right: 15px;
}

#gtco-header {
	height: 700px;
	width: 100%;
}

#gtco-header>ul {
	display: inline;
}

#gtco-header .bg {
	position: relative;
}

#gtco-header .bg>img {
	height: 700px;
	width: 100%;
}

#gtco-header .bg .text>h1 {
	display: inline-block;
	z-index: 999;
	position: absolute;
	top: 200px;
	left: 200px;
	width: 100%;
	margin: 0 auto;
	font-size: 50px;
	height: 70px;
	line-height: 700px;
}

.bg:hover {
	opacity: 0.7;
}


footer {
	width: 1000px;
	height: 50px;
	margin: 0 auto;
}

#gtco-footer, .gtco-section {
	padding: 6em 0;
	clear: both;
	position: relative;
}

#gtco-footer .gtco-widget {
	margin-bottom: 20px;
}





.Wallpapers {
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.login {
	width: 40%;
	height: 600px;
	background: white;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	border: 1px solid lightgray;
}

h2 {
	color: aqua;
	font-size: 2em;
	margin-bottom: 50px;
}

.login_id {
	margin-top: 50px;
	width: 80%;
}

.login_id input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid gray;
	outline: none;
}

.login_pw {
	margin-top: 20px;
	width: 80%;
}

.login_pw input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid gray;
	outline: none;
}

.submit {
	margin-top: 50px;
	width: 80%;
}

.submit input {
	width: 100%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: aqua;
	color: white;
	font-size: 1.2em;
}

.threelinks {
	text-align: center;
	margin-top: 20px;
}

  </style>

</head>
<body>
	<nav class="navbar">
		<div class="navbar_logo">
			<i class="fa-solid fa-map-location-dot"></i> <a href="home.jsp">여행가기
				좋은날</a>
		</div>
		<div class="container">
			<input type="text" placeholder="Search...">
			<div class="search"></div>
		</div>
		<ul class="navbar_menu">
			<li><a href="destination.jsp">여행지 추천</a></li>
			<li><a href="course.jsp">코스 추천</a></li>
			<li><a href="festival.jsp">축제</a></li>
			<li><a href="login.jsp">로그인</a></li>
		</ul>
	</nav>




<form method="post" action="home.jsp">
		<div class="Wallpapers">
			<div class="login">
				<h2>로그인</h2>
				<label> <input type="radio" name="userGrade" value="member" checked> 일반회원 &nbsp;&nbsp; 
						<input type="radio" name="userGrade" value="admin"> 관리자
				</label>
				<div class="login_id">
					<h4>아이디</h4>
					<input type="text" name="" id="" placeholder="아이디">
				</div>
				<div class="login_pw">
					<h4>비밀번호</h4>
					<input type="password" name="" id="" placeholder="비밀번호">
				</div>

				<div class="submit">
					<input type="submit" value="로그인">
				</div>

				<div class="threelinks">
					<a href="rememberID">아이디 찾기</a> &nbsp;&nbsp; <a href="rememberPW">비밀번호
						찾기</a> &nbsp;&nbsp; <a href="signup.jsp">회원가입</a>
				</div>

			</div>
		</div>
	</form>


 




	<a style="display: scroll; position: fixed; bottom: 20px; right: 60px; font-size: 40px;"
		href="#" title="top"> <i class="fa-solid fa-circle-arrow-up"></i></a>


	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-3">
					<div class="gtco-widget">
						<h3>About Us</h3>
						<p>2022 GoodDayTrip Team</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="gtco-widget">
						<h4 class="text-uppercase fw-bold mb-4">Partners 모집</h4>
						<p>파트너와의 ‘열린’ 소통 및 콘텐츠 제휴를 환영합니다.</p>

					</div>
				</div>

				<div class="col-md-3">
					<div>
						<h4 class="text-uppercase fw-bold mb-4">POST</h4>

						<a href="#"><p>여행지 포스트</p></a> <a href="#"><p>코스 포스트</p></a> <a
							href="#"><p>축제 포스트</p></a>


					</div>
				</div>

				<div class="col-md-3">
					<!-- Links -->
					<h4 class="text-uppercase fw-bold mb-4">Contact</h4>
					<p>
						<i class="fas fa-home me-3"></i> New York, NY 10012, US
					</p>
					<p>
						<i class="fas fa-envelope me-3"></i> gooddaytip@example.com
					</p>
					<p>
						<i class="fas fa-phone me-3"></i> + 82 234 567 88
					</p>
					<p>
						<i class="fas fa-print me-3"></i> + 82 234 567 89
					</p>
				</div>


			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2022 GoodDayTrip Team</small>

					</p>

				</div>
			</div>
		</div>

	</footer>



	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>

	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>


	<!-- Main -->
	<script src="js/main.js"></script>

</body>
</html>
