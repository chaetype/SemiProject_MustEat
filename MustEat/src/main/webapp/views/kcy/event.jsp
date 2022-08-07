<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrap1{
	width:80%;
    margin: auto;
	}

    .thumb1{
        margin: 20px;
        display: inline-block;
    }
</style>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>
<br><br><br><br><br>
<div class="wrap1">
    <div class="thumb1">
        <img src="<%= contextPath%>/resources/image/cy/gift.jpg" alt="" style="width:400px; height:400px;">
        <br>
        <h4><b>사은품 관련 이벤트! <br> 2022-08-05</br></h4>
    </div>
    <div class="thumb1">
        <img src="<%= contextPath%>/resources/image/cy/insta.jpg" alt="" style="width:400px; height:400px;">
        <br>
        <h4><b> 머스트잇 팔로우하고 포인트 받자!<br> 2022-08-01</br></h4>
    </div>
    <div class="thumb1">
        <img src="<%= contextPath%>/resources/image/cy/summervacation.jpg" alt="" style="width:400px; height:400px;">
        <br>
        <h4><b> 여름휴가 안내사항 및 이벤트<br> 2022-07-20</br></h4>
    </div>
</div>
</body>
</html>