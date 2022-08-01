<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.product.model.vo.OrderPro, java.util.ArrayList, java.text.DecimalFormat"%>
<%
	//장바구니, 상품준비중, 배송중, 배송완료, 상품취소, 구매확정 주문수량
	OrderPro op = (OrderPro)request.getAttribute("orderStatus");
	// 상품준비중 '월'
	ArrayList<OrderPro> opMonth = (ArrayList<OrderPro>)request.getAttribute("orderMonth");
	// 상품준비중 상품 목록 리스트
	ArrayList<OrderPro> opList = (ArrayList<OrderPro>)request.getAttribute("orderList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MustEat 주문현황</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/orderList.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
</head>
<body>

	<!-- 배송준비중에 해당 카테고리에 속하는 목록들만 보여지는 페이지 -->

<%@include file="../common/menubar.jsp" %>
	
		<!-- 나의 주문/배송현황 메뉴바 -->
	<div class="orderDetail-area">

	  <div class="shippingStatusContainer">
	
	    <div class="title">
	      나의 주문/배송 현황
	    </div>
	
	    <div class="status">
	      <div class="item">
	        <div>
	          <a href="" class="number"><%=op.getBasket() %></a>
	          <div class="text">장바구니</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div> <!-- href 예시 : $lt;%=request.getContextPath() %>/orderList.or?status=$lt;% list.getStatus().equals("배송준비중"); %> -->
	          <a href= "" class="number"><%=op.getOrderReady() %></a> 
	          <div class="text">상품준비중</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <a href="" class="number"><%=op.getOrderTransit() %></a>
	          <div class="text">배송중</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <a href="" class="number"><%=op.getOrderDelivered() %></a>
	          <div class="text">배송완료</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <a href="" class="number"><%=op.getOrderCancel() %></a>
	          <div class="text">상품취소</div>
	        </div>
	      </div>
	    </div>
	
	 	</div>
	
	<!-- 주문현황 리스트 -->
	  <!-- 바깥쪽 for문 -->
	  <% for (OrderPro om : opMonth) { %>
	  <div class="orderDetailArea">
	
	    <div class="orderMonth">
	      <h4><%=om.getOrderMonth() %></h4>
	    </div>
	
	    <!-- 안쪽 for문 -->
	    <% for(OrderPro ol : opList) { %>
	    
	    	<% if( ol.getOrderMonth().equals(om.getOrderMonth()) ) { %>
	    	
	    	<%
       	 		int price = ol.getTotalPrice();
       			DecimalFormat df = new DecimalFormat("#,##0"); // 가격 천단위로 보여지도록 설정
       		%>
	    <div class="paySection">
	
	      <div class="goodsGroup">
	
	        <ul class="goodsList">
	
	          <li class="goodsPayItem">
	
	            <div class="goodsItem">
	            <a href="해당 상품 주문상세페이지" class="goodsThumb">
	              <img src="../../resources/image/mz.png" alt="해당 물품사진" style="width:110px; height:110px;">
	            </a>
	
	            <div class="goodsInfo">
	              <a href="해당 상품 주문상세페이지" class="goods">
	                <p class="goodsName"><%=ol.getProductName() %></p>
	                <ul class="info">
	                  <li class="goodsPrice"><%=df.format(price) %>원
	                    <span class="goodsAmount">/ <%=ol.getOrderQuentity() %>개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;"><%=ol.getOrderDate() %></li>
	                </ul>
	              </a>
	              <span class="goodsStatus"><%=ol.getDeliveryStatus() %></span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [12345678]
	              </span>
	              <span class="seller"><%=ol.getSeller() %></span>
	              <span class="tel"><%=ol.getSellerPhone() %></span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <!-- 주문상태 : 배송완료인 경우 보이도록 설정 => 배송완료 외의 것들 display:none 처리 -->
	            <a href="" class="plain-btn btn">구매확정</a>
	            <!-- <input type="hidden" name="orderStatus" value="배송완료"> -->
	            	            
	            <!-- 주문상태 : 배송준비중일때만 보이도록 설정 -->
	            <a href="" class="plain-btn btn">구매취소</a>
	            <!-- <input type="hidden" name="orderStatus" value="배송준비중"> -->
	          </div>
	          
	
	          </li>
	
	        </ul>
	
	      </div>
	
	    </div>
	    	<% } %>
	    <% } %>
	    <!-- 안쪽 for문 끝-->
	
	  </div>
	  <% } %>
	  <!-- 바깥쪽 for문 끝-->
	
	        <!-- 여유되면 <더보기> 버튼 구현하기 -->
	
	    <br>
    
 	</div>

</body>
</html>

</body>
</html>