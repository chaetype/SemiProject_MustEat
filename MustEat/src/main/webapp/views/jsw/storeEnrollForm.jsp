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
		margin-top:2%;
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-review">		
		
		<div class="container">

			<!-- <h1 style="font-family: 'OTWelcomeRA'; text-align:left;">식당 등록</h1>
	
			<hr noshade size = 1 style="background:black;"> -->
		


				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
					  <h2 class="mb-3" style="color:rgb(167, 112, 239)"><strong>식당등록</strong></h2>

					  <hr class="row" style="margin-top:3%;">
					 
					  <form class="store-enroll-form" action="" style="margin-top:2%;">

						<div class="row">
						  <div class="col-md-6 mb-3">
							<label for="store-name"><b>식당명</b></label>
							<input type="text" class="form-control" id="store-name" placeholder="식당명을 입력해주세요." value="" required>
							<div class="invalid-feedback">
							  식당명을 입력해주세요.
							</div>
						  </div>
						  <div class="col-md-6 mb-3">
							<label for="store-phone"><b>전화번호(-포함)</b></label>
							<input type="tel" class="form-control" id="store-phone" placeholder="전화번호를 입력해주세요." required>
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
						
						<div class="mb-3" id="store-map">

							<label for="store-map"><b>식당지도</b></label>

							<div id="map" style="width:100%;height:350px;"></div>

							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ad501a6ae45c08e27025f470712da55&libraries=services"></script>
							<script>
							var mapContainer = document.getElementById('store-map'), // 지도를 표시할 div 
								mapOption = {
									center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
									level: 3 // 지도의 확대 레벨
								};  

							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 

							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();

							// 주소로 좌표를 검색합니다 // *식당 주소 넣기*
							geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map: map,
										position: coords
									});

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow({
										content: '<div style="width:150px;text-align:center;padding:6px 0;">*식당이름넣기*</div>'
									});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								} 
							});    
							</script>
							

						</div>

						<div class="mb-3">

							<table>
								<tr>
									<td><label for="store-img"><b>식당사진</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									<td><input type="file"></td>
								</tr>
								<tr>
									<td colspan="2">
										<img src="" alt="" width="200" height="180" style="margin-top:3%;">
									</td>
								</tr>
							</table>
							
						</div>

						<div class="mb-3">
						  <label for="store-introduce"><b>식당소개</b></label>
						  <br>
						  <textarea name="store-introduce" id="store-introduce" cols="145" rows="10" style="resize:none; border:1px solid lightgrey;"></textarea>
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

							<table>
								<tr>
									<td><label for="menu-img"><b>인기메뉴사진</b>&nbsp;&nbsp;&nbsp;</label></td>
									<td><input type="file"></td>
								</tr>
								<tr>
									<td colspan="2">
										<img src="" alt="" width="200" height="180" style="margin-top:3%;">
									</td>
								</tr>
							</table>
							
						</div>

						<div class="mb-3">
							<label for="menu-introduce"><b>인기메뉴 설명</b></label>
							<br>
							<textarea name="store-introduce" id="store-introduce" cols="145" rows="10" style="resize:none; border:1px solid lightgrey;"></textarea>
						  <div class="invalid-feedback">
							인기메뉴 설명을 입력해주세요.
						  </div>
						</div>

						<div style="margin-top:3%;">

							<table>
								<div class="mb-3">
									<tr>
										<td><label for="store-operating-start"><b>운영시간</b></label></td>
										<td><input type="time" id="store-operating-start">~<input type="time" id="store-operating-end"></td>
									</tr>
									<div class="invalid-feedback">
										운영시간을 입력해주세요.
									</div>
								</div>
								<div class="mb-3">
									<tr>
										<td><label for="store-break-start"><b>브레이크타임</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><input type="time" id="store-break-start">~<input type="time"id="store-break-end"></td>
									</tr>
									<div class="invalid-feedback">
										브레이크 타임을 입력해주세요.
									</div>
								</div>
							</table>
							
						</div>

						<br>
						
						<div class="mb-3">
							<label for="store-naver"><b>네이버 주소 URL</b></label>
						  <input type="url" class="form-control" id="store-naver" placeholder="네이버 주소 url을 입력해주세요.">
						  <div class="invalid-feedback">
							네이버 주소 URL을 입력해주세요.
						  </div>
						</div>

						<div class="mb-3">
							<label for="store-url"><b>식당 주소 URL</b></label>
						  <input type="text" class="form-control" id="store-url" placeholder="식당 주소 url을 입력해주세요.">
						  <div class="invalid-feedback">
							식당 주소 URL을 입력해주세요.
						  </div>
						</div>

						<div class="mb-3">
							<table>
								<tr>
									<td><label for="store-holiday"><b>휴무일</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									<td>
										<input type="checkbox" id="store-holiday">월
										<input type="checkbox" id="store-holiday">화
										<input type="checkbox" id="store-holiday">수
										<input type="checkbox" id="store-holiday">목
										<input type="checkbox" id="store-holiday">금
										<input type="checkbox" id="store-holiday">토
										<input type="checkbox" id="store-holiday">일
									</td>
								</tr>
								<div class="invalid-feedback">
									휴무일을 해주세요.
								</div>
							</table>
						</div>			  
						
						<hr class="row">
						
						<span style="color:red;"><strong>최종 등록 전, 입력 정보를 다시 한번 확인해주세요.</strong></span>
						
						<div class="mb-4"></div>
						<button class="btn1" type="submit">등록하기</button>

					  </form>
					</div>


		</div>
		
	</div>
	
	
</body>
</html>