<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]적립금 지급</title>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<style>

	.wrap-point-admin {
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

	.point-search{
		margin-top:3%;		
	}

	.point-save{
		margin-top:1%;	
	}

	.paging-area>button{
        background-color: rgb(167, 112, 239);
		margin-top:4%;
        color: white;
        font-family: 'OTWelcomeRA';
        line-height: 0.28in;
        border: none;
        border-radius: 10%;
        height: 38px;
        width: 30px;
    }

	.point-select{font-family: 'Nanum Gothic Coding', monospace;}
	
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

	<div class="wrap-point-admin">
		
		<div class="container">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">회원 적립금 지급</h1>
	
		<hr noshade size = 1 style="background:black;">
		
		<div class="table-div">
			
				<table class="rwd-table" style="width:100%;">
				    <tbody>
				      <tr>
				        <th></th>
				        <th>회원번호</th>
				        <th>이름</th>
						<th>아이디</th>
						<th>한달간 리뷰갯수</th>
						<th>적립금액(원)</th>
						<th>지급예정일</th>
						<th>상태</th>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
					  <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>대기중</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>지급완료</td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>지급완료</td>
				      </tr>
					  <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>홍길동</td>
						<td>hong1234</td>
						<td>10</td>
						<td>+5000</td>
						<td>xxxx-xx-xx</td>
						<td>지급완료</td>
				      </tr>
				    </tbody>
		  		</table>

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
										<select class="point-select" name="" id="" style="height: 48px; border-color:lightgrey;">
											<option value="">회원번호</option>
											<option value="">이름</option>
											<option value="">아이디</option>
										</select>
									</div>
								</td>
								<td>
									<div class="input-group mb-3" style="margin-top:6.5%;">
										<input type="text" class="form-control input-text" placeholder="검색내용입력해주세요." width="100%;" aria-label="Recipient's username" aria-describedby="basic-addon2" style="font-family: 'Nanum Gothic Coding', monospace;">
										<div class="input-group-append">
											<button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>	

				<div class="point-save">

					<button class="btn1"><strong>지급하기</strong></button>

				</div>

			
			
		</div>
		
	</div>
	
	
</body>
</html>