<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.product.model.vo.*, java.util.ArrayList, java.text.DecimalFormat"%>
<%
	//장바구니, 상품준비중, 배송중, 배송완료, 상품취소, 구매확정 주문수량
	OrderPro op = (OrderPro)request.getAttribute("orderStatus");
	// 장바구니 담은 '월'조회
	ArrayList<Basket> bMonth = (ArrayList<Basket>)request.getAttribute("basketMonth");
	// 장바구니 리스트
	ArrayList<Basket> bList = (ArrayList<Basket>)request.getAttribute("basketList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MustEat 주문현황</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/orderList.css">
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

	<!-- 장바구니 해당 카테고리에 속하는 목록들만 보여지는 페이지 -->

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
	
	<!-- 주문현황 리스트 -->
	  <!-- 바깥쪽 for문 -->
	    <% for(Basket b : bMonth) {  %>	  
	    <div class="orderDetailArea">
	
	    <div class="paySection orderMonth">
	      <h4><%=b.getMonth() %></h4>
	    </div>
	
	    <!-- 안쪽 for문 -->
		<% for(Basket bk : bList) { %>
		 	
		 	<% if(bk.getMonth().equals(b.getMonth())) { %>
	    <div class="paySection">
	
	      <div class="goodsGroup">
	
	        <ul class="goodsList">
	
	          <li class="goodsPayItem">
	          
			  <div class="checkGoods">
				<input type="checkbox" class="check" name="check" value="<%=bk.getBasketNo()%>">
	          </div>
	          
	            <div class="goodsItem">
	            <a href="해당 상품 주문상세페이지" class="goodsThumb">
	              <img src="<%=contextPath %>/resources/image/mz.png" alt="해당 물품사진" style="width:110px; height:110px;">
	            </a>
		    	
		    	<%
	       			DecimalFormat df = new DecimalFormat("#,##0"); // 가격 천단위로 보여지도록 설정
	       		%>	            
	            
	
	            <div class="goodsInfo" onclick="orderDetail();">
	              <a href="해당 상품 주문상세페이지" class="goods">
	                <p class="goodsName"><%=bk.getProductName() %></p>
	                <ul class="info">
	                  <li class="goodsPrice"><%=df.format(bk.getPrice()) %>원
	                    <span class="goodsAmount">/ <%=bk.getCount() %>개</span>
	                  </li>
	                  <li class="goodsDate" style="font-weight:bold;"><%=bk.getBasketDate() %></li>
	                </ul>
	              </a>
	              <span class="goodsStatus">구매 전</span>
	            </div>
	          </div>
	
	          <div class="sellerInfo">
	
	            <div class="inner">
	            <span class="orderNo" style="font-weight:bold;">
	                상품번호<br>
	                [<%=bk.getProductCode() %>]
	              </span>
	              <span class="seller"><%=bk.getSeller() %></span>
	              <span class="tel"><%=bk.getSellerPhone() %></span>
	            </div>
	          </div>
	
	          <div class="orderButton">
	            <a href="<%=contextPath%>/address.do?" class="plain-btn btn">구매하기</a>
	            <button type="button" class="plain-btn btn" id="updateBasket" data-toggle="modal" data-target="#updateModal">주문수정</button>
	            <a href="<%=contextPath%>/address.do?" class="plain-btn btn">상품삭제</a>
	          </div>
	      

		 <script>
  
			// '장바구니, 상품준비중, 배송중, 배송완료, 상품취소' 클릭하면 실행하는 함수
			   function orderStatus(status) { // 실행시 전달되는 값을 담는 매개변수
				location.href="<%=contextPath%>/orderStatusList.pro?status=" + status;
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
	  <%} %>
	  <!-- 바깥쪽 for문 끝-->
	  
	  <div class="line" style="border-bottom: 2px solid #ebe9e9;"></div>
 	  
 	  <div class="chooseAll">
	  	<button type="button" id="buy" class="choose btn1" onclick="chkClick();">전체 선택</button>
	  	<input type="checkbox" id="checkAll" name="checkAll" onclick="chooseAll(this);" style="display:none;">
	  	<button type="button" id="chooseBuy" class="chooseBuy btn1" onclick="chooseBuy();">선택한 상품 구매하기</button>
	  	<button type="button" id="delete" class="choose btn1" onclick="chooseDelete();">선택 삭제</button>
	  </div>
	  
	  <!-- 상품 '더보기' 영역!!! -->
	  <% if ( bList.size() >= 10) { %> <!-- 상품 10개 이하면 안보이도록 설정 -->
	  <div class="viewMore">
	  	<a href='#' id='load' class='btn1'>더 보기</a>
	  </div>
 	  <% }  %>
 
 	<script>

	// '전체 구매'누를 때 발생하는 함수
	function chkClick() {
		$("#checkAll").click();  // <input type="checkbox" id="checkAll" 요소 클릭
	}

	
	// '전체 구매' 클릭 후 체크박스가 클릭되어질 때 실행하는 함수
	function chooseAll(checkAll) {
		
		if( $("#checkAll").checked ) {
			$(this).attr("checked", false);
		} else {
			$(this).attr("checked", true);
		}
		
		let checkInput = document.getElementsByName("check");
		
		checkInput.forEach( (checkbox) => {
			checkbox.checked = checkAll.checked;
		})
	}
	
	// '선택한 상품 구매하기' 버튼 클릭시 발생하는 함수
	function chooseBuy() {
		location.href="";
	}
	

	// '선택 삭제' 버튼 클릭시 발생하는 함수
	function chooseDelete(){
		
		if(confirm("선택한 상품을 삭제하시겠습니까?")) {
			
			let delArr = [];
			
		$(".check").each(function() {
				if($(this).prop("checked")) {
					delArr.push( $(this).val() );
				}
			});
			
			console.log(delArr.toString());
			
			const str = delArr.toString();
			
			location.href="<%=contextPath%>/deleteBasket.pro?no=" + str;
			
		}
		
	}
	



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
   
   
   <!-- 장바구니 수정에 해당하는 Modal창 -->
	<div class="modal" id="updateModal" style="height: 100%; max-height: 700px;">
	  <div class="modal-dialog">
	    <div class="modal-content" style="display:inline-block;">
	
	      <!-- Modal Header -->
	      <div class="modal-header updateCart">
	        <h4 class="modal-title">주문수정</h4>
	        <button type="button" class="close" data-dismiss="modal" style="color:white;">&times;</button>
	        <!-- 해당 버튼 클릭시 모달과 연결해제 -->
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body" align="center">
	      
	        <form action="" method="post" id="update-form">
	        	<input type="hidden" name="userId" value="<%=loginUser.getMemId() %>">
	        	
	        	<%
	       			DecimalFormat df = new DecimalFormat("#,##0"); // 가격 천단위로 보여지도록 설정
	       		%>
				
          <div class="updateContent">
            <div class="delivery_item">
            	<span class="delivery_title">배송방법 : </span>
            	<span class="delivery">택배</span>
            </div>
            <div class="delivery_item">
            	<span class="delivery_title">배송비결제 : </span>
            	<span class="delivery">2,500원</span>
            </div>
          </div>
	</div>
	
	<div class="changePrice">
	  <div class="num">
         <div class="updown">
         	<span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
           <input type="text" name="p_num1" id="p_num1" class="p_num" value="2" onkeyup="javascript:basket.changePNum(1);">
           <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
         </div>
      </div>
      <div class="sum">40,000원</div>
	</div>
            
    <br><br>
            
    <div class="changePrice">
	  <div class="finalPrice">
	  	<span class="final_t">상품금액</span>
	  	<span class="final_p">10000원</span>
	  </div>
	  <div class="finalDelivery">
	  	<span class="final_t">배송비</span>
	  	<span class="final_p">2500원</span>
	  </div>
	</div>
	
	<br>
	<div align="center">
       <button type="submit" class="plain-btn btn" onclick="updateBasket();">확인</button>
       <button type="button" class="plain-btn btn" onclick="history.back();">취소</button>
    </div>

	        </form>
	          
	
	    <br>
    
	 	</div>
	 </div>
	</div>

</body>
</html>

</body>
</html>