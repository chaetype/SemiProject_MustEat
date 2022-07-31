<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page
	import="com.mz.member.model.vo.MyPage, com.mz.product.model.vo.OrderPro
		  , java.util.ArrayList, com.mz.store.model.vo.StoreReview
		  , com.mz.product.model.vo.ProductReview
		  , com.mz.member.model.vo.Point"
 %> 
<%
	// 식당 리뷰, 밀키트 리뷰, 적립금, 가고싶다, 팔로우 수량
	MyPage mp = (MyPage)request.getAttribute("myPage");
	// 식당 리뷰 최신 2개 게시글
	ArrayList<StoreReview> storeReview = (ArrayList<StoreReview>)request.getAttribute("storeReview");
	// 밀키트 리뷰 최신 2개 게시글
	ArrayList<ProductReview> proReview = (ArrayList<ProductReview>)request.getAttribute("productReview");
	// 적립금 내역 최신 2개
	ArrayList<Point> mpsPoint = (ArrayList<Point>)request.getAttribute("mpsPoint");
	
	// 장바구니, 상품준비중, 배송중, 배송완료, 상품취소, 구매확정 주문수량
	OrderPro op = (OrderPro)request.getAttribute("orderStatus");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MustEat MyPage</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/myPage.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
</head>
<body>

	<%@include file="../common/menubar.jsp" %>

	<div class="myPage-area">

    <div class="purpleContainer">
      <div class="myPage-user">
        <img src="<%=request.getContextPath() %>/resources/image/user.png" id="userIcon">
        <div class="userInfo">
          <div class="name"><%=loginUser.getMemName() %>님 반갑습니다!
            <button type="button" class="btn1" onclick="myPageOpen();">내정보</button>
          </div>
          <div class="grade"><strong>등급 : <%=loginUser.getMemGrade() %> 리뷰어</strong></div>
        </div>
      </div>    
      
      <script>
      	
      	function myPageOpen() {
      		location.href = "<%=contextPath%>/updateForm.me";
      	}
      
      </script>
      
  </div>

  <div class="summaryContainer">
      <div class="item">
        <div class="number"><%=mp.getStoreReview() %>건</div>
        <div class="summary">식당 리뷰</div>
      </div>
    <div class="item">
        <div class="number"><%=mp.getProductReview() %>건</div>
        <div class="summary">밀키트 리뷰</div>
      </div>
      <div class="item">
        <div class="number"><%=mp.getMpsPoint() %></div>
        <div class="summary">적립금</div>
      </div>
      <div class="item">
        <div class="number"><%=mp.getStoreScrap() %>곳</div>
        <div class="summary">가고싶다</div>
      </div>

      <div class="item">
        <div class="number"><%=mp.getFollow() %>명</div>
        <div class="summary">팔로우</div>
      </div>
  </div>  
  <div class="shippingStatusContainer">
    <div class="title">
      나의 주문/배송 현황
    </div>
    <div class="status">
      
      <div class="item">
        <div>
          <div class="number basket" onclick="orderStatus(0);"><%=op.getBasket() %></div>
          <div class="text">장바구니</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="number orderStatus" onclick="orderStatus(1);" ><%=op.getOrderReady() %></div>
          <div class="text">상품준비중</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="number orderStatus" onclick="orderStatus(3);"><%=op.getOrderTransit() %></div>
          <div class="text">배송중</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="number orderStatus" onclick="orderStatus(4);"><%=op.getOrderDelivered() %></div>
          <div class="text">배송완료</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="number orderCancel" onclick="orderStatus(2);"><%=op.getOrderCancel() %></div>
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

 <div class="listContainer">

  <div class="myPageList">

    <a href="" class="listTitle">식당 리뷰</a>
    <a href="" class="listMore">더보기 ></a>

    <table class="list" width="100%">

      <thead>
        <tr>
          <th class="categoryTh" style="width:500px">제목</th>
          <th class="categoryTh" style="width:200px">식당명</th>
          <th class="categoryTh" style="width:150px">좋아요수</th>
          <th class="categoryTh" style="width:200px">작성일자</th>
        </tr>
      </thead>

      <tbody>
      <!-- 반복문 처리!!! -->
      <% for(StoreReview sr : storeReview) { %>
        <tr>
          <td class="categoryTd categoryTitle" ><%=sr.getReviewTitle() %></td>
          <td class="categoryTd categoryTitle" ><%=sr.getStoreName() %></td>
          <td class="categoryTd categoryContent"><%=sr.getScrapCount() %></td>
          <td class="categoryTd categoryContent"><%=sr.getReviewEnrollDate() %></td>
        </tr>
	  <% } %>
    </tbody>

    </table>

  </div>
  
    <div class="myPageList">

    <a href="" class="listTitle">밀키트 리뷰</a>
    <a href="" class="listMore">더보기 ></a>

    <table class="list" width="100%">

      <thead>
        <tr>
          <th class="categoryTh" style="width:600px">상품명</th>
          <th class="categoryTh" style="width:150px">좋아요수</th>
          <th class="categoryTh" style="width:200px">작성일자</th>
        </tr>
      </thead>

      <tbody>
      <!-- 반복문 처리!!! -->
      <% for (ProductReview pr : proReview) { %>
        <tr>
          <td class="categoryTd categoryTitle" ><%=pr.getProductName() %></td>
          <td class="categoryTd categoryContent"><%=pr.getScrapCount() %></td>
          <td class="categoryTd categoryContent"><%=pr.getPrReviewErollDate() %></td>
        </tr>
	  <% } %>
    </tbody>

    </table>

  </div>

  <div class="myPageList">

    <a href="" class="listTitle">적립금</a>
    <a href="" class="listMore">더보기 ></a>

    <table class="list" width="100%">

      <thead>
        <tr>
          <th class="categoryTh" style="width:300px">상세내용</th>
          <th class="categoryTh" style="width:210px">적립 및 사용 금액</th>
          <th class="categoryTh" style="width:220px">일자</th>
          <th class="categoryTh" style="width:210px">구분</th>
        </tr>
      </thead>

      <tbody>
       <!-- 반복문 처리!!! -->
       <% for (Point p : mpsPoint ) { %>
        <tr>
          <td class="categoryTd categoryTitle"><%=p.getMpsCategory() %></td>
          <td class="categoryTd categoryContent"><%=p.getMpsRecord() %>원</td>
          <td class="categoryTd categoryContent"><%=p.getSuDate() %></td>
          <td class="categoryTd categoryContent"><%=p.getMpsStatus() %></td>
        </tr>
	   <% } %>
    </tbody>

    </table>

  </div>

  <div class="myPageList">

    <a href="" class="listTitle">주문상세</a>
    <a href="" class="listMore">더보기 ></a>

    <table class="list" width="100%">

      <thead>
        <tr>
          <th class="categoryTh" style="width:470px">상품명</th>
          <th class="categoryTh" style="width:160px">결제금액</th>
          <th class="categoryTh" style="width:160px">구매일자</th>
          <th class="categoryTh" style="width:160px">진행상태</th>
        </tr>
      </thead>

      <tbody>
       <!-- 반복문 처리!!! -->
        <tr>
          <td class="categoryTd categoryTitle" >[채선당] 샤브샤브 밀키트 (2인)</td>
          <td class="categoryTd categoryContent">15,900원</td>
          <td class="categoryTd categoryContent">2022.07.02</td>
          <td class="categoryTd categoryContent">배송준비중</td>
        </tr>

        <tr>
          <td class="categoryTd categoryTitle">닭한마리 칼국수</td>
          <td class="categoryTd categoryContent">18,900원</td>
          <td class="categoryTd categoryContent">2022.06.30</td>
          <td class="categoryTd categoryContent">배송중</td>
        </tr>
         <!-- 반복문 처리!!! -->
    </tbody>

    </table>

  </div>

  <div class="myPageList">
    
    <a href="" class="listTitle">가고싶다</a>
    <a href="" class="listMore">더보기 ></a>

    <table class="list" width="100%">

      <thead>
        <tr>
          <th class="categoryTh" style="width:300px">음식점</th>
          <th class="categoryTh" style="width:500px">주소</th>
          <th class="categoryTh" style="width:150px">평점</th>
        </tr>
      </thead>

      <tbody>
       <!-- 반복문 처리!!! -->
        <tr>
          <td class="categoryTd categoryTitle">성수베이킹스튜디오</td>
          <td class="categoryTd categoryContent">서울 성동구 서울숲2길 46</td>
          <td class="categoryTd categoryContent">4.5</td>
        </tr>

        <tr>
          <td class="categoryTd categoryTitle">앨리스리틀이태리</td>
          <td class="categoryTd categoryContent">서울 송파구 백제고분로41길 43-21</td>
          <td class="categoryTd categoryContent">4.3</td>
        </tr>
         <!-- 반복문 처리!!! -->
    </tbody>

    </table>

  </div>

 </div>

</div>
</body>
</html>