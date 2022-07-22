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
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br>
        <h3>공지사항</h3>

        <table class="table table-hover">
              <tr>
                <th id="title" scope="row">[공지] 7월 이벤트 추첨 완료</th>
              </tr>
              <tr class="table-active">
                <td scope="row">
                  <p>
                    축하드립니다 <br>
                    하하하
                  </p>
                </td>
              </tr>

              <tr>
                <th id="title" scope="row">[공지] 택배 파업으로 인한 배송 지연 안내</th>
              </tr>
              <tr class="table-active">
                <th scope="row">
                  <p>
                    축하드립니다 <br>
                    하하하
                  </p>
                </th>
              </tr>

              <tr>
                <th id="title" scope="row">[공지] 서비스 점검 안내</th>
              </tr>
              <tr class="table-active">
                <th scope="row">ㅎㅎㅇㅇㅇㅇ</th>
              </tr>
        </table>
    </div>

    <script>
      $(function(){
        $("#title").click(function(){
          const $content = $(this).next();
        })
      })
    </script>

</body>
</html>