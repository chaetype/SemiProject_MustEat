<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.product.model.vo.OrderDetail, java.text.DecimalFormat"%>
<%
	OrderDetail od = (OrderDetail)request.getAttribute("detail");
	ArrayList<OrderDetail> list = (ArrayList<OrderDetail>)request.getAttribute("list");
	
 	DecimalFormat df = new DecimalFormat("#,##0"); // 가격 천단위로 보여지도록 설정
%>
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
	
      <div class="orderDetail-area" style="font-family: 'OTWelcomeRA' !important;">
        
      <h3 class="detailTitle">주문 상세정보</h3>

		
        <ul class="order_detail">
          <li>
            <div>주문일자</div>
            <div class="orderDate"><strong><%=od.getOrderDate() %></strong></div>
          </li>

          <li>
            <div>주문번호</div>
             <div class="orderNo"><strong><%=od.getOrderNo() %></strong>
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
        <% for (OrderDetail odl : list) { %>
          <tr class="group">

            <td>
              <span class="thm ordernum2"><%=odl.getOrderNo() %></span>
            </td>
            <td class="product">
          <div id="productName" align="left"> 
            <%=odl.getProductName() %>
          </div>
          </td>
          
            <td class="money">
              <em class="thm"><%=df.format(odl.getPrice()) %></em>원<br>
                <span>(<%=odl.getAmount() %>개)</span>
            </td>
            <td class="sellerInfo" rowspan="1">
              <div class="send">
                  <div class="deliveryPrice"><%=df.format(odl.getDeliveryPrice()) %>원</div> 
                  <div class="seller"><%=odl.getSeller() %></div>
                  <div class="tel">
                    <span><%=odl.getSellerPhone() %></span>
                  </div>
              </div>
            </td>

            <td class="orderStatus">
              <%=odl.getDeliveryStatus() %>
            </td>

          </tr>
          <% } %>
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
                          <p class="thm"><em><%=df.format(od.getPrice()) %></em>원</p>
                        </li>
                        <li>
                          <span>배송비</span>
                          <p class="thm"><em><%=df.format(od.getDeliveryPrice()) %></em>원</p>
                        </li>
                        <li>
                          <span>적립금사용</span>
                          <p class="thm"><em><%=df.format(od.getDiscountPrice()) %></em>원</p>
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
                        <p><em><%=df.format(od.getTotalPrice()) %></em>원</p>
                   </div>
                </div>
            </td>
          </tr>

          </table>

        <h4 class="title">배송지 정보</h4>
        <table class="orderPlace" width="100%">

            <tr>
              <th width="15%" height="50px;" class="deliveryTh">수령인</th>
              <td width="55%" height="50px;"><%=od.getDelName() %></td>
              <th class="deliveryInfo" width="30%"  height="50px;">주문자 정보
                <button type="button" class="btn1" onclick="updateMem();">회원정보수정</button>
              </th>
            </tr>
            
            <script>
            	
            	function updateMem() {
            		location.href="<%=contextPath%>/updateForm.me";
            	}
            
            </script>

            <tr>
              <th height="30px;" class="deliveryTh">연락처</th>
              <td>
                <span class="tel"><%=od.getDelPhone() %></span>
                <span></span>
              </td>
              <!-- 주문자 정보 -->
              <td class="deliveryInfo" rowspan="3">
                <div class="orderName"><%=od.getMemName() %></div>
                <div class="orderPhone"><%=od.getMemPhone() %></div>
              </td> 
            </tr>

            <tr>
              <th height="70px;" class="deliveryTh">배송지</th>
              <td class="address">
                <%=od.getAddressCode() %><br> <!--우편번호-->
                <%=od.getAddress() %><br> <!-- 주소 -->
                <%=od.getAddressDetail() + od.getAddressRef() %> <!-- 상세주소 -->
              </td>
            </tr>
            
            <tr class="gap3">
              <th height="30px;" class="deliveryTh">배송메모</th>
              <% if(od.getMemo() == null) { %>
              <td> </td>
              <% } else { %>
              <td><%=od.getMemo() %></td>
              <% } %>
            </tr>
        
        </table>	
        
         <br><br>
         
      </div>

       
       
  </body>
</html>