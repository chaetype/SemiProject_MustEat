<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.store.model.vo.Store"%>
<%
	Store s = (Store)request.getAttribute("Store");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당정보수정</title>
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
		
			<h1 style="text-align:center; font-family: 'OTWelcomeRA' !important;">식당 수정</h1>
	
			<hr noshade size = 1 style="background:black;">


				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
					 
					  <form class="store-update-form" action="<%=request.getContextPath()%>/storelistUpdate.st" method="post" enctype="multipart/form-data" id="storeUpdateForm" style="margin-top:1%;">
						<input type="hidden" name="no" value="<%=s.getStoreNo()%>">
						<input type="hidden"  name="storefulladdress" value="" id="tt" >
					
						<div class="row">
						  <div class="col-md-6 mb-3">
							<label for="store-name" style="color:#4B088A;"><b>* 식당명</b></label>
							<input type="text" class="form-control" name="storename" id="store-name" value="<%=s.getStoreName()%>">

						  </div>
						  <div class="col-md-6 mb-3">
							<label for="store-phone" style="color:#4B088A;"><b>* 전화번호(-포함)</b></label>
							<input type="tel" class="form-control" name="storephone" id="store-phone" value="<%=s.getStorePhone()%>">
						 	<div class="invalid-feedback">
							  전화번호를 입력해주세요.
						  </div>
						  </div>
						</div>
			  
						<div class="mb-3">
							<label for="store-address" style="color:#4B088A;"><b>* 식당주소</b></label>
							<input type="text" class="form-control" name="storefulladdress" id="store-address" value="<%=s.getStoreAddress()%>">
											

						</div>

						<div class="mb-3">

							<table>
								<tr>
									<td><label for="store-img" style="color:#4B088A;"><b>* 식당사진</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									<td><input type="file" name="storeimg"></td>
								</tr>
								
							</table>
							
						</div>

						<div class="mb-3">
						  <label for="store-introduce" name="storeintro" style="color:#4B088A;"><b>* 식당소개</b></label>
						  <br>
						  <textarea name="storeintro" id="store-introduce" cols="145" rows="10" onkeyup="counter1(this, 1200)" style="resize:none; border:1px solid lightgrey;"><%=s.getStoreIntro()%></textarea>
						 						
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
						  <input type="text" class="form-control" name="storemenu" id="store-menu"  value="<%=s.getStorePopularity()%>">
					
						</div>

						<div class="mb-3">

							<table>
								<tr>
									<td><label for="menu-img" style="color:#4B088A;"><b>* 인기메뉴사진</b>&nbsp;&nbsp;&nbsp;</label></td>
									<td><input type="file" name="storemenuimg"></td>
								</tr>
							</table>
							
						</div>

						<div class="mb-3">
							<label for="menu-introduce" style="color:#4B088A;"><b>* 인기메뉴 설명</b></label>
							<br>
							<textarea name="storemenuintro" id="menu-introduce" cols="145" rows="10" style="resize:none; border:1px solid lightgrey;"><%= s.getStorePopInfo() %></textarea>
						  <div class="invalid-feedback">
							인기메뉴 설명을 입력해주세요.
						  </div>
						</div>

						<div style="margin-top:3%;">

								<table>
								<div class="mb-3">
									<tr>
										<td><label for="store-operating-start" style="color:#4B088A;"><b>* 운영시간</b></label></td>
										<td><input type="text" name="storeoperating" id="storeoperating" value="<%=s.getStoreOperating()%>"></td>
									</tr>
									<div class="invalid-feedback">
										운영시간을 입력해주세요.
									</div>
								</div>
								<div class="mb-3">
									<tr>
										<td><label for="store-break-start" style="color:#4B088A;"><b>* 브레이크타임</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><input type="text" name="storebreak" id="storebreak" value="<%=s.getStoreBreaktime()%>"></td>
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
						  <input type="text" name="storenaverurl" class="form-control" id="store-naver" value="<%=s.getNaverAddress()%>">
						  
						</div>

						<div class="mb-3">
							<label for="store-url" style="color:#4B088A;"><b>* 식당 주소 URL</b></label>
						  <input type="text" name="storeurl" class="form-control" id="store-url" value="<%=s.getStoreUrl()%>">
						 
						</div>

						<div class="mb-3">
							<table>
								<tr>
									<td><label for="storeholiday" name="storeholiday" style="color:#4B088A;"><b>* 휴무일</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									<td>
										<input type="text" name="storeholiday" id="storeholiday" value="<%=s.getDayOff()%>">
									</td>
								</tr>
								</table>
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
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood1" value="가성비좋은">
												<label for="mood1">가성비좋은</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood2" value="분위기좋은">
												<label for="mood2">분위기좋은</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood3" value="격식있는">
												<label for="mood3">격식있는</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood4" value="고급스러운">
												<label for="mood4">고급스러운</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood5" value="시끌벅적한">
												<label for="mood5">시끌벅적한</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood6" value="조용한">
												<label for="mood6">조용한</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="countChecked(this);" class="storemood" name="storemood" id="mood7" value="깔끔한">
												<label for="mood7">깔끔한</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" onclick="CountChecked(this);" class="storemood" name="storemood" id="mood8" value="이색적인">
												<label for="mood8">이색적인</label>																				
											</td>
										</tr>
																		
										
									</table>
									
									<script>
									$(function(){
										
										const storemood = "<%=s.getStoreTag()%>";
										
										$("input[type=checkbox]").each(function(){
											if( storemood.search( $(this).val() ) != -1){
												$(this).attr("checked", true);
											}
										})
										
									})
								</script>
									
								</div>				  
						
						<hr class="row">
						
						<span style="color:red;"><strong>입력 정보를 다시 한번 확인해주세요.</strong></span>
						
						<div class="mb-4" style="text-align:center; margin-top:4%;">
						<button class="btn1" type="submit" style="color:blue;">수정완료</button>
						<button class="btn1" type="button" style="color:black;" onclick="history.back();">뒤로가기</button>
						</div>

					  </form>
					</div>


		</div>
		
	</div>
	
	
</body>
</html>