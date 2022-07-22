<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/orderDetail.css">
</head>
<body>

	<body>

	<%@include file="../common/menubar.jsp" %>

	<div class="orderDetail-area">

  <div class="shippingStatusContainer">

    <div class="title">
      주문/배송조회
    </div>

    <div class="status">
      <div class="item">
        <div>
          <a href="" class="number">6</a>
          <div class="text">장바구니</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <a href="" class="number">0</a>
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

  <div class="orderDetailArea">

    <div class="orderMonth">
      <h4>2022.07</h4>
    </div>

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
                  <li class="goodsPrice">12800원</li>
                  <li class="goodsDate" style="font-weight:bold; color:gray;">2022.07.12</li>
                </ul>
              </a>
              <span class="goodsStatus">구매확정</span>
            </div>
          </div>

          </li>

        </ul>

      </div>



    </div>


  </div>





  </div>

</body>
</html>