<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DTO.Product" %>
<%@ page import="DAO.ProductRepository" %>

<jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
		
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">
					상품 정보
				</h1>
			</div>
		</div>
		
		<%
			String id = request.getParameter("id");
			ProductRepository dao = ProductRepository.getInstance();
			Product product = productDAO.getProductById(id);	
		%>
		
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src=""
					style="width:100%" />
				</div>
			
				<div class="col-md-6">
					<h3>상품이름넣을곳</h3>
					<p>상품설명넣을곳
					
					<span class="bagde badge-danger">
						<%=product.getProductId() %>
					</span>
					<p><b>판매단위: </b>
					<p><b>중량/용량: </b>
					<p><b>배송구분: </b>
                    <p><b>포장타입: </b>
                    <p><b>알레르기정보: </b>
                    <p><b>유통기한: </b>
                    <p><b>구매수량: </b>
                    <hr>
					<h4>~~~~~원</h4>
					<button class="btn1">리뷰</button>
                    <button class="btn1">바로구매</button>
                    <button class="btn1">장바구니</button>
					
				</div>
			</div>
			<hr>
		</div>
		
		<%@ include file="Footer.jsp" %>
</body>
</html>
