<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/myPage.css" />
</head>
<body>

	<%@include file="../common/menubar.jsp" %>

	<div class="myPage-area">

    <div class="purpleContainer">
      <div class="myPage-user">
        <img src="<%=request.getContextPath()%>/resources/image/user.png" id="userIcon">
        <div class="userInfo">
          <div class="name">김회원님 반갑습니다!
            <button type="button">내정보</button>
          </div>
          <div class="grade">등급 : 신뢰 리뷰어</div>
        </div>
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

  <div class="myPageList">

    <a href="" class="listTitle">my리뷰</a>
    <a href="" class="listMore">더보기 ></a>

    <table class="list">

      <thead>
        <tr>
          <th style="width:650px">제목</th>
          <th style="width:150px">좋아요수</th>
          <th style="width:150px">작성일자</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td>내 인생 최고의 맛집!</td>
          <td>130</td>
          <td>2022.07.02</td>
        </tr>

        <tr>
          <td>저만 믿고 오세요. 후회 안합니다. </td>
          <td>78</td>
          <td>2022.06.30</td>
        </tr>
    </tbody>

    </table>

 </div>


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