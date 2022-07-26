<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]적립금조회</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<style>

	.wrap-pointViewAdmin {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.table-div {
		margin-top:3%;
	}
	
	.rwd-table{
		width:100%;	
	}
	
	.button {
		margin-top:3%;	
	}

	.paging-area>button{
        background-color: rgb(167, 112, 239);
		margin-top:3%;
        color: white;
        font-family: 'OTWelcomeRA';
        line-height: 0.28in;
        border: none;
        border-radius: 10%;
        height: 38px;
        width: 30px;
    }
	
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-pointViewAdmin">
		
		<div class="container">
		
			<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">회원 적립금 조회</h1>
	
			<hr noshade size = 1 style="background:black;">

			<div class="table-div">
			
				<table class="rwd-table">
				    <tbody>
				      <tr>
				        <th></th>
				        <th>회원번호</th>
				        <th>이름</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>적립 및 사용금액(원)</th>
						<th>잔여 적립금(원)</th>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
					  <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>xxx-xxxx-xxxx</td>
						<td>-5000</td>
						<td>10000</td>
				      </tr>
				    </tbody>
		  		</table>
			
			</div>
			
			<div>
			
				<div class="paging-area" align="center">
					<button>&lt;</button>
					<button>1</button>
					<button>2</button>
					<button>3</button>
					<button>4</button>
					<button>5</button>
					<button>&gt;</button>
				</div>
			
			</div>			

			<div style="width:100%; margin-top:3%;">
				<div style="display:inline-block;">
				   <table style="display:inline-block;">
					  <tr>
						 <td>
							<div class="point-category">
							   <select name="" id="" style="height:100%;">
								  <option value="">이름</option>
								  <option value="">아이디</option>
							   </select>
							</div>
						 </td>
						 <td>
							<div class="input-group mb-3">
							   <input type="text" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
							   <div class="input-group-append">
								  <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
							   </div>
							</div>
						 </td>
					  </tr>
				   </table>
				</div>
			 </div>

			<div class="button">

				<button class="btn1">적립금 회수하기</button>

			</div>

			
			
		</div>
		
	</div>
	
	
</body>
</html>