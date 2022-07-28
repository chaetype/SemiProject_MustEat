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
        width:400px;
        margin:auto;
        margin-top:12%;
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
        margin-left: 37%;
    }
    .btn1{
        border-radius: 2%;
        font-weight: bold;
        font-size: 18px;
    }
    p{
        white-space:pre 
    }
</style>

</head>
<body>
	<div class="outer">

		<!-- <h1 align="center">MZ</h1> -->

    	<a href=<%= request.getContextPath() %>><img src="<%= request.getContextPath() %>/resources/image/mz.png" align="center"></a>

        <hr>

        <br>
        <!-- Sign In Form -->
        <form action="<%= request.getContextPath() %>/login2.me" method="post">
            <div class="form-floating mb-3">
            	<input type="text" class="form-control" name="userId" placeholder="아이디" required>
           		<label for="floatingInput">아이디</label>
            </div>
            <div class="form-floating mb-3">
           		<input type="password" class="form-control" name="userPwd" placeholder="비밀번호" required>
           		<label for="floatingPassword">비밀번호</label>
            </div>
            

            <% if (request.getAttribute("errorMsg") != null) { %>
            <p align="left" style="color:red; font-size:small" id="text";><%= request.getAttribute("errorMsg") %></p>
        	<% } %>
            
        
            <div class="d-grid">
                <button class="btn1" type="submit">로그인</button>
            </div>
		</form>   
            
            <br>
            
            <div>
                <div style="display:inline;">
                    <a class="small" style="font-size: 15px;"  href="<%=request.getContextPath() %>/findId1.me">아이디 찾기 |</a>
                </div>
                <div style="display:inline;">
                    <a class="small" style="font-size: 15px;" href="<%=request.getContextPath() %>/findPwd1.me">비밀번호 찾기</a>
                </div>
                <div style="display:inline;"></div>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <a class="small" style="font-size: 15px;" href="<%=request.getContextPath() %>/enroll1.me">회원가입</a>
                </div>
            </div>
        
    </div>
    
</body>
</html>