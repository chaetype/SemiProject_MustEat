<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    .outer{
        width:500px;
        margin:auto;
        margin-top:10%;
    }
    h1{
        font-weight: bold;
        color: rgb(168, 99, 221);
        font-size: 80px;
        
    }
    .small{
        text-decoration: none;
        color: black;
    }
    img{
    	width: 130px;
        height: 120px;;
        margin: 0;
        margin-left: 36%;
    }
    .btn1{
        border-radius: 2%;
        font-weight: bold;
        font-size: 18px;
    }
    .pp{
        border: 0.5px solid black; 
        text-align: center; 
        height: 50px;
        line-height: normal;
        font-size: large;
        font-weight: bold;
        line-height: 220%;
    }

</style>
</head>
<body>
	<div class="outer">

		<!-- <h1 align="center">MZ</h1> -->

    	<img src="<%= request.getContextPath() %>/resources/image/mz.png" align="center">

        <p align="center" style="font-size: 23px; font-weight: bold; margin: 20px;">아이디 찾기 완료!</p>
        
        <hr>

        <p>
            아이디 찾기가 완료되었습니다. <br>
            개인정보 보호를 위해 아이디 일부를 별로*로 표시하였습니다.
        </p>

        <form>
            <div class="form-floating mb-3">
                <p class="pp">must******</p>
            </div>

            <div class="d-grid">
                <button class="btn1" type="submit">로그인</button>
            </div>         

            <br>

            <p>
                <b>아이디 발송</b> <br>
                가입시 입력한 이메일로 아이디를 발송해드립니다. <br>
                아래 발송 요청 버튼을 클릭해주세요
            </p>

        
            <div class="d-grid" style="padding-bottom: 10px;">
                <button class="btn1" type="submit">아이디 발송 요청</button>
            </div>
   
            
            <br>

            <div>
                <div style="display:block" align="right">
                    <a class="small" style="font-size: 15px;" href="">비밀번호 찾기 ></a>
                </div>
                
            </div>
        </form>
    </div>
</body>
</html>