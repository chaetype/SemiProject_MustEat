<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당등록</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
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

      margin-top: 60px;
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
<!-- 제이쿼리 연동 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-review">		
		
		<div class="container">
		
			<h1 style="text-align:center; font-family: 'OTWelcomeRA' !important;">식당 등록</h1>
	
			<hr noshade size = 1 style="background:black;">


				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
					 
					  <form class="store-enroll-form" action="<%=request.getContextPath()%>/storeinsert.st" method="post" enctype="multipart/form-data" id="storeEnrollForm" style="margin-top:1%;">
						
						<input type="hidden"  name="storefulladdress" value="" id="tt" >
						<div class="row">
						  <div class="col-md-6 mb-3">
							<label for="store-name" style="color:#4B088A;"><b>* 식당명</b></label>
							<input type="text" class="form-control" name="storename" id="store-name"placeholder="식당명을 입력해주세요." required>
							<div class="invalid-feedback">
							  식당명을 입력해주세요.
							</div>
						  </div>
						  <div class="col-md-6 mb-3">
							<label for="store-phone" style="color:#4B088A;"><b>* 전화번호(-포함)</b></label>
							<input type="tel" class="form-control" name="storephone" id="store-phone" placeholder="전화번호를 입력해주세요. ex) xx-xxx-xxxx / xxx-xxx-xxxx" required>
						 	<div class="invalid-feedback">
							  전화번호를 입력해주세요.
						  </div>
						  </div>
						</div>
			  
						<div class="mb-3">
							<label for="store-address" style="color:#4B088A;"><b>* 식당주소</b></label>
							<br>
							<select name="sido" id="sido"></select>
							<select name="gugun" id="gugun"></select>	
							
							<script>						

								$('document').ready(function() {
								var area0 = ["시/도 선택","서울특별시","인천광역시", "경기도"];
								var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
								var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
								var area3 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
								

								// 시/도 선택 박스 초기화

								$("select[name^=sido]").each(function() {
								$selsido = $(this);
								$.each(eval(area0), function() {
								$selsido.append("<option value='"+this+"'>"+this+"</option>");
								});
								$selsido.next().append("<option value=''>구/군 선택</option>");
								});

								

								// 시/도 선택시 구/군 설정

								$("select[name^=sido]").change(function() {
								var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
								var $gugun = $(this).next(); // 선택영역 군구 객체
								$("option",$gugun).remove(); // 구군 초기화

								if(area == "area0")
								$gugun.append("<option value=''>구/군 선택</option>");
								else {
								$.each(eval(area), function() {
									$gugun.append("<option value='"+this+"'>"+this+"</option>");
								});
								}
								});
								
							
								});

							</script>
							
							<table>
								<tr>
									<td width="400px;">
										<input type="text" class="form-control" name="storeaddress" id="store-address" placeholder="나머지 주소를 입력해주세요. ex) 이태원로 177" required style="margin-top:1%;">
									</td>
									<td>
										<button type="button" class="btn btn-sm btn-primary" id="searchMap">클릭</button>
									</td>
								</tr>
								
							</table>
							<div class="invalid-feedback">
							  식당 주소를 입력해주세요.
							</div>
						</div>
												
						
						<div class="mb-3" id="store-map">

							<label for="store-map" style="color:#4B088A;"><b>* 식당지도</b></label>

							<div id="map" name="storemap" style="width:100%;height:350px;"></div>

							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ad501a6ae45c08e27025f470712da55&libraries=services"></script>
							<script>
							
							$(function(){
								storemap("서울 중구 회현동1가");
								
								
								$("#searchMap").click(function(){
									
									//console.log($("#sido").val());
									//console.log($("#gugun").val());
									//console.log($("#store-address").val());
									storemap( $("#sido").val() + " " +  $("#gugun").val() + " " + $("#store-address").val());
									$("#tt").val($("#sido").val() + " " +  $("#gugun").val() + " " + $("#store-address").val());
									
								})							
								
							})
							
																					
							function storemap(fullAddress){
								
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
							
							geocoder.addressSearch(fullAddress, function(result, status) {

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
										content: '<div style="width:150px;text-align:center;padding:6px 0;">입력한 식당 위치를 확인해주세요.</div>'
									});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								} 
							});   
							}
							
							 
							</script>
							

						</div>

						<div class="mb-3">

							<table>
								<tr>
									<td><label for="store-img" style="color:#4B088A;"><b>* 식당사진</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									<td><input type="file" name="storeimg"></td>
								</tr>
								<tr>
									<td colspan="2">
										<img src="" alt="" width="200" height="180" style="margin-top:3%;">
									</td>
								</tr>
							</table>
							
						</div>

						<div class="mb-3">
						  <label for="store-introduce" name="storeintro" style="color:#4B088A;"><b>* 식당소개</b></label>
						  <br>
						  <textarea name="storeintro" id="store-introduce" cols="145" rows="10" onkeyup="counter1(this, 1200)" style="resize:none; border:1px solid lightgrey;"></textarea>
						  <div style="text-align:right; margin-right:1%;"><span id="store-count">0 / 1200</span></div>
						  <div class="invalid-feedback">
							식당 소개글을 입력해주세요.
						  </div>
						</div>
						
						<script>
							
							function counter1(text, length){
								var limit = length;
								var str = text.value.length;
								if(str>limit){
									document.getElementById("store-count").innerHTML = "1200자 이상 입력했습니다.";
									text.value = text.value.substring(0, limit);
									text.focus();
								}
								document.getElementById("store-count").innerHTML = text.value.length + "/" + limit;
							}						

						</script>
			  
						<div class="mb-3">
							<label for="store-menu" name="storemenu" style="color:#4B088A;"><b>* 인기메뉴</b></label>
						  <input type="text" class="form-control" name="storemenu" id="store-menu" placeholder="인기메뉴를 입력해주세요.">
						  <div class="invalid-feedback">
							인기메뉴를 입력해주세요.
						  </div>
						</div>

						<div class="mb-3">

							<table>
								<tr>
									<td><label for="menu-img" style="color:#4B088A;"><b>* 인기메뉴사진</b>&nbsp;&nbsp;&nbsp;</label></td>
									<td><input type="file" name="storemenuimg"></td>
								</tr>
								<tr>
									<td colspan="2">
										<img src="" alt="" width="200" height="180" style="margin-top:3%;">
									</td>
								</tr>
							</table>
							
						</div>

						<div class="mb-3">
							<label for="menu-introduce" style="color:#4B088A;"><b>* 인기메뉴 설명</b></label>
							<br>
							<textarea name="storemenuintro" id="menu-introduce" cols="145" rows="10" onkeyup="counter2(this, 600)" style="resize:none; border:1px solid lightgrey;"></textarea>
						  <div style="text-align:right; margin-right:1%;"><span id="menu-count">0 / 600</span></div>
						  <div class="invalid-feedback">
							인기메뉴 설명을 입력해주세요.
						  </div>
						</div>
						
						<script>
						
							function counter2(text, length){
								var limit = length;
								var str = text.value.length;
								if(str>limit){
									document.getElementById("menu-count").innerHTML = "600자 이상 입력했습니다.";
									text.value = text.value.substring(0, limit);
									text.focus();
								}
								document.getElementById("menu-count").innerHTML = text.value.length + "/" + limit;
							}	
							
						</script>

						<div style="margin-top:3%;">

							<table>
								<div class="mb-3">
									<tr>
										<td><label for="store-operating-start" style="color:#4B088A;"><b>* 운영시간</b></label></td>
										<td><input type="time" name="storeoperating1" id="store-operating-start">&nbsp;~&nbsp;<input type="time" name="storeoperating2" id="store-operating-end"></td>
									</tr>
									<div class="invalid-feedback">
										운영시간을 입력해주세요.
									</div>
								</div>
								<div class="mb-3">
									<tr>
										<td><label for="store-break-start" style="color:#4B088A;"><b>* 브레이크타임</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><input type="time" name="storebreak1" id="store-break-start">&nbsp;~&nbsp;<input type="time" name="storebreak2" id="store-break-end"></td>
									</tr>
									<div class="invalid-feedback">
										브레이크 타임을 입력해주세요.
									</div>
								</div>
							</table>
							
						</div>

						<br>
						
						<div class="mb-3">
							<label for="store-naver" style="color:#4B088A;"><b>* 네이버 주소 URL</b></label>
						  <input type="url" name="storenaverurl" class="form-control" id="store-naver" placeholder="네이버 주소 url을 입력해주세요.">
						  <div class="invalid-feedback">
							네이버 주소 URL을 입력해주세요.
						  </div>
						</div>

						<div class="mb-3">
							<label for="store-url" style="color:#4B088A;"><b>* 식당 주소 URL</b></label>
						  <input type="text" name="storeurl" class="form-control" id="store-url" placeholder="식당 주소 url을 입력해주세요.">
						  <div class="invalid-feedback">
							식당 주소 URL을 입력해주세요.
						  </div>
						</div>

						<div class="mb-3">
							<table>
								<tr>
									<td><label for="storeholiday" name="storeholiday" style="color:#4B088A;"><b>* 휴무일</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									<td>
										<input type="checkbox" name="storeholiday" id="mon" value="월">
										<lable for="mon">월</lable>&nbsp;&nbsp;
										<input type="checkbox" name="storeholiday" id="tue" value="화">
										<lable for="tue">화</lable>&nbsp;&nbsp;
										<input type="checkbox" name="storeholiday" id="wed" value="수">
										<lable for="wed">수</lable>&nbsp;&nbsp;
										<input type="checkbox" name="storeholiday" id="thu" value="목">
										<lable for="thu">목</lable>&nbsp;&nbsp;
										<input type="checkbox" name="storeholiday" id="fri" value="금">
										<lable for="fri">금</lable>&nbsp;&nbsp;
										<input type="checkbox" name="storeholiday" id="sat" value="토">
										<lable for="sat">토</lable>&nbsp;&nbsp;
										<input type="checkbox" name="storeholiday" id="sun" value="일">
										<lable for="sun">일</lable>
									</td>
								</tr>
								<div class="invalid-feedback">
									휴무일을 입력해주세요.
								</div>
								
								<div class="mb-3">
									<table>
										<tr>											
											
											
											<!-- 분위기 체크박스 체크 3개 제한 -->
												<script type="text/javascript">
													
													function countChecked(obj) {
														var storemood = document.getElementsByName("storemood");
														var count = 0;
														for(var i = 0; i < storemood.length; i++) {
															if(storemood[i].checked){
																count++;
															}
														}
														if(count > 3) {
															alert("3개까지 체크할 수 있습니다.");
															obj.checked = false;
															return false;
														}
													}
												
												</script>
											
												<td><label for="storemood" style="color:#4B088A;"><b>* 분위기 태그</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
												<td>
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood1" value="가성비좋은">
												<lable for="mood1">가성비좋은</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood2" value="분위기좋은">
												<lable for="mood2">분위기좋은</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood3" value="격식있는">
												<lable for="mood3">격식있는</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood4" value="고급스러운">
												<lable for="mood4">고급스러운</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood5" value="시끌벅적한">
												<lable for="mood5">시끌벅적한</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood6" value="조용한">
												<lable for="mood6">조용한</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" name="storemood" id="mood7" value="깔끔한">
												<lable for="mood7">깔끔한</lable>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="CountChecked(this);" name="storemood" id="mood8" value="이색적인">
												<lable for="mood8">이색적인</lable>																				
											</td>
										</tr>
										<div class="invalid-feedback">
											분위기 태그를 입력해주세요.
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