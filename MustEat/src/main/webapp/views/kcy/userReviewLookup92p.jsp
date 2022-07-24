<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<style>
	.wrap44{
		width: 80%;
		margin-left: 20%;
	}
	.wrap55{
		display: inline-block;
	}

	.test1{
		display: inline-block;
	}

	.btn1{
		font-family: 'OTWelcomeRA';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
		font-weight: normal;
		font-style: normal;
		padding: 0.3em 1em;
    	margin: 0 0.1em 0.1em 0;
	}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap44">
	
		<h2 style="text-align:center">유저이름 REVIEWS</h2>
		
		  <table class="rwd-table">
				<tbody>
				<tr>
					<th>찜</th>
					<th>글번호</th>
					<th width="100">게시자</th>
					<th width="100">회원아이디</th>
					<th colspan="3" width="400">리뷰제목</th>
					<th width="200">게시일</th>
					<th width="100">비고</th>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">15</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">14</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">13</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">12</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">11</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">10</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">9</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">8</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">7</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">6</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">5</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">4</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">3</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">2</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">1</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>

				</tbody>
		  	</table>
	
			<button class="btn1" style="float: left; margin-top:10px;">찜</button>
	</div>
	<br><br><br><br><br>
</body>
</html>