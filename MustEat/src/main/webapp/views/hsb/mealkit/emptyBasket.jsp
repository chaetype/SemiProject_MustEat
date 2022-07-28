<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
    <style>
        .outer{
            margin-top: 20%;
        }
    </style>
</head>
<body>

    <%@ include file="../../common/menubar.jsp"%>

    <div class="outer">

        <div class="img" align="center">
            <img src="<%=contextPath%>/resources/image/shopping-cart.png" width="250px" height="250px">
        </div>

        <br><br>

        <div align="center" style="font-size: 20px;">
            <b>장바구니가 비어있습니다.</b>
            <br>
            <b>새로운 상품을 담아주세요!</b>
        </div>

        <br><br>

        <div align="center">
            <button class="btn1" style="width:35%" >
                <b>쇼핑계속하기</b>
            </button>
        </div>
    </div>
    
</body>
</html>