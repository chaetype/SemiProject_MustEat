<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<style>
    .outer{
        width:400px;
        margin:auto;
        margin-top:170px;
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
</style>
</head>
<body>
	<div class="outer">

		<h1 align="center">MZ</h1>
        
        <hr>
        <br>
        <!-- Sign In Form -->
        <form>
            <div class="form-floating mb-3">
            <input type="text" class="form-control" id="userId" placeholder="아이디">
            <label for="floatingInput">아이디</label>
            </div>
            <div class="form-floating mb-3">
            <input type="password" class="form-control" id="userPwd" placeholder="비밀번호">
            <label for="floatingPassword">비밀번호</label>
            </div>
        
        
            <div class="d-grid">
                <button class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" type="submit" style="background: rgb(167, 112, 239);">로그인</button>
            </div>
            
            <div>
                <div style="display:inline;">
                    <a class="small" href="">아이디 찾기 |</a>
                </div>
                <div style="display:inline;">
                    <a class="small" href="">비밀번호 찾기</a>
                </div>
                <div style="display:inline;"></div>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp
                    <a class="small" href="">회원가입</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>