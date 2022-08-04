<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.mz.member.model.vo.Member" %>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	int pu = (int)request.getAttribute("pu");
	int pd = (int)request.getAttribute("pd");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my리뷰</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<style>

	.wrap-review {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.hr-review{
		background:black;
	}
	
	li{
		margin:10px 0px;
	}
	
	.review-sum{
		margin-top:1%;
		text-align:left;
		height:70px;
	}
	
	.review-sum h2{
		margin-left:3%;
		margin-bottom:5%;
	}
	
	.review-total{
		margin-top:1%;
		text-align:left;
		height:70px;
	}
	
	.review-total h2{
		margin-left:3%;
		margin-bottom:5%;
	}
	
	.review-text{
		margin-left:1%;
		margin-top:3%;
		color:black;
		text-align:left;
	}
	
	.rwd-table{
		width:100%;	
	}
	
	.review-page{
		margin-top:3%;		
	}

	.review-enroll{
		margin-top:1%;	
	}
	
	.review-table{
		margin-top:2%;	
	}

	.point-category{font-family: 'Nanum Gothic Coding', monospace;}
	
	body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:2%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.page-link {
	    position: relative;
	    display: block;
	    color: #673AB7 !important;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #673AB7 !important;
	}
	
	
	.page-link:hover {
	    z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
	
	
	.page-link:focus {
		border-color: rgb(167, 112, 239) !important;
	    z-index: 3;
	    outline: 0;
	    box-shadow: none;
	}
	
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-review">
		
		<div class="container">
		
			<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">my리뷰 조회</h1>
	
			<hr class="hr-review" noshade size = 1 style="background:black;">
		
			<div class="membershipView" style="border:1px solid black; margin-top:3%;">
			
				<h2 style="text-align:left; margin-left:2%; margin-top:3%;">리뷰 작성 안내</h2>
				
				<hr class="hr-membership" noshade size = 1>
	
				<ul style="text-align:left; margin-top:2%;">
	
					<li>식당 리뷰 작성시 영수증 인증 필수입니다.</li>
					<li>리뷰 10개 이상 작성시 신뢰 리뷰어 등급으로 등업됩니다.</li>
					<li>한달간 리뷰 10개 이상 작성시 한달 최대 5000원의 적립금이 지급됩니다.</li>
					<li>의미없거나 악의적인 리뷰 작성시 무통보 삭제 될 수 있습니다.</li>
	
				</ul>			
			
			</div>
		

			<div class="review-sum" style="background:rgb(231, 216, 241)">
				
				&nbsp;<h2>이번달 작성한<span style="color:rgb(168, 99, 221);"> my리뷰</span> : <span>xx건(수정)한달간리뷰갯수들어갈자리</span></h2>
				
			</div>
		
		
			<div class="review-total" style="background:rgb(231, 216, 241)">
			
				&nbsp;<h2>그동안 작성한<span style="color:rgb(168, 99, 221);"> my리뷰</span> : <span>xx건(수정)그동안리뷰갯수들어갈자리</span></h2>
			
			</div>
				
			<h2 class="review-text">* 리뷰 작성 내역</h2>
												
			<div class="review-table">
			
				<table class="rwd-table">
				    <tbody>
				      <tr>
				        <th>작성일</th>
				        <th>식당명/상품명</th>
						<th>리뷰구분</th>
						<th>별점</th>
						<th>작성내역</th>
				      </tr>
				      <tr>
				      <% if(list.isEmpty()) { %>
	                  <!--case1. 게시글이 없을경우-->
	                  <tr>
	                      <td colspan="4">조회된 리뷰가 없습니다.</td>
	                  </tr>
					  <% }else { %>
	                  <!--case2. 게시글이 있을경우-->
	                  	<% for(Store s : list){ %>
		                  <tr>
		                  	  <td><%= s.getStoreEnrollDate() %></td>
		                      <td><%= s.getReviewEnrollDate() %></td>
		                      <td><%= s.getStoreName() %></td>
		                      <td><%= s.getRvCategory() %></td>	
		                      <td><button class="btn1">상세보기</button></td>		       
		                  </tr>   
	                      <% } %>        
	                  <% } %>
				        <td>xxxx-xx-xx</td>
				        <td>김밥천국</td>
						<td>식당</td>
				        <td>4.0</td>
				        <td><button class="btn1" style="height:40px;">상세보기</button></td>
				      </tr>
				      				      
				    </tbody>
		  		</table>
			
			</div>
			
			<div class="wrapper-paging">
					    
			    <nav aria-label="Page navigation example">
					<ul class="pagination">
					    <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item"><a class="page-link" href="#">4</a></li>
					    <li class="page-item"><a class="page-link" href="#">5</a></li>
					    <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
				    </ul>
				</nav>					
			
			</div>
			

					
			
		</div>
		
	</div>
	
	
</body>
</html>