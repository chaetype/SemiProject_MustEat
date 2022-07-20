<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/myPage.css" />
</head>
<body>

	<%@include file="../common/menubar.jsp" %>

	<div class="myPage-area">

    <div class="purpleContainer">
      <div class="myPage-user">
        <img src="../../resources/image/user.png" id="userIcon">
        <div class="userInfo">
          <div class="name">김회원님 반갑습니다!</div>
          <div class="grade">등급 : 신뢰 리뷰어</div>
        </div>
      </div>    

      <div class="userModify" align="right">
      <button >회원 정보 수정</button>
      </div>

  </div>

  <div class="summaryContainer">
    <div class="item">
        <div class="number">354</div>
        <div>my리뷰</div>
      </div>
      <div class="item">
        <div class="number">354</div>
        <div>적립금</div>
      </div>
      <div class="item">
        <div class="number">354</div>
        <div>가고싶다</div>
      </div>

      <div class="item">
        <div class="number">354</div>
        <div>팔로우</div>
      </div>
  </div>  
  <div class="shippingStatusContainer">
    <div class="title">
      주문/배송조회
    </div>
    <div class="status">
      
      <div class="item">
        <div>
          <div class="purple number">
              <dt>6</dt>
           </div>
          <div class="text">장바구니</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="number">0</div>
          <div class="text">배송준비중</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="purple number">1</div>
          <div class="text">배송중</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="purple number">3</div>
          <div class="text">구매확정</div>
        </div>
      </div>     

      <div class="item">
        <div>
          <div class="purple number">3</div>
          <div class="text">취소/교환/반품</div>
        </div>
      </div>
      
    </div>
    
  </div>  
  <div class="listContainer">
    <a href="#" class="item">
        <div class="text">주문목록<span class="circle"></span></div>
        <div class="right"> > </div>
    </a>
    <a href="#" class="item">
        <div class="text">상품후기</div>
        <div class="right"> > </div>
    </a>
    <a href="#" class="item">
        <div class="text">상품문의</div>
        <div class="right"> > </div>
    </a>
    <a href="#" class="item">
        <div class="text">단골상점</div>
        <div class="right"> > </div>
    </a>
    <a href="#" class="item">
        <div class="text">찜한상품</div>
        <div class="right"> > </div>
    </a>
  </div>
  <div class="listContainer">
    <a href="#" class="item">
        <div class="text">
          <span>내지갑</span>
          <span class="smallLight">
            <span>|</span>
            <span>보유 적립금</span>
          </span>          
        </div>                
        <div class="right">
          <span class="blct">175 BLCT</span>
          > </div>
    </a>
    <a href="#" class="item">
        <div class="text">알림</div>
        <div class="right"> > </div>
    </a>
    <a href="#" class="item">
        <div class="text">설정</div>
        <div class="right"> > </div>
    </a>   
  </div>
  <div class="infoContainer">
    <a href="#" class="item">
      <div>icon</div>
      <div>공지사항</div>
    </a>    
    <a href="#" class="item">
      <div>icos</div>
      <div>이용안내</div>
    </a>    
    <a href="#" class="item">
      <div>icon</div>
      <div>고객센터</div>
    </a>
  </div>
</div>
</body>
</html>