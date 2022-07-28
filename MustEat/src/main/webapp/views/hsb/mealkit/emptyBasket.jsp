<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

    <%@ include file="../common/menubar.jsp"%>

    <div class="outer">

        <div class="img" align="center">
            <img src="C:\workspaces\MustEat Project\SemiProject_MustEat\MustEat\src\main\webapp\resources\image\shopping-cart.png" width="250px" height="250px">
        </div>

        <br><br>

        <div align="center" style="font-size: 20px;">
            <b>ì¥ë°êµ¬ëê° ë¹ì´ììµëë¤.</b>
            <br>
            <b>ìë¡ì´ ìíì ë´ìì£¼ì¸ì!</b>
        </div>

        <br><br>

        <div align="center">
            <button class="btn1" style="width:35%" >
                <b>ì¼íê³ìíê¸°</b>
            </button>
        </div>
    </div>
    
</body>
</html>