<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]식당등록</title>
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
		margin-top:3%;
		text-align:left;
		background:rgb(231, 216, 241);
		height:60px;
	}
	
	.review-sum h2{
		margin-top:0.3%;
		margin-left:3%;
	}
	
	.review-total{
		margin-top:2%;
		text-align:left;
		background:rgb(231, 216, 241);
		height:60px;
	}
	
	.review-total h2{
		margin-top:0.3%;
		margin-left:3%;
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
		margin-top:2%;	
	}
	
	.review-table{
		margin-top:2%;	
	}
	
</style>
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
					<li>리뷰 10개 이상 작성시 신뢰 리뷰어 등급으로 자동등업됩니다.</li>
					<li>한달간 최소 100자 이상의 리뷰 10개 이상 작성시 한달 최대 5000원의 적립금이 지급됩니다.</li>
					<li>의미없거나 악의적인 리뷰 작성시 무통보 삭제 될 수 있습니다.</li>
	
				</ul>			
			
			</div>
		

			<div class="review-sum">
				
				&nbsp;<h2>이번달 작성한<span style="color:rgb(168, 99, 221);"> my리뷰</span> : <span>xx건(수정)한달간리뷰갯수들어갈자리</span></h2>
				
			</div>
		
		
			<div class="review-total">
			
				&nbsp;<h2>그동안 작성한<span style="color:rgb(168, 99, 221);"> my리뷰</span> : <span>xx건(수정)그동안리뷰갯수들어갈자리</span></h2>
			
			</div>
				
			<h2 class="review-text">* 리뷰 작성 내역</h2>
												
			<div class="review-table">
			
				<table class="rwd-table">
				    <tbody>
				      <tr>
				        <th></th>
				        <th>작성일</th>
				        <th>식당명/상품명</th>
						<th>리뷰구분</th>
						<th>별점</th>
						<th>작성내역</th>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>김밥천국</td>
						<td>식당</td>
				        <td>4.0</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>고메짬뽕</td>
						<td>밀키트</td>
				        <td>4.5</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>김밥천국</td>
						<td>식당</td>
				        <td>4.0</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>고메짬뽕</td>
						<td>밀키트</td>
				        <td>4.5</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>김밥천국</td>
						<td>식당</td>
				        <td>4.0</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>고메짬뽕</td>
						<td>밀키트</td>
				        <td>4.5</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>김밥천국</td>
						<td>식당</td>
				        <td>4.0</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>고메짬뽕</td>
						<td>밀키트</td>
				        <td>4.5</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>김밥천국</td>
						<td>식당</td>
				        <td>4.0</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>xxxx-xx-xx</td>
				        <td>고메짬뽕</td>
						<td>밀키트</td>
				        <td>4.5</td>
				        <td><button class="btn1">보기 및 수정</button></td>
				      </tr>
				    </tbody>
		  		</table>
			
			</div>
			
			<div class="review-page">

					<h2>페이징 버튼 넣기</h2>

				</div>

				<div class="review-enroll">

					<button class="btn1"><strong>리뷰 등록</strong></button>
					<button class="btn1"><strong>리뷰 삭제</strong></button>

				</div>
		
			
		</div>
		
	</div>
	
	
</body>
</html>