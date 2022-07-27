<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<style>
	.outer{
		width:700px
	}
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
		
		
		
		
		
		<div class="outer">
			
				<div class="col-md-5" style="display:inline-block;vertical-align:top;">
					<img style="display:flex" width="300" height="300" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAUg">
					 
				</div>
				

				
			
				<div style="display:inline-block; margin-left: 50px;" >
					<h3>상품이름넣을곳</h3>
					<p>상품설명넣을곳<p>
					<p><b>판매단위: </b></p>
					<p><b>중량/용량: </b></p>
					<p><b>배송구분: </b></p>
                    <p><b>포장타입: </b></p>
                    <p><b>알레르기정보: </b></p>
                    <p><b>유통기한: </b></p>
                    <p><b>구매수량: </b></p>
					</div>

					<div align="right">	
						<hr>
						<h4>~~~~~원</h4>
						<button class="btn1">리뷰</button>
						<button class="btn1">바로구매</button>
						<button class="btn1">장바구니</button>
					</div>
				</div>
			
			<hr>

			<link rel="stylesheet" href="/css/bootstrap.css">
		</head>
		<body>
		<div class="container">
			<form id="commentForm" name="commentForm" method="post">
			<br><br>
				<div>
					<div>
						<span><strong>Review</strong></span> <span id="cCnt"></span>
					</div>
					<div>
						<table class="table">                    
							<tr>
								<td>
									<textarea style="width: 1100px" rows="3" cols="20" id="comment" name="comment" placeholder="리뷰를 입력하세요" style="resize:none"></textarea>
									<br>
									<div>
										<button class="btn1" align="right"><a href='#' onClick="fn_comment('${result.code }')" class="btn pull-right btn-success" style="text-decoration:none; color:black" >등록</a></button>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<input type="hidden" id="b_code" name="b_code" value="${result.code }" />        
			</form>
		</div>
		<div class="container">
			<form id="commentListForm" name="commentListForm" method="post">
				<div id="commentList">
				</div>
			</form>
		</div>
		 
		<script>
		/*
		 * 댓글 등록하기(Ajax)
		 */
		function fn_comment(code){
			
			$.ajax({
				type:'POST',
				url : "<c:url value='/board/addComment.do'/>",
				data:$("#commentForm").serialize(),
				success : function(data){
					if(data=="success")
					{
						getCommentList();
						$("#comment").val("");
					}
				},
				error:function(request,status,error){
					//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			   }
				
			});
		}
		 
		/**
		 * 초기 페이지 로딩시 댓글 불러오기
		 */
		$(function(){
			
			getCommentList();
			
		});
		 
		/**
		 * 댓글 불러오기(Ajax)
		 */
		function getCommentList(){
			
			$.ajax({
				type:'GET',
				url : "<c:url value='/board/commentList.do'/>",
				dataType : "json",
				data:$("#commentForm").serialize(),
				contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
				success : function(data){
					
					var html = "";
					var cCnt = data.length;
					
					if(data.length > 0){
						
						for(i=0; i<data.length; i++){
							html += "<div>";
							html += "<div><table class='table'><h6><strong>"+data[i].writer+"</strong></h6>";
							html += data[i].comment + "<tr><td></td></tr>";
							html += "</table></div>";
							html += "</div>";
						}
						
					} else {
						
						html += "<div>";
						html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
						html += "</table></div>";
						html += "</div>";
						
					}
					
					$("#cCnt").html(cCnt);
					$("#commentList").html(html);
					
				},
				error:function(request,status,error){
					
			   }
				
			});
		}
		 
		</script>
		 


		</div>
		
		
</body>
</html>
