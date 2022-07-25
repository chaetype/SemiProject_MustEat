<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]적립금조회</title>
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
	
</style>
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
			
				<h2>여기 아마 검색창 들어갈듯</h2>
			
			</div>			

			<div class="button">

				<button class="btn1">적립금 회수하기</button>

			</div>

			
			
		</div>
		
	</div>
	
	
</body>
</html>