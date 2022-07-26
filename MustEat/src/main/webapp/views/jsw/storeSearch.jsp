<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[사용자]식당/지역검색페이지</title>

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
	}

	.wrap55{
		display:inline-block;

	}

	.search-tag{
		text-align: left;
	}

	.btn1{
		width:180px;
		margin-top:10px;
	}

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-search">
		
		<div class="container">

			<div class="search-head">
				<table border="1" width="100%;">
					<tr>
						<td colspan="2">
							<div class="wrap55" style="width:70%;">
								<div class="input-group mb-3">
									<input type="text" class="form-control input-text" placeholder="식당명, 지역명으로 검색해주세요." width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
									<div class="input-group-append">
										<button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
									</div>
								</div>
							</div>							
						</td>
					</tr>
					<tr>
						<td width="20%;">
							<select name="" id="" style="width:60%;">
								<option value="">인기순</option>
								<option value="">이름순</option>
								<option value="">별점순</option>
							</select>
						</td>
						<td>
							<h2 style="text-align:left;">XX맛집 XX순</h2>
						</td>
					</tr>
					<tr>
						<th><h4><strong>분위기</strong></h4></th>
						<td class="search-tag">
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
						<td class="search-tag">
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

			<div class="search-list">

			</div>
			
		</div>
		
	</div>
	
	
</body>
</html>