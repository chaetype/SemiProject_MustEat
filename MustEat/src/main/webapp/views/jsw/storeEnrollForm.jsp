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
	
	.hr-store{
		background:black;
	}
	
	/* li{
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

	.table-enroll{
		width:100%; 
		height:600px;
		margin-top:3%;
		line-height:40px;
	} */

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
	
</style>
 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-review">		
		
		<div class="container">

			<!-- <h1 style="font-family: 'OTWelcomeRA'; text-align:left;">식당 등록</h1>
	
			<hr noshade size = 1 style="background:black;"> -->
		
			<form action="">

				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
					  <h4 class="mb-3">식당등록</h4>
					  <form class="validation-form" novalidate>
						<div class="row">
						  <div class="col-md-6 mb-3">
							<label for="store-name"><b>식당명</b></label>
							<input type="text" class="form-control" id="store-name" placeholder="식당명을 입력해주세요." value="" required>
							<div class="invalid-feedback">
							  식당명을 입력해주세요.
							</div>
						  </div>
						  <div class="col-md-6 mb-3">
							<label for="store-phone"><b>전화번호</b></label>
							<input type="tel" class="form-control" id="store-phone" placeholder="(-포함)전화번호를 입력해주세요." required>
						 	<div class="invalid-feedback">
							  전화번호를 입력해주세요.
						  </div>
						  </div>
						</div>
			  
						<div class="mb-3">
							<label for="store-address"><b>식당주소</b></label>
							<input type="text" class="form-control" id="store-address" placeholder="도로명 주소를 입력해주세요." value="" required>
							<div class="invalid-feedback">
							  식당 주소를 입력해주세요.
							</div>
						</div>
			  
						<div class="mb-3">
						  <label for="store-introduce"><b>식당소개</b></label>
						  <input type="textarea" class="form-control" id="store-introduce" placeholder="식당 소개글을 입력해주세요." required>
						  <div class="invalid-feedback">
							식당 소개글을 입력해주세요.
						  </div>
						</div>
			  
						<div class="mb-3">
							<label for="store-menu"><b>인기메뉴</b></label>
						  <input type="text" class="form-control" id="store-menu" placeholder="인기메뉴를 입력해주세요.">
						  <div class="invalid-feedback">
							인기메뉴를 입력해주세요.
						  </div>
						</div>

						<div class="mb-3">
							<label for="menu-introduce"><b>인기메뉴</b></label>
						  <input type="text" class="form-control" id="menu-introduce" placeholder="인기메뉴 설명을 입력해주세요.">
						  <div class="invalid-feedback">
							인기메뉴 설명을 입력해주세요.
						  </div>
						</div>
			  
						<div class="row">
						  <div class="col-md-8 mb-3">
							<label for="root">가입 경로</label>
							<select class="custom-select d-block w-100" id="root">
							  <option value=""></option>
							  <option>검색</option>
							  <option>카페</option>
							</select>
							<div class="invalid-feedback">
							  가입 경로를 선택해주세요.
							</div>
						  </div>
						  <div class="col-md-4 mb-3">
							<label for="code">추천인 코드</label>
							<input type="text" class="form-control" id="code" placeholder="" required>
							<div class="invalid-feedback">
							  추천인 코드를 입력해주세요.
							</div>
						  </div>
						</div>
						<hr class="mb-4">
						<div class="custom-control custom-checkbox">
						  <input type="checkbox" class="custom-control-input" id="aggrement" required>
						  <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
						</div>
						<div class="mb-4"></div>
						<button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
					  </form>
					</div>

			</form>

		</div>
		
	</div>
	
	
</body>
</html>