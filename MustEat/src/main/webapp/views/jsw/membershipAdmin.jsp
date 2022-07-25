<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]적립금 지급</title>
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
		margin-top:2%;	
	}
	
</style>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-point-admin">
		
		<div class="container">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">회원 적립금 조회</h1>
	
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

				<div class="point-search">

					<h2>여기 아마 검색창 들어갈듯</h2>

				</div>

				<div class="point-save">

					<button class="btn1"><strong>지급하기</strong></button>
					<button class="btn1"><strong>삭제하기</strong></button>

				</div>

			
			
		</div>
		
	</div>
	
	
</body>
</html>