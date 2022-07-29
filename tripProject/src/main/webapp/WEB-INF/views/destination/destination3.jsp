<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행지 추천</title>
   <link rel="stylesheet" href="../fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="../css/magnific-popup.css"> 
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
 
 
:root {
  --black: #1a1a1a;
  --white: #fff;
  --gray: #ccc;
  --darkgreen: #18846C;
  --lightbrown: antiquewhite;
  --minRangeValue: 280px;
}

* {
  margin: 0;
  padding: 0;  
  outline: none;
  border: none;
}

button {
  cursor: pointer;
  background: none;
}

img {
  display: block;
  width: 290px;
  height: 193px;
}

ol,
ul {
  list-style: none;
  margin:0;
  padding:0;
}

a {
  color: inherit;
}

body {
  margin: 50px 0;
  color: var(--black);
  font: 1rem/1.3 sans-serif;
}

.gallery {
  padding: 0 2rem;
}

.container {
  max-width: 1030px;
  margin: 0 auto;
}

.d-none {
  display: none;
}
.image-list {
  margin: 3rem 0;
}

.image-list li {
  color: var(--darkblack);
}

.grid-view {
  display: grid;
  grid-gap: 80px;
  grid-template-columns: repeat(auto-fit, minmax(var(--minRangeValue), 1fr));
}

li div p {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  width: 290px;
  height: 20px;
  color: black;
  font-size: 13pt;
}
#child{
color:grey;
font-size: 11pt;
}
.box_rightType{width:950px; height:50px; border:1px solid #e6e6e6; background-color:#f7f7f7; line-height: 50px;border-radius: 2em;}

.box_rightType ul li {
    margin: 0 20px 10px 10px;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    font-size: 13pt;
}
.box_rightType ul li button{outline: 0;}

#writebtn {
  background-color: #e7e7e7;
  border: none;
  padding: 13px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  float: right;
  outline: 0;
}
</style>
  
</head>
<body>
<jsp:include page="../includes/header.jsp"></jsp:include>
<a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title="âtop">
	<i class="fa-solid fa-circle-arrow-up"></i></a>
	<div class="card"></div>
	<br>
	<br>
	<div id="slider">
		<!-- 여기에 내용 넣으세요 -->

		<div class="box_rightType">
			<ul>
				<li style="margin-left: 25px"><button>서울시</button></li>
				<li><button>경기도</button></li>
				<li><button>강원도</button></li>
				<li><button>충청북도</button></li>
				<li><button>충청남도</button></li>
				<li><button>경상북도</button></li>
				<li><button>경상남도</button></li>
				<li><button>전라북도</button></li>
				<li><button>전라남도</button></li>
				<li><button>제주도</button></li>
			</ul>
		</div>
		<br>
			<table 
				class="table table-striped table-bordered table-hover">
					
				<c:forEach items="${list}" var="destination">
					<tr>
		
					<th rowspan="3" width="300px";><a class='move' href=<c:out value="${destination.num}"/>>
						<img src="${destination.firstImg}"  width="500"></a></th>
		
					<td><a class='move' href=<c:out value="${destination.num}"/>>
						<c:out value="${destination.title}"/>
					</tr>
						<td><a class='move' href=<c:out value="${destination.num}"/>>
						<c:out value="${destination.content}"/>
					<tr>
						<td><a class='move' href=<c:out value="${destination.num}"/>>
						<c:out value="${destination.address}"/>
					</tr>
					
				</c:forEach>
			</table>
				<!-- 페이지 처리 Start -->
				<div class="pull-right" align="center">
					<ul class="pagination">

						<c:if test="${pageMaker.prev }">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage-1}"><</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active" : "" }">
								<a href="${num }">${num }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next }">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage+1}">></a></li>
						</c:if>
					</ul>
				</div>
				<!-- 페이지 처리 End -->
				
				<form id="actionForm" action="../destination/list.do" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				</form>
				
			<div>
			<button id="writebtn" type="button" style="float: left;">글등록</button>
			</div>
	</div>
	<script>
		$("#writebtn").on("click", function() {
			self.location = "/destination/register.do";
		});
		
		$(".move").on("click",function(e) {
			e.preventDefault();
			console.log('test-------------');
			actionForm.append("<input type = 'hidden' name = 'num' value= '"+ $(this).attr("href")+ "'>");
			actionForm.attr("action","/destination/get.do");
			actionForm.submit();
		});
		
		var actionForm = $("#actionForm");
		$(".paginate_button a").on(
				"click",
				function(e) {
					e.preventDefault();
					console.log('click');
					actionForm.find("input[name='pageNum']")
							.val($(this).attr("href"));
					actionForm.submit();
				});
		
		

	</script>

</body>
</html>