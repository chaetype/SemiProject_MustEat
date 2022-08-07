<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.Store"%>
<%
	ArrayList<Store> list = (ArrayList<Store>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>

	.wrap-search {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		width:100%;
		margin-top:5%;
		margin-bottom:5%;
		/* text-align: center; */
	}	

	.search-head{
		display:inline-block;
		width:100%;
	}
	
	@import url("https://fonts.googleapis.com/css2?family=Roboto&display=swap");

	.wrap-storelist {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-color: #fff;
	font-family: "Roboto", sans-serif;
	color: #10182f;
	}
	.container-storelist {
	display: flex;
	width: 100%;
	flex-wrap: wrap;
	}
	.card {
	margin: 10px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 2px 20px rgba(0, 0, 0, 0.2);
	overflow: hidden;
	width: 300px;
	}
	.card-header img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	}
	.card-body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
	padding: 20px;
	min-height: 250px;
	}

	.tag {
	background: #cccccc;
	border-radius: 50px;
	font-size: 12px;
	margin: 0;
	color: #8440b2;
	padding: 2px 10px;
	text-transform: uppercase;
	cursor: pointer;
	}

	.tag-purple {
	background-color: rgb(231, 216, 241);
	}

	.card-body p {
	font-size: 13px;
	}

	.user {
	display: flex;
	margin-top: auto;
	}

	.user-info h5 {
	margin: 0;
	}
	.user-info small {
	color: #545d7a;
	}





</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-search">
		
		<div class="container">

			<div class="search-head">
			<form action="<%=contextPath%>/storesearchList.st">
				<div width="100%;" style="border-collapse:collapse;">
					
							<div class="wrap55" style="width:60%;">
								<div class="input-group mb-3">
									<input type="text" name="storeSearch" class="form-control input-text" placeholder="식당명, 지역명으로 검색해주세요." width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
									<div class="input-group-append">

										<button class="btn btn-outline-warning btn-lg" type="submit" style="color:rgb(167, 112, 239); border-color:rgb(167, 112, 239)"><i class="fa fa-search"></i></button>

									</div>
								</div>
							</div>							
					</div>
				</form>
			</div>
			
			<br><br>

			<hr noshade size = 1 style="background:black;">		

			<div class="wrap-storelist">
				<div class="container-storelist">
				
				<table class="table-storelist">
					
					<% if(list.isEmpty()) { %>
	                  <!--case1. 게시글이 없을경우-->
	                  <tr>
	                      <td colspan="8">조회된 식당내역이 없습니다.</td>
	                  </tr>
					  <% }else { %>
	                  <!--case2. 게시글이 있을경우-->
	                  
					  <tr>
						<% for(Store s : list){ %>
						<td width="600" style="table-layout: fixed;">
							
							<div class="card" onclick="location.href='<%= contextPath %>/storelistDetail.st?no=<%= s.getStoreNo() %>'">
								<div class="card-header">
									<img src="<%= s.getStoreImgPath() %>" alt="rover" />
								</div>
								<div class="card-body">			
									<input type="hidden" name="no" id="no">
									<span class="tag tag-purple"><strong><%= s.getLocalSi() %> <%= s.getLocalGu() %></strong></span>
									<h4 style="margin-top:3%;"><strong><%= s.getStoreName() %></strong></h4>
			
									<p style="margin-top:4%;">
									<%= s.getStoreTag() %> <br><br>
									대표메뉴 : <%= s.getStorePopularity() %> <br>
									영업시간 : <%= s.getStoreOperating() %> <br>        
									</p>
								</div>
							</div>							
						</td>
					<% } %>        
	             <% } %>					
					</tr>
					
				
				
				</table>
				
					
								
				</div>

			</div>


			
		</div>
		
	</div>
	
	
</body>
</html>