<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
   
<style>
    .wrap22{
        border: 1px solid black;
        width: 80% ;
        height: 350px;
        margin-top: 170px;
        margin-left: 70px;
        z-index:1000;
        position: relative;
        display: flex;
        justify-content: center;
       
  
    }
	
    .content22{
        border: 1px solid black;
        width: 47% ;
        height: 300px;
        position: absolute;
        margin: 25px;
        margin-left: -470px;
    }

    .content23{
        border: 1px solid black;
        width: 47% ;
        height: 300px;
        position: absolute;
        margin-left: 490px;
        margin-top: 25px;
    }
	
    .img11{
        border: 1px solid black;
        width: 250px;
        height: 250px;
        display:inline-block;
        
        
    }

    .rmf11{
        /* border: 1px solid red; */
        width: 200px;
        display:inline-block;
    }
    
      .slider {
        width: 1800px;
        margin: 0px auto;
      }
      .slider .slick-slide {
        margin: 10px;
      }
      .slick-prev:before, .slick-next:before {
        color: #444444;
      }
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
   
    <div class="wrap22">
		
    
        <div class="content22">
            <div class="img11">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, <br>겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content23">
			<div class="img11">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, <br>겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div>
        <img src="<%=contextPath%>/resources/image/cy/purplecloud.png" style="width:100%; height:350px; ">
        </div>
    </div>
   
    
</body>
</html>