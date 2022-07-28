<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당/지역검색페이지</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>

	.wrap-search {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		width:100%;
		margin-top:5%;
		margin-bottom:5%;
		/* text-align: center; */
	}	

	.search-head{
		display:inline-block;
		width:100%;
	}
	
	@import url("https://fonts.googleapis.com/css2?family=Roboto&display=swap");

	.wrap-storelist {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-color: #fff;
	font-family: "Roboto", sans-serif;
	color: #10182f;
	}
	.container-storelist {
	display: flex;
	width: 1040px;
	justify-content: space-evenly;
	flex-wrap: wrap;
	}
	.card {
	margin: 10px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 2px 20px rgba(0, 0, 0, 0.2);
	overflow: hidden;
	width: 300px;
	}
	.card-header img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	}
	.card-body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
	padding: 20px;
	min-height: 250px;
	}

	.tag {
	background: #cccccc;
	border-radius: 50px;
	font-size: 12px;
	margin: 0;
	color: #8440b2;
	padding: 2px 10px;
	text-transform: uppercase;
	cursor: pointer;
	}

	.tag-purple {
	background-color: rgb(231, 216, 241);
	}

	.card-body p {
	font-size: 13px;
	}

	.user {
	display: flex;
	margin-top: auto;
	}

	.user-info h5 {
	margin: 0;
	}
	.user-info small {
	color: #545d7a;
	}





</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-search">
		
		<div class="container">

			<div class="search-head">
				<table width="100%;" style="border-collapse:collapse; border:1px lightgrey solid;">
					<tr>
						<td colspan="2">
							<div class="wrap55" style="width:60%;">
								<div class="input-group mb-3">
									<input type="text" class="form-control input-text" placeholder="식당명, 지역명으로 검색해주세요." width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
									<div class="input-group-append">
										<button class="btn btn-outline-warning btn-lg" type="button" style="color:rgb(167, 112, 239); border-color:rgb(167, 112, 239)"><i class="fa fa-search"></i></button>
									</div>
								</div>
							</div>							
						</td>
					</tr>
					<tr>
						<td width="20%;">
							<select name="" id="" style="width:40%;">
								<option value="">인기순</option>
								<option value="">이름순</option>
								<option value="">별점순</option>
							</select>
						</td>
						<td>
							<h2 class="search-padding" style="text-align:left;">XX맛집 XX순</h2>
						</td>
					</tr>
					<tr>
						<th><h4><strong>분위기</strong></h4></th>
						<td class="search-tag search-padding">
							<button class="btn1">#가성비좋은</button>
							<button class="btn1">#분위기좋은</button>
							<button class="btn1">#격식있는</button>
							<button class="btn1">#고급스러운</button>
							<br>
							<button class="btn1">#시끌벅적한</button>
							<button class="btn1">#조용한</button>
							<button class="btn1">#깔끔한</button>
							<button class="btn1">#이색적인</button>
						</td>
					</tr>
					<tr>
						<th><h4><strong><span style="color:#ffd966;">★</span>별점</strong></h4></th>
						<td class="search-tag search-padding">
							<select name="" id="" style="width:10%;">
								<option value="">0.5</option>
								<option value="">1.0</option>
								<option value="">1.5</option>
								<option value="">2.0</option>
								<option value="">2.5</option>
								<option value="">3.0</option>
								<option value="">3.5</option>
								<option value="">4.0</option>
								<option value="">4.5</option>
								<option value="">5.0</option>
							</select>
							이상&nbsp;&nbsp;
							<select name="" id="" style="width:10%;">
								<option value="">0.5</option>
								<option value="">1.0</option>
								<option value="">1.5</option>
								<option value="">2.0</option>
								<option value="">2.5</option>
								<option value="">3.0</option>
								<option value="">3.5</option>
								<option value="">4.0</option>
								<option value="">4.5</option>
								<option value="">5.0</option>
							</select>
							이하
						</td>
					</tr>
				</table>
			</div>
			
			<br><br>

			<hr noshade size = 1 style="background:black;">		

			<div class="wrap-storelist">
				<div class="container-storelist">
				
					<div class="card">
					<div class="card-header">
						<img src="https://c0.wallpaperflare.com/preview/483/210/436/car-green-4x4-jeep.jpg" alt="rover" />
					</div>
					<div class="card-body">

						<span class="tag tag-purple"><strong>서울시 금천구</strong></span>
						<h4 style="margin-top:3%;"><strong>구디아카데미</strong></h4>

						<p style="margin-top:4%;">
						#태그1, #태그2, #태그3 <br><br>
						대표메뉴 : xxxx <br>
						영업시간 : 00:00 ~ 00:00 <br>
						브레이크 : 00:00 ~ 00:00            
						</p>
						<div class="user-info">
							<small><span style="color:#FACC2E;">★</span> 5.0(777) | <span style="color:#f54d4d;">♥</span> Like(777)</small>
						</div>
					</div>
					</div>
					<div class="card">
					<div class="card-header">
						<img src="https://c0.wallpaperflare.com/preview/483/210/436/car-green-4x4-jeep.jpg" alt="rover" />
					</div>
					<div class="card-body">
						<span class="tag tag-purple"><strong>서울시 금천구</strong></span>
						<h4 style="margin-top:3%;"><strong>구디아카데미</strong></h4>
						<p style="margin-top:4%;">
						#태그1, #태그2, #태그3 <br><br>
						대표메뉴 : xxxx <br>
						영업시간 : 00:00 ~ 00:00 <br>
						브레이크 : 00:00 ~ 00:00            
						</p>
						<div class="user-info">
							<small><span style="color:#FACC2E;">★</span> 5.0(777) | <span style="color:#f54d4d;">♥</span> Like(777)</small>
						</div>
					</div>
					</div>
				<div class="card">
					<div class="card-header">
						<img src="https://c0.wallpaperflare.com/preview/483/210/436/car-green-4x4-jeep.jpg" alt="rover" />
					</div>
					<div class="card-body">
						<span class="tag tag-purple"><strong>서울시 금천구</strong></span>
						<h4 style="margin-top:3%;"><strong>구디아카데미</strong></h4>
						<p style="margin-top:4%;">
						#태그1, #태그2, #태그3 <br><br>
						대표메뉴 : xxxx <br>
						영업시간 : 00:00 ~ 00:00 <br>
						브레이크 : 00:00 ~ 00:00            
						</p>
						<div class="user-info">
							<small><span style="color:#FACC2E;">★</span> 5.0(777) | <span style="color:#f54d4d;">♥</span> Like(777)</small>
						</div>
					</div>							
				</div>	
				
				
				
				
				
				
								
				</div>

			</div>


			
		</div>
		
	</div>
	
	
</body>
</html>