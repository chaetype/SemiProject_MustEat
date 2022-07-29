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
		
		<!-- 슬릭 -->
		<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css"/>
    	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css"/>

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
			/* background-color:pink; */

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

		.btn-outline-warning{
			color:rgb(231, 216, 241);
			background-color:transparent;
			background-image:none;
			border-color:rgb(231, 216, 241);
		}

		.btn-outline-warning:hover{
			background:rgb(213, 164, 247);
			border-color:rgb(213, 164, 247);
		}
		
		.input-text{
			height:50px;
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
			<nav class="demo-dust menu menu--dustu" style="font-size:15px;">
	
					<br>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 회원조회</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 회원탈퇴 내역</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 식당 조회</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 식당 등록</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 밀키트 조회</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 밀키트 등록</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 결제관리</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 리뷰관리</span>
					</a>
					<a class="menu__item" href="#" >
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 적립금 조회</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 적립금 지급</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 공지사항</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 1:1문의</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ FAQ</span>
					</a>		
					<a class="menu__item" href="<%=contextPath%>/tos.bo">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 이용약관</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/list.rp">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 신고관리</span>
					</a>				
					
			</nav>

				
		</div>

		<div class="top-bar logo-bar">
			<!-- 로고 넣는 바  -->
			<div><h1 id="header-style" style="white-space : nowrap;">&nbsp;&nbsp;&nbsp;&nbsp;════════ Delicious ════════</h1></div>			
		</div>
	    
    
    <!-- 메인페이지 여기에 담기 -->
    <div class="main" role="main">

  		<script src="<%=contextPath %>/resources/js/demo.js"></script>


</body>

</html>