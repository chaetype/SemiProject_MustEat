<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/orderList.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>

	<!-- 주문/배송 현황 전체 페이지(주문 전체페이지) -->
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
	          <a href="" class="number">6</a>
	          <div class="text">장바구니</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div> <!-- href 예시 : $lt;%=request.getContextPath() %>/orderStatus.or?status=$lt;% list.getStatus().equals("배송준비중"); %> -->
	        <!-- 해당 카테고리에 속하는 목록들만 보이도록 설정하는 페이지 : orderStatusList.jsp -->
	          <a href= "" class="number">0</a> 
	          <div class="text">배송준비중</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <a href="" class="number">1</a>
	          <div class="text">배송중</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <a href="" class="number">3</a>
	          <div class="text">구매확정</div>
	        </div>
	      </div>     
	
	      <div class="item">
	        <div>
	          <a href="" class="number">3</a>
	          <div class="text">취소/교환/반품</div>
	        </div>
	      </div>
	    </div>
	
	 	</div>
	
	<!-- 주문현황 리스트 -->
	  <!-- 바깥쪽 for문 -->
	  <div class="orderDetailArea">
	
	    <div class="orderMonth">
	      <h4>2022.07</h4>
	    </div>
	
	            <!-- 안쪽 for문 -->
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
	                <p class="goodsName">[채선당]샤브샤브 밀키트 (2인)</p>
	                <ul class="info">
	                  <li class="goodsPrice">12800원
	                    <span class="goodsAmount">/ 1개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;">2022.07.12</li>
	                </ul>
	              </a>
	              <span class="goodsStatus">배송완료</span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [12345678]
	              </span>
	              <span class="seller">채선당</span>
	              <span class="tel">XXX-XXXX-XXXX</span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <!-- 주문상태 : 배송완료인 경우 보이도록 설정 -->
	            <a href="" class="btn1">구매확정</a>
	            <!-- 주문상태 : 구매확정인 경우 보이도록 설정(기본적으로 전체 다 보이도록) -->
	            <a href="" class="btn1">리뷰작성</a>
	            <!-- 주문상태 : 배송준비중일때만 보이도록 설정 -->
	            <a href="" class="btn1">구매취소</a>
	          </div>
	          
	
	          </li>
	
	        </ul>
	
	      </div>
	
	    </div>
	    <!-- 안쪽 for문 끝-->
	
	            <!-- 안쪽 for문 -->
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
	                <p class="goodsName">[채선당]샤브샤브 밀키트 (2인)</p>
	                <ul class="info">
	                  <li class="goodsPrice">12800원
	                    <span class="goodsAmount">/ 1개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;">2022.07.12</li>
	                </ul>
	              </a>
	              <span class="goodsStatus">배송완료</span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [12345678]
	              </span>
	              <span class="seller">채선당</span>
	              <span class="tel">XXX-XXXX-XXXX</span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <!-- 주문상태 : 배송완료인 경우 보이도록 설정 -->
	            <a href="" class="btn1">구매확정</a>
	            <!-- 주문상태 : 구매확정인 경우 보이도록 설정(기본적으로 전체 다 보이도록) -->
	            <a href="" class="btn1">리뷰작성</a>
	            <!-- 주문상태 : 배송준비중일때만 보이도록 설정 -->
	            <a href="" class="btn1">구매취소</a>
	          </div>
	          
	
	          </li>
	
	        </ul>
	
	      </div>
	
	    </div>
	    <!-- 안쪽 for문 끝-->
	
	            <!-- 안쪽 for문 -->
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
	                <p class="goodsName">[채선당]샤브샤브 밀키트 (2인)</p>
	                <ul class="info">
	                  <li class="goodsPrice">12800원
	                    <span class="goodsAmount">/ 1개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;">2022.07.12</li>
	                </ul>
	              </a>
	              <span class="goodsStatus">배송완료</span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [12345678]
	              </span>
	              <span class="seller">채선당</span>
	              <span class="tel">XXX-XXXX-XXXX</span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <!-- 주문상태 : 배송완료인 경우 보이도록 설정 -->
	            <a href="" class="btn1">구매확정</a>
	            <!-- 주문상태 : 구매확정인 경우 보이도록 설정(기본적으로 전체 다 보이도록) -->
	            <a href="" class="btn1">리뷰작성</a>
	            <!-- 주문상태 : 배송준비중일때만 보이도록 설정 -->
	            <a href="" class="btn1">구매취소</a>
	          </div>
	          
	
	          </li>
	
	        </ul>
	
	      </div>
	
	    </div>
	    <!-- 안쪽 for문 끝-->
	
	  </div>
	  <!-- 바깥쪽 for문 끝-->
	
	
		<!-- 반복!!!!!!!!!!!! -->
	
	    <!-- 바깥쪽 for문 -->
	    <div class="orderDetailArea">
	
	      <div class="orderMonth">
	        <h4>2022.06</h4>
	      </div>
	  
	            <!-- 안쪽 for문 -->
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
	                <p class="goodsName">[채선당]샤브샤브 밀키트 (2인)</p>
	                <ul class="info">
	                  <li class="goodsPrice">12800원
	                    <span class="goodsAmount">/ 1개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;">2022.07.12</li>
	                </ul>
	              </a>
	              <span class="goodsStatus">배송완료</span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [12345678]
	              </span>
	              <span class="seller">채선당</span>
	              <span class="tel">XXX-XXXX-XXXX</span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <!-- 주문상태 : 배송완료인 경우 보이도록 설정 -->
	            <a href="" class="btn1">구매확정</a>
	            <!-- 주문상태 : 구매확정인 경우 보이도록 설정(기본적으로 전체 다 보이도록) -->
	            <a href="" class="btn1">리뷰작성</a>
	            <!-- 주문상태 : 배송준비중일때만 보이도록 설정 -->
	            <a href="" class="btn1">구매취소</a>
	          </div>
	          
	
	          </li>
	
	        </ul>
	
	      </div>
	
	    </div>
	    <!-- 안쪽 for문 끝-->
	
	            <!-- 안쪽 for문 -->
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
	                <p class="goodsName">[채선당]샤브샤브 밀키트 (2인)</p>
	                <ul class="info">
	                  <li class="goodsPrice">12800원
	                    <span class="goodsAmount">/ 1개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;">2022.07.12</li>
	                </ul>
	              </a>
	              <span class="goodsStatus">배송완료</span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	              <span class="orderNo" style="font-weight:bold;">
	                주문번호<br>
	                [12345678]
	              </span>
	              <span class="seller">채선당</span>
	              <span class="tel">XXX-XXXX-XXXX</span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <!-- 주문상태 : 배송완료인 경우 보이도록 설정 -->
	            <a href="" class="btn1">구매확정</a>
	            <!-- 주문상태 : 구매확정인 경우 보이도록 설정(기본적으로 전체 다 보이도록) -->
	            <a href="" class="btn1">리뷰작성</a>
	            <!-- 주문상태 : 배송준비중일때만 보이도록 설정 -->
	            <a href="" class="btn1">구매취소</a>
	          </div>
	          
	
	          </li>
	
	        </ul>
	
	      </div>
	
	    </div>
	    <!-- 안쪽 for문 끝-->
	  
	  
	    </div>
	    <!-- 바깥쪽 for문 끝-->
	
	        <!-- 여유되면 <더보기> 버튼 구현하기 -->
	
	    <br>
    
 	</div>

</body>
</html>