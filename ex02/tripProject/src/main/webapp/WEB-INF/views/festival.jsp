<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>축제</title>
  <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
     <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
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
     
</style>
     
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title="âtop">
	<i class="fa-solid fa-circle-arrow-up"></i></a>
	
	<!-- header card -->
	
	<div class="card">
   
	</div>
	<br><br>
	
<div id="slider">
         <!-- 여기에 내용 넣으세요 -->
        
              <div class="panel-heading">
                           <h2>축제리스트</h2>
                          <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                          <button type="button" class="btn btn-light"><a href="#">등록</a></button>
			</div>
                        </div>
       
         
        <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">제목</th>
      <th scope="col">지역</th>
      <th scope="col">작성일자</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>바다</td>
      <td>제주도</td>
      <td>2022</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>청와대</td>
      <td>종로</td>
      <td>2022</td>
    </tr>
        <tr>
      <th scope="row">3</th>
      <td>월정교</td>
      <td>경주</td>
      <td>2022</td>
    </tr>
  </tbody>
<%--   <c:forEach items="${list }" var="board">
                                    <tr class="odd gradeX">
                                        <td><c:out value="${board.bno }"/></td>
                                        <td><c:out value="${board.title }"/></td>
                                        <td><c:out value="${board.writer }"/></td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate }"/></td>
                                    </tr>
                                </c:forEach> --%>
  
</table>



<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center" style="margin:20px 0">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>


 <div id = "map" style="width: 800px; height: 300px;"></div>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	
<!-- <script>
${document}.ready(function()){
	var result='<c:out value="${result}"/>';
	console.log("result"+result);
	
	checkModal(result);
	
	function checkModal(result){
		if(result ==="){
			return;
		}
		if(parselnt(result)>0){
			$(".modal-body").html("게시글"+parselnt(result)+"번이 등록되었습니다.");
			}
		$("#myModal").modal("show");
		
	}
	$("#regBtn").on("click",function()){
		self.location="/feditor/register";
	});
	
});

</script> -->

	</div>
        

    
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>