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
		text-align: center;
	}	

	.search-head{
		display:inline-block;
		width:100%;
	}

	.search-list{
		display:inline-block;
		width:100%;
	}

	.wrap55{
		display:inline-block;

	}

	.search-tag{
		text-align: left;
	}

	.btn1{
		width:150px;
		margin-top:10px;
		margin-right: 10px;
	}

	.search-padding{
		padding:1%;
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
			

			<div class="search-list">
				<div class="search-list-view">
					<table width="100%">
						<tbody>
							<tr>
								<td rowspan="4" width="20%" height="200px" style="text-align:center;">
									<div style="border:1px solid black; width:95%; height:95%; display: inline-block;">
										<div>
											<img src="" alt="">사진넣는자리
										</div>	
									</div>						
								</td>
								<td colspan="2" style="text-align:left;"><h2>식당이름</h2></td>
							</tr>
							<tr>
								<td colspan="2" style="text-align:left;"><h5>xx시 xx구</h5></td>
							</tr>
							<tr>
								<td colspan="2" style="text-align:left;"><h8>#태그1,#태그2,#태그3</h8></td>
							</tr>
							<tr>
								<td width="5%" style="text-align:left;"><span style="color:#ffd966;">★</span>&nbsp;5.0</td>
								<td style="text-align:left;"><span style="color:#ff0000;">♥</span>&nbsp;xx명</td>
							</tr>
							<tr>
								<td colspan="3" style="text-align:left;">
									<p style="margin-left:0.5%;">
										리뷰 들어갈 자리 리뷰 들어갈 자리 리뷰 들어갈 자리 리뷰 들어갈 자리 리뷰 들어갈 자리 리뷰 들어갈 자리 리뷰 들어갈 자리 리뷰 들어갈 자리  
									</p>	
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
		</div>
		
	</div>
	
	
</body>
</html>