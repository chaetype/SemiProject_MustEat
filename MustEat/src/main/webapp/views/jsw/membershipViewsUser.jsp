<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[사용자]적립금조회</title>
<style>

	.wrap-membership {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.hr-membership{
		background:black;
	}
	
	li{
		margin:10px 0px;
	}
	
	.point-sum{
		margin-top:3%;
		text-align:left;
		background:rgb(231, 216, 241);
		height:60px;
	}
	
	.point-sum h2{
		margin-top:0.3%;
		margin-left:3%;
	}
	
	.point-delete{
		margin-top:2%;
		text-align:left;
		background:rgb(231, 216, 241);
		height:60px;
	}
	
	.point-delete h2{
		margin-top:0.3%;
		margin-left:3%;
	}
	
	.point-text{
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

	<div class="wrap-membership">
		
		<div class="container">
		
			<h1 style="font-family: 'OTWelcomeRA'; text-align:left;">적립금 조회</h1>
	
			<hr noshade size = 1 style="background:black;">
		
			<div class="membershipView" style="border:1px solid black; margin-top:3%;">
			
				<h2 style="text-align:left; margin-left:2%; margin-top:3%;">적립금 안내</h2>
				
				<hr class="hr-membership" noshade size = 1>
	
				<ul style="text-align:left; margin-top:2%;">
	
					<li>적립금은 밀키트 구매시 사용할 수 있습니다.</li>
					<li>신뢰 리뷰어 등급은 매달 1일~말일 사이 식당 리뷰 최소 10개 이상 작성하면 5000원이 자동으로 적립됩니다.</li>
					<li>적립금은 한달 최대 5000원까지만 적립됩니다.</li>
					<li>적립금의 유효기간은 적립일로부터 1년이며, 먼저 적립된 적립금부터 순차적으로 사용됩니다.</li>
	
				</ul>			
			
			</div>
		

			<div class="point-sum">
				
				&nbsp;<h2><span style="color:blue;">사용 가능</span>한 적립금 : <span>xxxx원(수정)총적립금들어갈자리</span></h2>
				
			</div>
		
		
			<div class="point-delete">
			
				&nbsp;<h2>이번달 <span style="color:red;">소멸예정</span> 적립금 : <span>xxxx원(수정)소멸예정적립금들어갈자리</span></h2>
			
			</div>
		
		
			<h2 class="point-text">* 적립금 내역</h2>
			
			<div>
			
				<table class="rwd-table">
				    <tbody>
				      <tr>
				        <th>발생일</th>
				        <th>발생구분</th>
				        <th>적립 및 사용금액</th>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>리뷰이벤트적립</td>
				        <td>+5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				      <tr>
				        <td>xxxx-xx-xx</td>
				        <td>밀키트구매</td>
				        <td>-5000원</td>
				      </tr>
				    </tbody>
		  	</table>
			
			</div>
		
			
		</div>
		
	</div>
	
	
</body>
</html>