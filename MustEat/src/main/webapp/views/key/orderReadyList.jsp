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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
	.paySection {
		display:none;
	}
	.viewMore{
	  display: block;
	    width: 100%;
	    padding: 18px 0;
	    color: #000;
	    font-size: 13px;
	    border: none 0;
	    text-align: center;
	}
</style>
</head>
<body>

	<!-- 배송준비중에 해당 카테고리에 속하는 목록들만 보여지는 페이지 -->

<%@include file="../common/menubar.jsp" %>
	
		<!-- 나의 주문/배송현황 메뉴바 -->
	<div class="orderDetail-area" style="font-family: 'OTWelcomeRA' !important;">

	  <div class="shippingStatusContainer">
	
	    <div class="title" >
	      나의 주문/배송 현황
	    </div>
	
	    <div class="status">
	      <div class="item">
	        <div>
	          <div class="number orderStatus" onclick="orderStatus('basket');"><%=op.getBasket() %></div>
	          <div class="text">장바구니</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div> <!-- href 예시 : $lt;%=request.getContextPath() %>/orderList.or?status=$lt;% list.getStatus().equals("배송준비중"); %> -->
	          <div class="number orderStatus" onclick="orderStatus('preparing');"><%=op.getOrderReady() %></div> 
	          <div class="text">상품준비중</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <div class="number orderStatus" onclick="orderStatus('transit');"><%=op.getOrderTransit() %></div>
	          <div class="text">배송중</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <div class="number orderStatus" onclick="orderStatus('delivered');"><%=op.getOrderDelivered() %></div>
	          <div class="text">배송완료</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <div class="number orderStatus" onclick="orderStatus('cancel');"><%=op.getOrderCancel() %></div>
	          <div class="text">상품취소</div>
	        </div>
	      </div>
	    </div>
	
	 	</div>

			 	
		 <script>
  
			// '장바구니, 상품준비중, 배송중, 배송완료, 상품취소' 클릭하면 실행하는 함수
			   function orderStatus(status) { // 실행시 전달되는 값을 담는 매개변수
				location.href="<%=contextPath%>/orderStatusList.pro?status=" + status;
			}
		
		</script>
	
	<!-- 주문현황 리스트 -->
	  <!-- 바깥쪽 for문 -->
	  <% for (OrderPro om : opMonth) { %>
	  <div class="orderDetailArea" style="font-family: 'OTWelcomeRA' !important;">
	
	    <div class="paySection orderMonth">
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
	            <a href="<%=contextPath %>/detail.pro?orderNo=<%=ol.getOrderNo() %>" class="goodsThumb">
	              <img src="<%=contextPath %>/resources/image/mz.png" alt="해당 물품사진" style="width:110px; height:110px;">
	            </a>
	
	            <div class="goodsInfo">
	              <a href="<%=contextPath %>/detail.pro?orderNo=<%=ol.getOrderNo() %>" class="goods">
	                <p class="goodsName"><%=ol.getProductName() %></p>
	                <ul class="info">
	                  <li class="goodsPrice"><%=df.format(price) %>원
	                    <span class="goodsAmount">/ <%=ol.getOrderQuentity() %>개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;"><%=ol.getOrderDate() %></li>
	                </ul>
	              </a>
				  <% if( ol.getOrderStatus() != 1) { %>
	              <span class="goodsStatus"><%=ol.getDeliveryStatus() %></span>
	              <% } else { %>
	              <span class="goodsStatus">구매확정</span>
	              <% } %>
	               </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [<%=ol.getOrderNo() %>]
	              </span>
	              <span class="seller"><%=ol.getSeller() %></span>
	              <span class="tel"><%=ol.getSellerPhone() %></span>
	            </div>
	          </div>
	
	          <div class="orderButton">
				<% if( ol.getOrderStatus() != 1) { %>
	            <a class="plain-btn btn" id="orderConfirm" onclick="return purchaseConfirm(<%=ol.getOrderNo() %>, '<%=ol.getDeliveryStatus()%>');">구매확정</a>  
	            <% } %>
	            
	            <% if( ol.getOrderStatus() != 1) { %>
	            <!-- 상품준비중일때만 구매취소 가능 -->
	            <a class="plain-btn btn" id="orderCancel" onclick="return purchaseCancel(<%=ol.getOrderNo() %>, '<%=ol.getDeliveryStatus()%>');">구매취소</a>
				<% } %>
				
				<% if( ol.getOrderStatus() == 1) { %>
				<!-- 구매확정시 보이도록 설정 -->
	            <a href="<%=contextPath %>/detail.li?no=<%=ol.getProductCode() %>" class="plain-btn btn">리뷰작성</a>
	            <% } %>
	          </div>
	          
	          <script>
	          	
	           // 구매확정/취소 버튼 누르면 실행되는 함수
	          	function purchaseConfirm(orderNo, status){
	          		if(confirm("구매 확정하시겠습니까?\n확정 후 취소 불가능합니다.")) {
	          			location.href="<%=contextPath%>/purchaseConfirm.pro?status=" + status  + "&orderNo=" + orderNo;
	          		} else {
	          			return false;
	          		}
	           }
	           
	           function purchaseCancel(orderNo, status) {
	          		if(confirm("구매 취소하시겠습니까?\n취소 후 재구매가능합니다.")) {
	          			location.href="<%=contextPath%>/purchaseCancel.pro?status=" + status  + "&orderNo=" + orderNo;
	          		} else {
	          			return false;
	          		}
	           }
	          
	          </script>
	         

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
	  
	  <!-- 상품 '더보기' 영역!!! -->
	  <% if ( opList.size() >= 10) { %> <!-- 상품 10개 이하면 안보이도록 설정 -->
	  <div class="viewMore">
	  	<a href='#' id='load' class='btn1'>더 보기</a>
	  </div>
 	  <% }  %>
 
 	<script>

		$(function(){
			
			<!-- 상품 10개 이상이면 보이도록 설정 => 더보기로 상품 목록 펼치기 -->
			    $(".paySection").slice(0, 10).show(); // 처음에 상품목록 10개씩 보이기
			    $("#load").click(function(e){ // '더보기' 버튼 클릭시 함수 실행
				        e.preventDefault();
				        $(".paySection:hidden").slice(0, 8).show(); // 상품 목록 8개씩 보이기
				        if($(".paySection:hidden").length == 0){ // 상품 목록 리스트 전부 조회하면 사라짐
				           $("#load").fadeOut();
				        }
				    });
			
			});
		
   </script>	
	
	    <br>
    
 	</div>

</body>
</html>

</body>
</html>