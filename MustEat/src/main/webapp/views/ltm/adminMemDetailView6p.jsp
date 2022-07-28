<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
    .rwd-table{
        width: 80%;
    }

    h3{
        margin-left: 20% ;
        color: rgb(167, 112, 239);
    }
</style>

</head>
<body>
    <%@ include file="../common/adminMenubar.jsp" %>



    <div>
        <br><br>
        <hr>
        <h1 style="font-family: 'OTWelcomeRA';">(아이디)님 정보 조회 페이지</h1>
        <br>
		<h3>회원 상세 정보</h3>
		
		  <table class="rwd-table">
		    <tbody>
		      <tr>
		        <th ></th>
		        <th >정보</th>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code">회원번호</td>
		        <td data-th="Supplier Name">98</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">아이디</td>
		        <td data-th="Supplier Name">user098</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">이름</td>
		        <td data-th="Supplier Name">홍길동</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">휴대폰번호</td>
		        <td data-th="Supplier Name">010-1111-1111</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">가입일</td>
		        <td data-th="Supplier Name">2020.07.25</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">최근방문일</td>
		        <td data-th="Supplier Name">2022.07.02</td>
		      </tr>
		    </tbody>
		  </table>


          <br><br><br>
          <h3>회원 구매 이력</h3>
		
		  <table class="rwd-table">
		    <tbody>
		      <tr>
		        <th ></th>
		        <th >구매일자</th>
                <th >[상품번호]상품명</th>
		      </tr>
		      
              <tr>
		        <td data-th="Supplier Code">5</td>
		        <td data-th="Supplier Name">2022.05.12</td>
                <td data-th="Supplier Name">[A381] 닭한마리 칼국수 </td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">4</td>
		        <td data-th="Supplier Name">2022.01.23</td>
                <td data-th="Supplier Name">[A382] 샤브샤브 </td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">3</td>
		        <td data-th="Supplier Name">2021.10.12</td>
                <td data-th="Supplier Name">[B381] 감바스 </td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">2</td>
		        <td data-th="Supplier Name">2020.11.22</td>
                <td data-th="Supplier Name">[C121] 냉면 </td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">1</td>
		        <td data-th="Supplier Name">2020.12.12</td>
                <td data-th="Supplier Name">[A381] 닭한마리 칼국수 </td>
		      </tr>
		    </tbody>
		  </table>


          <br><br><br>
		<h3>회원 적립금 현황</h3>
		
		  <table class="rwd-table">
		    <tbody>
		      <tr>
		        <th ></th>
		        <th >적립금 상세</th>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code">누적 적립금</td>
		        <td data-th="Supplier Name">20,000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">사용된 적립금</td>
		        <td data-th="Supplier Name">7,000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">가용 적립금</td>
		        <td data-th="Supplier Name">13,000</td>
		      </tr>
		    </tbody>
		  </table>

          <br><br><br>
          <h3>회원 적립금 이력</h3>
		
		  <table class="rwd-table">
		    <tbody>
		      <tr>
		        <th >일자</th>
		        <th >적립 / 사용</th>
                <th >적립금 금액</th>
		      </tr>
		      
              <tr>
		        <td data-th="Supplier Code">2022.05.12</td>
		        <td data-th="Supplier Name">밀키트 구매</td>
                <td data-th="Supplier Name" style="color: rgb(54, 54, 246);">-4000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">2022.01.23</td>
		        <td data-th="Supplier Name">밀키트 구매</td>
                <td data-th="Supplier Name" style="color: rgb(54, 54, 246);">-3000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">2021.10.12</td>
		        <td data-th="Supplier Name">이벤트 당첨</td>
                <td data-th="Supplier Name" style="color: tomato;">+5000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">2021.10.12</td>
		        <td data-th="Supplier Name">이벤트 당첨</td>
                <td data-th="Supplier Name" style="color: tomato;">+5000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">2021.10.12</td>
		        <td data-th="Supplier Name">이벤트 당첨</td>
                <td data-th="Supplier Name" style="color: tomato;">+5000</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code">2021.10.12</td>
		        <td data-th="Supplier Name">이벤트 당첨</td>
                <td data-th="Supplier Name" style="color: tomato;">+5000</td>
		      </tr>
		    </tbody>
		  </table>
	</div>
</body>
</html>