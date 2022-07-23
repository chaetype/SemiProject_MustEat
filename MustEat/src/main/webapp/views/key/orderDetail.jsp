<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/myPage.css" />
<style>
  .orderDetail-area{
    background-color: white; 
    width:80%;
    margin:auto;
    border:1px solid rgba(221, 219, 219, 0.87);
    padding: 10px 30px;
  }
</style>
</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	
	<!-- 주문된 상품의 상세페이지 -->

      <div class="orderDetail-area">
        
      <h3 class="DetailTitle">주문 상세정보</h3>


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
        
        
        <table cellspacing="0" border="1" class="orderTb" width="100%">

        <thead>
          <tr>

            <th><strong>상품주문번호</strong></th>
            <th>상품정보</th>
            <th>상품금액(수량)</th>
            <th>배송비/판매자</th>
            <th>진행상태</th>

          </tr>
        </thead>

        <tbody>
          <tr class="group">

            <td>
              <span class="thm ordernum2">2022072319850950</span>
            </td>
            <td class="product">
          <div id="productName">
            [채선당] 샤브샤브 밀키트 (2인)
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

        <h4 class="DetailTitle">주문/결제 금액 정보</h4>
        
          <table cellspacing="0" border="1" class="orderPrice" width="100%">
        
          <tr class="money">
            <td class="first_money" colspan="6">
              <div class="l_none">
                <div class="price_list">
                  <h3>최초 주문금액</h3>
                    <!-- 주문금액 -->
                    <div class="price_list">
                        <div>상품금액</div>
                        <p class="thm"><em>12,650</em>원</p>
                        <div>배송비</div>
                        <p class="thm"><em>3000</em>원</p>
                        <div>적립금사용</div>
                        <p class="thm"><em>0</em>원</p>
                   </div>
                </div>
              </div>
              <br>
            </td>

            <td class="last_money" colspan="6" style="vertical-align:top;">
              <div class="l_none">
                <div class="price_list">
                  <h3>최종 주문금액</h3>
                    <!-- 주문금액 -->
                    <div class="price_list">
                        <p><em class="thm">15,650</em>원</p>
                   </div>
                </div>
              </div>
            </td>
          </tr>

          </table>

        <h4 class="DetailTitle">배송지 정보</h4>
        <table cellspacing="0" border="1" class="orderPlace" width="100%">

            <tr>
              <th class="deliveryTh" width="15%" height="30px;">수령인</th>
              <td width="55%" class="orderName"  height="30px;">김은영</td>
              <th width="30%"  height="30px;">주문자 정보</th>
            </tr>

            <tr>
              <th class="deliveryTh"  height="30px;">연락처</th>
              <td>
                <span class="tel">xxx-xxxx-xxxx</span>
                <span></span>
              </td>
              <!-- 주문자 정보 -->
              <td rowspan="3" style="vertical-align:top; text-align: start; padding: 10px;">
                <div class="orderName"><strong>홍길동</strong></div>
                <div class="tel">xxx-xxxx-xxxx</div>
              </td> 
            </tr>

            <tr>
              <th class="deliveryTh"  height="70px;">배송지</th>
              <td class="address">
                11111<br> <!--우편번호-->
                서울시 관악구 행운동 사랑아파트<br> <!-- 주소 -->
                111동 1111호 <!-- 상세주소 -->
              </td>
            </tr>
            
            <tr class="gap3">
              <th class="deliveryTh" height="30px;">배송메모</th>
              <td>빨리 보내주세요</td>
            </tr>
        
        </table>	
        
         <br><br>
         
      </div>

       
       
  </body>
</html>