<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행가기 좋은날</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
    <link rel="stylesheet" href="css/templatemo-ocean-vibes.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <style>
    	* {font-family: 'Gugi', cursive}
        ul,ol.li {list-style: none; margin: 0; padding: 0;}
        nav {width: 1000px; height: 50px; margin:0 auto;}
	    nav > ul > li > a {float: right; color: black; font-size: 20px;
            text-decoration: none; margin: 0px 30px 0 30px;
            font-weight: bold;}
        #slider {width: 1000px; height: 700px; margin: 0 auto;}
        #slider > img {margin-left: 250px;}
        .tm-mt-0 {float: left; font-size: 50px;}
        #menubar {width: 1000px; margin: 0 auto;}
    </style> 
</head>
<body>
    <header class="tm-site-header">
        <div>
            <nav>
                <ul>
                    <li><a href="#">회원가입</a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="mypage.jsp" class="tm-mt-0 tm-mb-15"><span class="tm-color-primary">여행가기 좋은날</span></a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div id="menubar">
		<table style="width: 100%;">
			<tbody>
				<tr style="width: 100%;">
					<td style="width: 20%;">
						<div class="btn-group" style="margin-left: 35px;">
							<button type="button" class="btn btn-info" style="width:100px;">메뉴</button>
							<button type="button" class="btn btn-info dropdown-toggle"
								data-toggle="dropdown">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">코스</a></li>
								<li><a href="#">축제</a></li>
								<li><a href="#">이벤트</a></li>
							</ul>
						</div>
					</td>
					<td style="width: 64%;">
					<form action="memberForm.jsp">
						<div class="input-group">
							<input type="text" class="form-control" name="search"
								placeholder="게시글 검색">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
					</td>
					<td style="width: 15%;"></td>
				</tr>
			</tbody>
		</table>
    </div>
    
	<div id="slider">
        <img src="img/koreaMap2.png" alt="Map" width="450px" height="700px">
    </div>
	
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>    
    <script src="js/templatemo-script.js"></script>
</body>
</html>