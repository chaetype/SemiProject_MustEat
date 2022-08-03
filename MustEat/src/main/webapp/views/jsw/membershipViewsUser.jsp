<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.mz.member.model.vo.Point" %>
<%
	ArrayList<Point> list = (ArrayList<Point>)request.getAttribute("list");
	
	Point p = (Point)request.getAttribute("p");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>적립금조회</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
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
	
	li{
		margin:10px 0px;
	}
	
	.point-sum{
		margin-top:1%;
		text-align:left;
		height:70px;
	}
	
	.point-sum h2{
		margin-left:3%;
		margin-bottom:5%;
	}
	
	.point-delete{
		margin-top:1%;
		text-align:left;
		height:70px;
	}
	
	.point-delete h2{
		margin-left:3%;
		margin-bottom:5%;
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

	body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:2%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.page-link {
	    position: relative;
	    display: block;
	    color: #673AB7 !important;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #673AB7 !important;
	}
	
	
	.page-link:hover {
	    z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
	
	
	.page-link:focus {
		border-color: rgb(167, 112, 239) !important;
	    z-index: 3;
	    outline: 0;
	    box-shadow: none;
	}
	
</style>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
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
		
			<div class="point-sum" style="background:rgb(231, 216, 241)">
				
				&nbsp;<h2><span style="color:blue;">사용 가능</span>한 적립금 : <span><%= p.getUseableMps() %>원(수정)총적립금들어갈자리</span></h2>
				
			</div>
		
		
			<div class="point-delete" style="background:rgb(231, 216, 241)">
			
				&nbsp;<h2>이번달 <span style="color:red;">소멸예정</span> 적립금 : <span>xxxx원(수정)소멸예정적립금들어갈자리</span></h2>
			
			</div>
			
			<h2 class="point-text">* 적립금 내역</h2>
			
			<div>
			
				<table class="rwd-table">
				    <tbody>
				      <tr>
				        <th>발생일</th>
				        <th>발생구분</th>
				        <th>적립/사용</th>
				        <th>금액</th>
				      </tr>
				      <% if(list.isEmpty()) { %>
	                  <!--case1. 게시글이 없을경우-->
	                  <tr>
	                      <td colspan="4">조회된 게시글이 없습니다.</td>
	                  </tr>
					  <% }else { %>
	                  <!--case2. 게시글이 있을경우-->
	                  	<% for(Point p : list){ %>
		                  <tr>
		                  	  <td><%= p.getSuDate() %></td>
		                      <td><%= p.getMpsCategory() %></td>
		                      <td><%= p.getMpsStatus() %></td>
		                      <td><%= p.getMpsRecord() %></td>		       
		                  </tr>   
	                      <% } %>        
	                  <% } %>
				      
				    </tbody>
		  	</table>
			
			</div>

			<div class="wrapper-paging">
					    
			    <nav aria-label="Page navigation example">
					<ul class="pagination">
					    <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item"><a class="page-link" href="#">4</a></li>
					    <li class="page-item"><a class="page-link" href="#">5</a></li>
					    <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
				    </ul>
				</nav>					
			
			</div>
		
			
		</div>
		
	</div>
	
	
</body>
</html>