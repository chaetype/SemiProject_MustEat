<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css"/>




<style>
    /* 마진 손 안댐 */
    .wrap22{
        /* border: 1px solid black; */
        width: 80% ;
        height: 350px;
        margin-top: 10px;
        margin-left: 100px;
        z-index:1000;
        position: relative;
        /* display: flex; */
        
       
  
    }
    .wrap23{
        /* border: 1px solid black; */
        width: 80% ;
        height: 350px;
        margin-top: -350px;
        margin-left: 100px;
        z-index:1000;
        display: flex;
        justify-content: center;
    }
	
    .content22{
        /* border: 1px solid black; */
        width: 470px ;
        height: 300px;
        margin: 20px;
        /* position: absolute; */
        
    }
    .content23{
        /* border: 1px solid black; */
        width: 470px ;
        height: 300px;
        margin: 20px;
        /* position: absolute; */
        
    }
 


	
    .img11{
        /* border: 1px solid black; */
        width: 250px;
        height: 250px;
        display:inline-block;
        
        
    }

    .rmf11{
        /* border: 1px solid red; */
        width: 200px;
        display:inline-block;
    }




</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <h1 style="text-align: center;">MUST EAT TOP 5 : RESTAURANT</h1>
    <div class="wrap22">
        
        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>
    </div>
    <div class="wrap23">
        <div>
            <img src="<%=contextPath%>/resources/image/cy/purplecloud.png" style="width:100%; height:350px; ">
        </div>
    </div>
    <br><br><br>
    <h1 style="text-align: center;">MUST EAT TOP 5 : REVIEW</h1>
    <div class="wrap22">
        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>
    </div>
    <div class="wrap23">
        <div>
            <img src="<%=contextPath%>/resources/image/cy/purplecloud.png" style="width:100%; height:350px; ">
        </div>
    </div>
    <br><br><br><br><br>

    <script type="text/javascript">
        $('.wrap22').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 3000,
        });
    </script>
    
</body>
</html>