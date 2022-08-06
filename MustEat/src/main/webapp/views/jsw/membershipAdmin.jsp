<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.mz.member.model.vo.Point" %>
<%
	ArrayList<Point> list = (ArrayList<Point>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>적립금 지급</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
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

	body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:3%;
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

	.point-select{font-family: 'Nanum Gothic Coding', monospace;}
	
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">

</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-point-admin">
		
		<div class="container">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:center;">회원 적립금 지급</h1>
	
		<hr noshade size = 1 style="background:black;">
		
		<div class="table-div">
			
				<table class="rwd-table" style="width:100%;">
				    <tbody>
				      <tr>
				        <th>회원번호</th>
				        <th>이름</th>
						<th>아이디</th>
						<th>한달간 리뷰갯수</th>
						<th>적립금액(원)</th>
						<th>지급예정일</th>
						<th>상태</th>
						<th>지급하기</th>
				      </tr>
				      <% if(list.isEmpty()) { %>
	                  <!--case1. 게시글이 없을경우-->
	                  <tr>
	                      <td colspan="8">조회된 지급예정내역이 없습니다.</td>
	                  </tr>
					  <% }else { %>
	                  <!--case2. 게시글이 있을경우-->
	                  	<% for(Point p : list){ %>
		                  <tr>
		                      <td><%= p.getMemNo() %></td>
		                      <td><%= p.getMemName() %></td>
		                      <td><%= p.getMemId() %></td>
		                      <td><%= p.getReviewMonth() %></td>
		                      <td><%= p.getSavePoint() %></td>
		                      <td><%= p.getMpsDate() %></td>
		                      <td><%= p.getpStatus() %></td>
		                      <td><button class="btn1" onclick=><strong>지급하기</strong></button></td>
		                  </tr>   
	                      <% } %>        
	                  <% } %>
				      
		  		</table>



			
			
		</div>
		
	</div>
	
	
</body>
</html>