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
<title>적립금조회</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<style>

	.wrap-pointViewAdmin {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		margin-top:1%;
		margin-bottom:2%;
	}	
	
	.rwd-table{
		width:100%;	
	}
	
	.button {
		margin-top:2%;	
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

	.point-array{
		font-family: 'Nanum Gothic Coding', monospace;
	}
	
	.point-select{font-family: 'Nanum Gothic Coding', monospace;}

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

	<div class="wrap-pointViewAdmin">
		
		<div class="container">
		
			<h1 style="font-family: 'OTWelcomeRA'; text-align:center;">회원 적립금 조회</h1>
	
			<hr noshade size = 1 style="background:black;">
			
			<div class="table-div">
			
				<table class="rwd-table">
				    <tbody>
				      <tr>
				        <th>발생일</th>
						<th>이름</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>발생구분</th>
						<th>적립/사용</th>
						<th>적립 및 사용금액(원)</th>
				      </tr>
				      <% if(list.isEmpty()) { %>
	                  <!--case1. 게시글이 없을경우-->
	                  <tr>
	                      <td colspan="6">조회된 게시글이 없습니다.</td>
	                  </tr>
					  <% }else { %>
	                  <!--case2. 게시글이 있을경우-->
	                  	<% for(Point p : list){ %>
		                  <tr>
		                  	  <td><%= p.getSuDate() %></td>
		                      <td><%= p.getMemName() %></td>
		                      <td><%= p.getMemId() %></td>
		                      <td><%= p.getMemPhone() %></td>		       
		                      <td><%= p.getMpsCategory() %></td>
		                      <td><%= p.getMpsStatus() %></td>
		                      <td><%= p.getMpsRecord() %></td>
		                  </tr>   
	                      <% } %>        
	                  <% } %>

				    </tbody>
		  		</table>
			
			</div>
			
			<div>
			
				
			
			</div>	
			
			
			
		</div>
		
	</div>
	
	
</body>
</html>