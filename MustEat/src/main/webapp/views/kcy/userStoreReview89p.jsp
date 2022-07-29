<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.StoreReview"%>
<%ArrayList<StoreReview> list = (ArrayList<StoreReview>)request.getAttribute("list");%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">

<style>
	.wrap44{
		/* width: 80%;
		margin-left: 20%; */
		width: 80%;
		margin: auto;
	}
	.wrap55{
		display: inline-block;
	}

	.test1{
		display: inline-block;
	}

	.btn1{
		font-family: 'OTWelcomeRA';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
		font-weight: normal;
		font-style: normal;
	}
	.a222{
    	float:right;
    	color:red;
    	font-size:10px;
    	cursor:pointer;
    }
    
    .a222:hover{
    	background-color: rgb(231, 216, 241);
    	color: red;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap44">
	
		<h2 style="text-align:center">MZ RESTAURANT REVIEWS</h2>
		
		  <table class="rwd-table">
		  		<thead>
		  			<tr>
						<th>글번호</th>
						<th width="100">게시자</th>
						<th width="100">회원아이디</th>
						<th width="400">리뷰제목</th>
						<th>별점</th>
						<th width="200">게시일</th>
						<th width="100">비고</th>
					</tr>
		  		</thead>
				<tbody>
					<% if(list.isEmpty()) { %>
		                <!--case1. 게시글이 없을 경우-->
		                <tr>
		                    <td colspan="7">존재하는 게시글이 없습니다.</td>
		                </tr>
						<% }else { %>
		                <!--case2.신고글이 있을 경우-->
		                <td colspan="7"></td>
		                	<% for(StoreReview sr : list){ %>
			                <tr>
			                    <td><%=sr.getReNo()%></td>
			                    <td><%= sr.getReviewWriter()%></td>
			                    <td><%= sr.getReviewMemId()%></td>
			                    <td><%= sr.getReviewTitle()%></td>
			                    <td><%= sr.getReviewRate() %></td>
			                    <td><%= sr.getReviewEnrollDate()%></td>
			                    <td><%= sr.getMemLevel()%></td>
			                   
			                </tr>
                	<% } %>
				<% } %>
				
				
				

				</tbody>
		  	</table>
	
		<form action="test.do">
			<div class="test1">
			<select name="select11" style="height: 48px; margin: 10px;">
				<option value="name">게시자</option>
				<option vlaue="userId">회원아이디</option>
				<option value="reviewTitle">리뷰제목</option>
				<option selected>선택안함</option>
			</select>
			</div>
			<div class="wrap55">
				<div class="input-group mb-3">
					<input type="text" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
			<button class="btn1" style="float: right; margin:10px;">글쓰기</button>
		</form>
	</div>
	<br><br><br><br><br>
	
	
	
		<script>
    	$(function(){
    		$(".list-area>tbody>tr").click(function(){
    			const num = $(this).children().eq(0).text(); // 클릭했을때의 글번호
    			
    			// 요청할url?키=밸류&키=밸류... 
    			// 요청시전달값(키=밸류) => 쿼리스트링 
     			
    			// /web/detail.no?no=xx
    			location.href = '<%=contextPath%>/detail.rp?no=' + num;
    		})
    	})
    	
    </script> 
</body>
</html>