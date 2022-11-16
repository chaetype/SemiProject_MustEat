<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, com.mz.store.model.vo.StoreReview"%>
<%
	ArrayList<StoreReview> list = (ArrayList<StoreReview>)request.getAttribute("list");
	String findKeyword = request.getParameter("findKeyword");
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Must Eat</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png"
	type="image/x-icon">
<link rel="icon" type="image/png" sizes="32x32"
	href="<%=request.getContextPath()%>/favicon-32x32.png">

<style>
.wrap44 {
	/* width: 80%;
		margin-left: 20%; */
	width: 80%;
	margin: auto;
}

.wrap55 {
	display: inline-block;
}

.test1 {
	display: inline-block;
}

.btn1 {
	font-family: 'OTWelcomeRA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
	padding: 0.3em 1em;
	margin: 0 0.1em 0.1em 0;
}

.a222 {
	float: right;
	color: red;
	font-size: 10px;
	cursor: pointer;
}

.a222:hover {
	background-color: rgb(231, 216, 241);
	color: red;
}

.rwd-table {
	width: 100%;
}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap44">

		<h2 style="text-align: center"><%=findKeyword%>
			REVIEWS
		</h2>
		<table class="rwd-table">
			<thead>
				<tr>
					<th width="70">찜</th>
					<th width="75">글번호</th>
					<th width="100">게시자</th>
					<th>리뷰제목</th>
					<th width="70">별점</th>
					<th width="150">게시일</th>
					<th width="75">비고</th>
					<th width="75">조회수</th>
				</tr>
			</thead>

			<tbody>
				<% if(list.isEmpty()) { %>
				<!--case1. 게시글이 없을 경우-->
				<tr>
					<td colspan="8">존재하는 게시글이 없습니다.</td>
				</tr>
				<% }else { %>
				<!--case2.게시글이 있을 경우-->
				<td colspan="8"></td>
				<% for(StoreReview sr : list){ %>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td><%= sr.getReNo() %></td>
					<td><%= sr.getReviewWriter()%></td>
					<td><%= sr.getReviewTitle()%></td>
					<td><%= sr.getReviewRate() %></td>
					<td><%= sr.getReviewEnrollDate()%></td>
					<td><%= sr.getMemLevel()%></td>
					<td><%= sr.getCount()%></td>
				</tr>
				<% } %>
				<% } %>
			
		</table>

		<button class="btn1" style="float: left; margin-top: 10px;">찜</button>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>