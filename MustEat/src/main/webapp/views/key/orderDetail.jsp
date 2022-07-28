<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MustEat 주문상세페이지</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/myPage.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/orderDetail.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	
	<!-- 주문된 상품의 상세페이지 -->

      <div class="orderDetail-area">
        
      <h3 class="detailTitle">주문 상세정보</h3>


        <ul class="order_detail">
          <li>
            <div>주문일자</div>
            <div class="orderDate"><strong>2022.07.23</strong></div>
          </li>

          <li>
            <div>주문번호</div>
             <div class="orderNo"><strong>2022072362395331</strong>
             </div>
          </li>
        </ul>
        
        
        <table class="orderTb" width="100%">

        <thead>
          <tr>

            <th width="100"><strong>상품주문번호</strong></th>
            <th width="300">상품정보</th>
            <th width="100">상품금액(수량)</th>
            <th width="100" class="send">배송비/판매자</th>
            <th width="100" class="orderStatus">진행상태</th>

          </tr>
        </thead>

        <tbody>
          <tr class="group">

            <td>
              <span class="thm ordernum2">2022072319850950</span>
            </td>
            <td class="product">
          <div id="productName" align="left"> 
            [채선당] 샤브샤브 밀키트
          </div>
          </td>

            <td class="money">
              <em class="thm">12,650</em>원<br>
                <span>(1개)</span>
            </td>
            <td class="sellerInfo" rowspan="1">
              <div class="send">
                  <div class="deliveryPrice">무료</div> 
                  <div class="seller">채선당</div>
                  <div class="tel">
                    <span>xxx-xxxx-xxxx</span>
                  </div>
              </div>
            </td>

            <td class="orderStatus">
              상품준비중
            </td>

          </tr>
        </tbody>

        </table>

        <h4 class="title">주문/결제 금액 정보</h4>
        
          <table class="orderPrice" width="100%">
        
          <tr class="money">
            <td class="first_money" colspan="6">
                <div class="price_list">
                  <dl class="first">
                    <dt><strong>최초 주문금액</strong></dt>
                    <dd>
                      <!-- 주문금액 -->
                      <ul class="price_list">
                        <li>
                          <span>상품금액</span>
                          <p class="thm"><em>12,650</em>원</p>
                        </li>
                        <li>
                          <span>배송비</span>
                          <p class="thm"><em>0</em>원</p>
                        </li>
                        <li>
                          <span>적립금사용</span>
                          <p class="thm"><em>0</em>원</p>
                        </li>
                      </ul>
                    </dd>
                  </dl>
              </div>
              <br>
            </td>

            <td class="last_money" colspan="6" style="vertical-align:top;">
                <div class="total_price">
                  <dl class="total">
                    <dt><strong>최종 주문금액</strong></dt>
                  </dl>
                    <!-- 주문금액 -->
                    <div class="total_price">
                        <p><em>15,650</em>원</p>
                   </div>
                </div>
            </td>
          </tr>

          </table>

        <h4 class="title">배송지 정보</h4>
        <table class="orderPlace" width="100%">

            <tr>
              <th width="15%" height="50px;" class="deliveryTh">수령인</th>
              <td width="55%" height="50px;">김회원</td>
              <th class="deliveryInfo" width="30%"  height="50px;">주문자 정보
                <button type="button" class="btn1">회원정보수정</button>
              </th>
            </tr>

            <tr>
              <th height="30px;" class="deliveryTh">연락처</th>
              <td>
                <span class="tel">xxx-xxxx-xxxx</span>
                <span></span>
              </td>
              <!-- 주문자 정보 -->
              <td class="deliveryInfo" rowspan="3">
                <div class="orderName">홍길동</div>
                <div class="orderPhone">xxx-xxxx-xxxx</div>
              </td> 
            </tr>

            <tr>
              <th height="70px;" class="deliveryTh">배송지</th>
              <td class="address">
                11111<br> <!--우편번호-->
                서울시 관악구 행운동 사랑아파트<br> <!-- 주소 -->
                111동 1111호 <!-- 상세주소 -->
              </td>
            </tr>
            
            <tr class="gap3">
              <th height="30px;" class="deliveryTh">배송메모</th>
              <td>빨리 보내주세요</td>
            </tr>
        
        </table>	
        
         <br><br>
         
      </div>

       
       
  </body>
</html>