<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]식당조회/수정</title>
<style>

	.wrap-store-view {
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
	
	.store-search{
		margin-top:3%;		
	}

	.store-delete{
		margin-top:2%;	
	}
	
</style>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-store-view">
		
		<div class="container">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">식당 조회</h1>
	
		<hr noshade size = 1 style="background:black;">
		
		<div class="table-div">
			
				<table class="rwd-table" style="width:100%;">
				    <tbody>
				      <tr>
				        <th></th>
				        <th>식당번호</th>
				        <th>식당명</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>대표메뉴</th>
						<th>등록일</th>
						<th>상세보기 및 수정</th>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
					  <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
					  <tr>
				        <td><input type="checkbox"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				    </tbody>
		  		</table>

				<div class="store-search">

					<h2>여기 아마 검색창 들어갈듯</h2>

				</div>

				<div class="store-delete">

					<button class="btn1"><strong>삭제하기</strong></button>

				</div>

			
			
		</div>
		
	</div>
	
	
</body>
</html>