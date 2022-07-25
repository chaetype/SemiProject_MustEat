<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]식당등록</title>
<style>

	.wrap-review {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.hr-review{
		background:black;
	}
	
	li{
		margin:10px 0px;
	}
	
	.review-sum{
		margin-top:3%;
		text-align:left;
		background:rgb(231, 216, 241);
		height:60px;
	}
	
	.review-sum h2{
		margin-top:0.3%;
		margin-left:3%;
	}
	
	.review-total{
		margin-top:2%;
		text-align:left;
		background:rgb(231, 216, 241);
		height:60px;
	}
	
	.review-total h2{
		margin-top:0.3%;
		margin-left:3%;
	}
	
	.review-text{
		margin-left:1%;
		margin-top:3%;
		color:black;
		text-align:left;
	}
	
	.rwd-table{
		width:100%;	
	}
	
</style>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-review">
		
		<div class="container">
		
			<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">식당 등록</h1>
	
		</div>
		
	</div>
	
	
</body>
</html>