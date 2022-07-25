<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹문서상세구조</title>





<link href="https://fonts.googleapis.com/css2?family=Acme&family=Anton&family=Archivo+Black&family=Koulen&family=Oswald:wght@500&family=Roboto+Condensed:wght@700&family=Sriracha&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/normalize.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">		
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/style-dustu.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/pater.css" />
	<!-- 	<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/testGrid.css" /> -->
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
		<link rel="stylesheet" href="<%=contextPath %>/resources/css/buttoncss2.css">
		
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/header.css">
		
		


		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

		





<style>
	
		body{margin:0 auto;}
		
		.wrap {
		  display: grid;
		  grid-template-columns: 270px minmax(420px, 1fr);
		  grid-template-rows: 150px 1fr; /* search Form */
		}
		
		.header {
			min-height: 100vh;
			grid-row: span 2;
			background-color:rgb(231, 216, 241);
		}
		
		.main{
			height:100%;
			background-color:pink;

		}
		.search-label{width:20%;}
		
		.top-bar {

		  display: grid;
		  column-gap: 5px;
		  grid-template-columns: 1fr 52px;
		  align-content: center;
		}
		
		.webLogo {
		  text-align: center;
		}
		.logo-bar{
			width:100%;
			/* z-index:1000; */
		}

        .bbtn{
            /* border: 1px solid black; */
            position: absolute;
        }
        .font-basic *{
			font-size:12px;
			color:black;
		}
</style>
</head>

<body>


  <div class="wrap">
		<div class="header">
			<!-- 로그인바 -->
			<div>
				<div class="webLogo">
						<div class="bbtn">
		                	<button class="custom-btn btn-8"><span>SIGN IN</span></button>
		                	<button class="custom-btn btn-8"><span>SIGN OUT</span></button>
		                	<button class="custom-btn btn-8"><span>SIGN UP</span></button>
            			</div>
            			<img src="<%=contextPath %>/resources/image/me.png" style="width:270px; height:220px;">
				</div>
			</div>
			<!-- 메뉴바 -->
			<nav class="demo-dust menu menu--dustu">
					
					<a class="menu__item" href="#">
						<span class="menu__item-name">Restaurant</span>
						<span class="menu__item-label">View all our Restaurant</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Meal Kit</span>
						<span class="menu__item-label">We can get to deliver to your home</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">MZ Pick</span>
						<span class="menu__item-label">Recently popular restaurant of MZ</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Editor Pick</span>
						<span class="menu__item-label">Read what others choice</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Event</span>
						<span class="menu__item-label">Read what others say</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Contact</span>
						<span class="menu__item-label">Get in touch and find us</span>
					</a>
					
			</nav>


			<!-- 공지사항 -->
			<div class="menu-footer_up" style="float: none;">
				<h2 style="font-size: 25px">
					<span class="fas fa-phone"></span>
					<span>1234-5678 </span>
				</h2>
				<p class="font_basic">오전 9시~오후 6시 운영/주말,휴일 휴무</p>

			</div>

			<div class="menu-footer_down font_basic">
				<p>
					- 전화 전 <a href="#">자주 묻는 질문</a>을 확인하세요.
				</p>
				<p>
					- <a href="#">1:1문의</a>를 통해서도 상담이 가능합니다.
				</p>
				<p>- 상품 문의는 각 상품 Q&A를 이용하세요.</p>

				<br> 
				<a href="" class="plain-btn btn">회원후기</a> 
				<a href="" class="plain-btn btn">적립금</a> 
				<a href="" class="plain-btn btn">공지사항</a>
				
			<br><br>
			
			</div>
				
		</div>

		<div class="top-bar logo-bar">
			<!-- 로고 넣는 바  -->
			<div><h1 id="header-style">&nbsp;&nbsp;&nbsp;&nbsp;════════ Delicious ════════</h1></div>			
		</div>
	    
    
    <!-- 메인페이지 여기에 담기 -->
    <div class="main" role="main">

	여기에 메인 페이지 넣어주세요
  		<script src="<%=contextPath %>/resources/js/demo.js"></script>
  		<script src="<%=contextPath %>/resources/js/demo.js"></script>


</body>

</html>