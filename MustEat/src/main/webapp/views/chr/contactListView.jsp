<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/combine/npm/bootswatch@5.1.3/dist/lux/bootstrap.min.css,npm/bootswatch@5.1.3/dist/lux/bootstrap.min.css">
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin:auto;
    }
    table{text-align:center;}
    .table-active{
        display:none;
        text-align:left;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2>1 : 1 문의 내역</h2>
        <br><br>

        <table class="table table-hover">
            <thead>
              <tr style="background:rgba(168, 108, 203, 0.518);">
                <th style="font-size:medium; text-align:center;" scope="col">번호</th>
                <th style="font-size:medium; text-align:center;" scope="col">문의</th>
                <th style="font-size:medium; text-align:center;" scope="col">상태</th>
                <th style="font-size:medium; text-align:center;" scope="col">작성일</th>
              </tr>
            </thead>
            <tbody>
                <tr class="contact-title">
                    <td>2</td>
                    <td>[주문] 닭한마리 칼국수 품절이던데</td>
                    <td>답변 대기</td>
                    <td>2022-07-10</td>
                </tr>
                <tr class="table-active" style="background:rgba(249, 240, 254, 0.868)">
                    <td colspan="4"></td>
                </tr>
                <tr class="contact-title">
                    <td>1</td>
                    <td>[배송] 배송 조회가 안 돼요.</td>
                    <td>답변 완료</td>
                    <td>2022-06-15</td>
                </tr>
                <tr class="table-active" style="background:rgba(249, 240, 254, 0.868)">
                    <td colspan="4">
                        <p>
                            안녕하세요, 고객님. <br>
                            머스트잇 고객관리팀 입니다. <br><br>

                            먼저 불편하게 해드린 점에 죄송한 마음 전하며 답변 드리겠습니다. <br>
                            현재 주문해주신 상품은 발송 처리 되었으나 택배사 사정으로 인해 택배 조회가 불가능한 것으로 확인됩니다. <br>
                            문제가 해결되는대로 안내 드리겠습니다. <br><br>

                            저희 머스트잇을 이용해 주셔서 감사합니다.
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
        $(function(){
          $(".contact-title").click(function(){
            const $content = $(this).next();
            if($content.css("display") == "none"){
              $(this).siblings(".table-active").slideUp();
  
              $content.slideDown();
            }else{
              $content.slideUp();
            }
          })
        })
      </script>

</body>
</html>