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
		margin-top:5%;
		margin-bottom:2%;
	}	
	
	.table-div {
		margin-top:3%;
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
				        <th>회원번호</th>
						<th>이름</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>발생구분</th>
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
		                      <td><%= p.getMemNo() %></td>
		                      <td><%= p.getMemName() %></td>
		                      <td><%= p.getMemId() %></td>
		                      <td><%= p.getMemPhone() %></td>		       
		                      <td><%= p.getMpsCategory() %></td>
		                      <td><%= p.getMpsRecord() %></td>
		                  </tr>   
	                      <% } %>        
	                  <% } %>

				    </tbody>
		  		</table>
			
			</div>
			
			<div>
			
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

			<div style="width:100%; margin-top:3%;">
				<div style="display:inline-block;">
					<table style="display:inline-block;">
						<tr>
							<td>
								<div class="point-category">
									<select class="point-select" name="" id="" style="height: 48px; border-color:lightgrey;">									
										<option value="">회원명</option>
										<option value="">아이디</option>
									</select>
								</div>
							</td>
							<td>
								<div class="input-group mb-3" style="margin-top:6.5%;">
									<input type="text" class="form-control input-text" placeholder="검색내용입력해주세요." width="100%;" aria-label="Recipient's username" aria-describedby="basic-addon2" style="font-family: 'Nanum Gothic Coding', monospace;">
									<div class="input-group-append">
										<button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>	
			
			
		</div>
		
	</div>
	
	
</body>
</html>