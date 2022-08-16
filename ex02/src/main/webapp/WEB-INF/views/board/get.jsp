<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>
<div class="row">
   <div class="col-lg-12">
      <h1 class="page-header">Tables</h1>
   </div>
   <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
   <div class="col-lg-12">
      <div class="panel panel-default">
         <div class="panel-heading">
            Board Read Page
         </div>
         <!-- /.panel-heading -->
         <div class="panel-body">
              <div class="form-group">
                 <label>Bno</label>
                 <input name="bno" class="form-control" readonly="readonly" value='<c:out value="${board.bno}"/>'><br>
              </div>
              <div class="form-group">
                 <label>Title</label>
                 <input name="title" class="form-control" readonly="readonly" value='<c:out value="${board.title}"/>'><br>
              </div>
              <div class="form-group">
                 <label>Text area</label>
                 <textarea class="form-control" rows="3" name="content" readonly="readonly"><c:out value="${board.content}"/></textarea><br>
              </div>
              <div class="form-group">
                 <label>Writer</label>
                 <input name="writer" class="form-control" readonly="readonly" value='<c:out value="${board.writer}"/>'><br><br>
              </div>
               
              <button data-oper='modify' class="btn btn-default">Modify</button>
              <button data-oper='list' class="btn btn-info">List</button>
              
              <form id="operForm" action="/board/modify" method="get">
              	<input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno}"/>'>
              	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
              	<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
              	<input type="hidden" name="type" value="${cri.type}"> 
				<input type="hidden" name="keyword" value="${cri.keyword}">
              </form>
         </div>
      <!-- /.panel-body -->
      </div>
      <!-- /.panel -->
   </div>
   <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<!-- ---------------------------------------------------------- -->
<style>
	.chat {
		background:#eee;
		cursor:pointer;
	}
</style>

<!-- /.row -->
<div class="row">
   <div class="col-lg-12">
      <div class="panel panel-default">
         <div class="panel-heading">
             <i class="fa fa-comments fa-fw"></i>Ready 
         </div>
         <!-- /.panel-heading -->
         <div class="panel-body">
         	<ul class="chat">
         		<li class="left clearfix" data-rno='12'>
         			<div>
         				<div class="header">
         					<strong class="primary-font">user00</strong>
         					<small class="pull-right text-muted">2018-01-01 12:12</small>
         				</div>
         				<p>댓글 테스트</p>
         			</div>
         		</li>
         	</ul>
         </div>
     	 <!-- /.panel-body -->
      </div>
      <!-- /.panel -->
   </div>
   <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<script type="text/javascript" src="/resources/js/reply.js"></script>

<script>
	
$(document).ready(function(){
	var bnoValue = '<c:out value="${board.bno}"/>'
	var replyUL = $(".chat");

	showList(1);
	function showList(page){
		replyService.getList(
			{bno:bnoValue, page:page || 1},
			function(list){
				var str="";
				if(list == null || list.length==0){
					replyUL.html("");
					return;
				}
				for(var i=0, len = list.length || 0; i<len; i++){
					str += "<li class='left clearfix' data-rno='"+list[i].rno+"'>";
					str += "<div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>";
					str += "<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small></div>";
					str += "<p>"+list[i].reply+"</p></div></li>";
				}
				replyUL.html(str);
			}
		)//end Service
	}//end showList
});
	
	/* replyService.get(11, function(data){
		alert(data);
		console.log(data);
	}); */
	
	/* replyService.update(
		{rno:8, reply:'Modified Reply..', replyer:"suuu"},
		function(result){
			alert("수정 완료");
		}
	); */
	
	/* replyService.remove(13, function(result){
		console.log(result);
		if(result === "success") { 
			alert("Removed");
		}
	},
	function(err){
		alert("Error");
	}
	); */
	
	/* replyService.getList(
		{bno:bnoValue, page:1},
		function (list) {
			for(var i=0, len = list.length || 0; i<len; i++){
				console.log(list[i]);
			}
		}
	) */
	
	/* replyService.add(
		{reply:"JS TEST11", replyer:"tester22", bno:bnoValue},
		function(result){
			alert("RESULT : " + result);
		}
	); */
	
</script>

<script>
	var operForm = $("#operForm");
	
	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action", "/board/modify").submit();
	});
	
	$("button[data-oper='list']").on("click", function(e){
		operForm.find("#bno").remove();
		operForm.attr("action", "/board/list");
		operForm.submit();
	});
</script>

<%@ include file="../includes/footer.jsp"%>