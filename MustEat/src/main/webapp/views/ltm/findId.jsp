<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<style>
    .outer{
        width:400px;
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
    	width: 120px;
        height: 100px;;
        margin: 0;
        margin-left: 36%;
    }
    .btn1{
        border-radius: 2%;
        font-weight: bold;
        font-size: 18px;
    }

</style>
</head>
<body>
	<div class="outer">

		<!-- <h1 align="center">MZ</h1> -->

    	<a href=<%= request.getContextPath() %>><img src="<%= request.getContextPath() %>/resources/image/mz.png" align="center"></a>

        <p align="center" style="font-size: 23px; font-weight: bold; margin: 20px;">아이디 찾기</p>
        
        <hr>


        <form >
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="userNmae" placeholder="성명">
                <label for="floatingInput">성명</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" name="userEmail" placeholder="이메일 주소" >
                <label for="floatingPassword">이메일 주소</label>
            </div>
            <p style="font-size:small; color:gray; margin-top:0;">
            	must-eat place 가입시 사용하신 이메일을 입력하세요.
            </p>
        
        
            <div class="d-grid" style="padding-bottom: 10px;">
                <button class="btn1" type="submit">아이디 찾기</button>
            </div>
            <div class="d-grid">
                <button class="btn1" type="button" onclick="location.href='<%=request.getContextPath() %>/login1.me';">로그인</button>
            </div>            
            
            <br>

            <div>
                <div style="display:block" align="right">
                    <a class="small" style="font-size: 15px;" href="<%=request.getContextPath() %>/findPwd1.me">비밀번호 찾기 ></a>
                </div>
                
            </div>
        </form>
    </div>
</body>
</html>