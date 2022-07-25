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

	.table-enroll{width:100%;}
	
</style>
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-review">		
		
		<div class="container">
		
			<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">식당 등록</h1>
			
			<hr noshade size = 1 style="background:black;">
			
			<form action="">

				<table class="table-enroll" style="border:1px solid black;">

					<tr>
						<td>
							<div class="enroll-1">
								<img src="" alt="">
								* 식당 사진 첨부하기
								<input type="file">
							</div>
						</td>
						<td>식당명/식당주소/전화번호 넣는곳
							<div class="enroll-2">
								
							</div>
						</td>						
					</tr>

					<tr>
						<td>지도 넣는곳
							<div class="enroll-3">
								
							</div>
						</td>
						<td>식당소개글 넣는곳
							<div class="enroll-4">
								
							</div>
						</td>						
					</tr>

					<tr>
						<td>메뉴사진 넣는곳
							<div class="enroll-5">
								
							</div>
						</td>
						<td>인기메뉴/인기메뉴 설명 넣는곳
							<div class="enroll-6">
								
							</div>
						</td>						
					</tr>

					<tr>
						<td>운영시간/브레이크시간 넣는곳
							<div class="enroll-7">
								
							</div>
						</td>
						<td>휴무일(체크)/네이버주소/식당사이트주소 넣는곳
							<div class="enroll-8">
								* 휴무일 : 
								<br>
								* 네이버 주소 : 
								<input type="url">
								* 식당사이트 주소 : 
								<input type="url">
							</div>
						</td>						
					</tr>

				</table>

			</form>
	
		</div>
		
	</div>
	
	
</body>
</html>