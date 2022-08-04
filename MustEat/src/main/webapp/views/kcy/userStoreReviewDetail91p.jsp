<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.*" %>
<%
	Store s = (Store)request.getAttribute("s");
	StoreReview sr = (StoreReview)request.getAttribute("sr");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">

    <style>
        .wrap33{
            /* border: 1px solid black; */
            width: 80%;
            margin:auto;
            position: relative;
       
        }

        .popular2{
            margin:40px;
            /* border: 1px solid blue; */
        }
        .info3{
            display: inline-block;
            /* border: 1px solid red; */
            margin: 5px;
            width: 100%;
        }
        .tumbnail3{
            /* border: 1px solid black; */
            width: 400px;
            height: 400px;
            display: inline-block;
            text-align: center;
        }
        
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <div class="wrap33">
        <div class="outer333">
            <div class="popular2">
                <h1><%= sr.getReviewTitle() %></h1>
                <h6 style="float: right;">작성자 <%=sr.getReMemNick() %> 작성일자 <%=sr.getReviewEnrollDate() %> <br>조회수 <%=sr.getCount() %></h6>
                <br>
                <br>
                <hr>
                <div class="tumbnail3">
                    <img src="<%=contextPath%><%= sr.getReviewImgPath()%>"style="width: 100%; height:100%;">
                </div>
                <div class="info3">
                    <%=sr.getReviewContent() %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>