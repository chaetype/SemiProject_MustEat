<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<style>
    .outer{
        margin:auto;
        width: 80%;
        margin-top: 15%;
    }

    
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>

    <div class="outer" align="center">

        <img src="<%=contextPath%>/resources/image/complete.jpg" width="200" height="180">
        <br><br>
        <div style="font-weight:bold; font-size:20px">
            주문 접수가  <span style="color:rgb(155, 89, 182) ;">완료되었습니다.</span>  
        </div>
        <br>
        <div>xxx 고객님의 주문을 진심으로 감사드립니다.</div>
        <br><br>
        <button type="button" class="btn1" onclick="moveOrderList();">주문내역 상세보기</button>
    </div>

   
    
</body>
</html>