<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css"
  rel="stylesheet"
/>
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.js"
></script>
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin:auto;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2>FAQ</h2>
        <br><br>

        <div class="accordion w-100" id="basicAccordion">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                  data-mdb-target="#basicAccordionCollapseOne" aria-expanded="false" aria-controls="collapseOne">
                  Q. 이벤트 응모는 어떻게 하는 건가요?
                </button>
              </h2>
              <div id="basicAccordionCollapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                data-mdb-parent="#basicAccordion">
                <div class="accordion-body">
                  A. 자동으로 응모됩니다.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                  data-mdb-target="#basicAccordionCollapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  Q. 적립금은 어디에 사용할 수 있나요?
                </button>
              </h2>
              <div id="basicAccordionCollapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                data-mdb-parent="#basicAccordion">
                <div class="accordion-body">
                  A. 밀키트 구매 시 사용 가능합니다.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                  data-mdb-target="#basicAccordionCollapseThree" aria-expanded="false" aria-controls="collapseThree">
                  Q. 배송지 수정은 어떻게 할 수 있나요?
                </button>
              </h2>
              <div id="basicAccordionCollapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                data-mdb-parent="#basicAccordion">
                <div class="accordion-body">
                  A. 회원정보수정 페이지에서 변경 가능합니다.
                </div>
              </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFour">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseFour" aria-expanded="false" aria-controls="collapseFour">
                    Q. 적립금 어떻게 사용하나요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. 밀키트 주문 시 적립금 사용 여부를 묻습니다.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFive">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseFive" aria-expanded="false" aria-controls="collapseFive">
                    Q. 식당 등록할 수 있나요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. 그건 저도 잘..
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingSix">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseSix" aria-expanded="false" aria-controls="collapseSix">
                    Q. 배송 취소는 어떻게 할 수 있나요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. 배송 출발 전 주문 조회 페이지에서 취소할 수 있습니다.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingSeven">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                    Q. 베스트 리뷰어가 되는 기준이 뭔가요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. 리뷰 추천 수에 따라 결정됩니다.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingEight">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseEight" aria-expanded="false" aria-controls="collapseEight">
                    Q. 식당 추천 기준이 뭔가요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. "맛" AND "힙"
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingNine">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseNine" aria-expanded="false" aria-controls="collapseNine">
                    Q. 머스트잇은 어떤 곳인가요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. MZ세대들을 겨냥한 힙한 맛집을 추천해주는 사이트입니다.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingTen">
                  <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseTen" aria-expanded="false" aria-controls="collapseTen">
                    Q. 회원가입 어떻게 해요?
                  </button>
                </h2>
                <div id="basicAccordionCollapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen"
                  data-mdb-parent="#basicAccordion">
                  <div class="accordion-body">
                    A. 회원가입 창을 클릭해보세요.
                  </div>
                </div>
              </div>
          </div>

    </div>

</body>
</html>