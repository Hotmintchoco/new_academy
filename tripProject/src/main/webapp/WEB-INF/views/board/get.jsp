<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
	table {width:800px; margin:10px auto 0;}
	section {width: 1000px; height: 1200px; background-color: #D5D5D5; margin:0 auto; margin-bottom: 25px;}
	section > h1 {text-align: center; line-height: 100px;}
	table, th, td  { border:1px solid #666; }
	th, td { height: 50px; text-align: center; }
	
	#buttons {margin-left : 450px; margin-top: 25px;}
	
	.chat {
      background: #eee;
      cursor: pointer;
   }
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
		<section>
			<h1>게시글</h1>
			<table>
				<tr>
					<td>글 번호</td>
					<td><c:out value="${board.board_num}"></c:out></td>
				</tr>
				<tr>
					<td>별명</td>
					<td>${board.user.nickName}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
					${board.board_content}
					</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.board_date}"/></td>
				</tr>
			</table>
			<div id="buttons">
				<c:choose>
					<c:when test="${board.usernum == user.userNum || user.admin == 0}">
						<button data-oper='modify' class="btn btn-default">수정</button>
		            	<button data-oper='remove' class="btn btn-info">삭제</button>
					</c:when>
				</c:choose>
			</div>
		</section>
		
		<form id="operForm" name="frm" action="/board/modify.do" method="get">
			<input type="hidden" name="num" value="${board.board_num}">
			<input type="hidden" name="usernum" value="${user.userNum}">
		</form>
	
     <!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-comments fa-fw"></i> Ready
						<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">New
							Reply</button>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<ul class="chat">
							<!-- <li class="left clearfix" data-rno='12'>
								<div>
									<div class="hearder">
										<strong class="primary-font">user00</strong>
										<samll class="pull-right text-muted">2022-08-18</samll>
									</div>
									<p>Testing</p>
								</div>
							</li> -->
						</ul>
					</div>
					<!-- /.panel-body -->
	
					<div class="panel-footer"></div>
	
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	<!-- /.row -->
	  
	</div> <!-- view -->
	
<!-- 댓글 모달창 시작 -->
   <!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog" tabindex="-1">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Reply Modal</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Reply</label> <input class="form-control" name="reply"
							value="New replyer">
					</div>
					<div class="form-group">
						<label>Reply Date</label> <input class="form-control"
							name="replyDate" value="">
					</div>
				</div>
				<div class="modal-footer">
					<button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
					<button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
					<button id="modalRegisterBtn" type="button" class="btn btn-info">Register</button>
					<button id="modalCloseBtn" type="button" class="btn btn-default"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<!-- 댓글 모달창 끝 -->

<script type="text/javascript" src="/resources/js/reply.js"></script> 

<script>
$(document).ready(function(){
	var usernum = document.frm.usernum.value;
	var num = document.frm.num.value;
	
	if(usernum == "") {
		console.log("유저의 값이 존재하지 않습니다");
		usernum = 0;
	}
	
    var replyUL = $(".chat");
   
   /*  <li class="left clearfix" data-rno='12'>
        <div>
           <div class="header">
              <strong class="primary-font">user00</strong>
              <small class="pull-right text-muted">2018-01-01 12:12</small>
           </div>
           <p>댓글 테스트</p>
        </div> 
        </li>*/
    showList(1);
  
   var modal = $("#myModal");    //$(".myModal");
   var modalInputReply = modal.find("input[name='reply']");
   var modalInputReplyDate = modal.find("input[name='replyDate']");
   
   var modalModBtn = $("#modalModBtn");
   var modalRemoveBtn = $("#modalRemoveBtn");
   var modalRegisterBtn = $("#modalRegisterBtn");
   
   modalRemoveBtn.on("click", function(){
      let rno = modal.data("rno");
     
      replyService.remove(rno, function(result){
         alert("result : " + result);
         modal.modal("hide");
         showList(pageNum);
      });
   }); //삭제하기
   
   modalModBtn.on("click", function(e){
      var reply = {
            rno : modal.data("rno"),
            reply : modalInputReply.val()
      };
      
      replyService.update(reply, function(result){
         alert("result : " + result);
         modal.modal("hide");
         showList(pageNum);
      });
   }); //수정하기
   
   
    $("#addReplyBtn").on("click",function(){
    	
    	if(usernum == 0) {
    		alert("로그인 후 작성해주세요.");
    		return false;
    	}
       
       modal.find("input").val("");
       modalInputReplyDate.closest("div").hide();
       modal.find("button[id != 'modalCloseBtn']").hide();
       
       modalRegisterBtn.show();
       $("#myModal").modal("show");
       
    });
    
    modalRegisterBtn.on("click", function(e){
       var replys = {
             reply : modalInputReply.val(),
             usernum : usernum,
             bno : num
       }  //javascript 객체
       
       replyService.add(replys,  function(result){
          alert("result : " + result);
          modal.find("input").val("");
          modal.modal("hide");
          showList(-1);
       });
       
    }); //Register 등록
    
	 //이벤트위임..시작
	 $(".chat").on("click", "li",function(){
	    var rno = $(this).data("rno");
	    
	    console.log(usernum);
	    
	    replyService.get(rno, function(reply){
	    	
	    	if(usernum == 0) {
	        	alert("로그인 후 사용해주세요.");
	        	return false;
	        }
	    	
	    	replyService.getUser(usernum, function(user){
	    		
		    	if(!(usernum == reply.usernum || user.admin == 0)){
		    		alert("관리자 혹은 본인만 접근 가능합니다.");
		    		console.log(usernum);
		    		console.log(usernum);
		    		
		    		return false;
		    	}
		       modalInputReply.val(reply.reply);
		       modalInputReplyDate.val(
		             replyService.displayTime(reply.replyDate)).attr("readonly", "readonly"); 
		       modal.data("rno", reply.rno);
		       
		       modal.find("button[id != 'modalClassBtn']").hide();
		       modalModBtn.show();
		       modalRemoveBtn.show();
		       
		       $("#myModal").modal("show");
		    });
	       
	    });
	    
		
	 });
	 //이벤트위임..끝
 
	 function showList(page){
	   
	    replyService.getList({bno:num, page : page||1},
	     
	          function(replyCnt, list){
	        
	           if(page == -1){
	              pageNum = Math.ceil(replyCnt/10.0);
	              showList(pageNum);
	              return ;
	           } 
	           
	           var str="";
	           if(list == null || list.length==0){
	              return ;
	           }
	           for(var i=0, len=list.length ||0 ; i<len; i++){
	              str += "<li class='left clearfix' data-rno=' "+list[i].rno+" '>";
	              str +=  "<div><div class='header'><strong class='primary-font'>" + list[i].user.nickName+ "</strong>";
	              str += "<small class='pull-right text-muted'>"+ replyService.displayTime(list[i].replyDate)  +"</small></div>";
	              str += "<p>"+ list[i].reply +"</p></div></li>";
	           }
	           replyUL.html(str);
	           showReplyPage(replyCnt);
	        } 
	    ); //end Service
	 } //end showList
	 
	//댓글 페이지 출력 부분
     var pageNum = 1;
     var replyPageFooter = $(".panel-footer");
     
     function showReplyPage(replyCnt){
        var endNum = Math.ceil(pageNum / 10.0) * 10;  
         var startNum = endNum - 9; 
         
         var prev = startNum != 1;
         var next = false;
         
         if(endNum * 10 >= replyCnt){
           endNum = Math.ceil(replyCnt/10.0);
         }
         
         if(endNum * 10 < replyCnt){
           next = true;
         }
        
       var str =  "<ul class='pagination pull-right' >";
       if(prev){
          str += "<li class='page-item'><a class='page-link' href=' "+ (stratNum-1) +" '>Previous</a></li>";
       }
       
       for(var i=startNum; i<=endNum; i++){
          var active = pageNum == i? "active" : "";
          str += "<li class='page-item "+active+"  '><a class='page-link' href=' "+ i +" '> "+ i +"    </a></li>";
       }
       
       if(next){
          str += "<li class='page-item'><a class='page-link' href=' "+ (endNum+1) +" '>Next</a></li>";
       }
       
       str += "</ul>";
       
       replyPageFooter.html(str);
     } // end showReplyPage
     
     replyPageFooter.on("click","li a", function(e){
           e.preventDefault();
           console.log("page click");
           
           var targetPageNum = $(this).attr("href");
           
           console.log("targetPageNum: " + targetPageNum);
           
           pageNum = targetPageNum;
           
           showList(pageNum);
      });    //end replyPageFooter
      
	var operForm = $("#operForm");
	console.log(num);
	$("button[data-oper='modify']").on("click", function(e) {
		operForm.attr("action", "/board/modify.do?" + num).submit();
	});
	$("button[data-oper='remove']").on("click", function(e) {
		operForm.attr("action", "/board/remove.do?" + num);
		operForm.submit();
	});
});
</script>	
</body>
</html>