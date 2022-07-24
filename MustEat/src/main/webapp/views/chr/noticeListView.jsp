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
    
    .table-active{
      display:none;
    }

    .title{cursor:pointer;}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<!-- slideUp 반응이 너무 느림 -->

    <div class="outer">
        <br><br>
        <h3>공지사항</h3>
        <br><br>

        <table class="table table-hover">
              <tr class="title">
                <th scope="row">[공지] 7월 이벤트 추첨 완료</th>
              </tr>
              <tr class="table-active">
                <th scope="row">
                  <p>
                    축하드립니다 <br>
                    하하하
                  </p>
                </th>
              </tr>
              <tr class="title">
                <th scope="row">[공지] 7월 이벤트 추첨 완료</th>
              </tr>
              <tr class="table-active">
                <th scope="row">
                  <p>
                    축하드립니다 <br>
                    하하하
                  </p>
                </th>
              </tr>
              <tr class="title">
                <th scope="row">[공지] 7월 이벤트 추첨 완료</th>
              </tr>
              <tr class="table-active">
                <th scope="row">
                  <p>
                    축하드립니다 <br>
                    하하하
                  </p>
                </th>
              </tr>
        </table>
    </div>

    <script>
      $(function(){
        $(".title").click(function(){
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