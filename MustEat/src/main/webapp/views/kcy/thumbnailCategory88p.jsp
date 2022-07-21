<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .list-area{
        align-items: center;
        margin:auto;
        /* border:1px solid white; */
        text-align:center;
        width:80%;
    }
    .thumbnail{
        border:1px solid lightgray;
        border-radius: 3%;
        overflow: hidden;
        display:inline-block;
        margin:20px;
        margin-left:35px;
        box-shadow: 9px 9px 4px 1px rgba(0, 0, 255, .2);
        cursor:pointer;
        
    }
   
    .thumbnail2{
        border:1px solid lightgray;
        border-radius: 5%;
        overflow: hidden;
        display:inline-block;
        margin:10px;
        margin-left:35px;
        margin-bottom:30px;
        margin-top:30px;
        box-shadow: 9px 9px 4px 1px rgba(0, 0, 255, .2);
        cursor:pointer;
    }

    p{
        text-align: center;
        font-size:15px;
        font-family: 'Lato', sans-serif;
        font-weight: 300;
        color: #676767;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<div class="outer">
        
        
        <div class="list-area">
	
            <div class="thumbnail" align="center">
                <img src="<%=contextPath%>/resources/image/cy/rank.jpg" width="270" height="170">
                <p>ME인정 맛집+리뷰 상위랭킹 확인하기</p>
                
            </div>

            <div class="thumbnail" align="center">
                <img src="<%=contextPath%>/resources/image/cy/mealkit.jpg" width="270" height="170">
                <p>맛집을 집에서도? 밀키트 찾아보기</p>
            </div>

            <div class="thumbnail" align="center">
                <img src="<%=contextPath%>/resources/image/mz.png" width="270" height="170">
                <p>MZ에디터들 글 구경하기</p>
            </div>

        </div>

        <br>




		<div class="list-area">
	
            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/rooftop.jpg" width="400" height="250">
                
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/neyorkcafe.jpg" width="410" height="250">
            </div>


        </div>
		
		<div class="list-area">
	
            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/bankan.jpg" width="450" height="250">
                
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/makgeolli.jpg" width="450" height="250">
            </div>


        </div>
		
        <div class="list-area">
            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/saltbread.jpg" width="450" height="250">
                
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/hapjung.jpg" width="450" height="250">
            </div>
        </div>
        
        <div class="list-area">
            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/dosirak.jpg" width="450" height="250">
                
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/shrimp.jpg" width="450" height="250">
            </div>
        </div>
        
        
        
       
        
        
        


    </div>
</body>
</html>