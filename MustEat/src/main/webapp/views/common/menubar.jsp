<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.member.model.vo.Member"%>
<% String contextPath = request.getContextPath(); 
	
	Member loginUser = (Member)session.getAttribute("loginUser");

	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹문서상세구조</title>

<!-- summernote -->
		
		<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> -->




<link href="https://fonts.googleapis.com/css2?family=Acme&family=Anton&family=Archivo+Black&family=Koulen&family=Oswald:wght@500&family=Roboto+Condensed:wght@700&family=Sriracha&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/normalize.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">		
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/style-dustu.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/pater.css" />
	<!-- 	<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/testGrid.css" /> -->
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" href="<%=contextPath %>/resources/css/buttoncss2.css">
		
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/resources/css/header.css">
		
		
		<!-- 카카오 지도 -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5083115c1fb16d0c71e6b310c47c7609"></script>

		


		<!-- 슬릭 -->
			<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
			<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
			<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css"/>
			<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css"/>

		<!-- favicon -->
		<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
		body{margin:0 auto;}
		
		.wrap {
		  display: grid;
		  grid-template-columns: 270px minmax(420px, 1fr);
		  grid-template-rows: 150px 1fr; /* search Form */
		}

		.menu__item-name, .menu__item-label{
			font-family: 'Sriracha', cursive;

		}
		
		.header {
			min-height: 100vh;
			grid-row: span 2;
			background-color:rgb(231, 216, 241);
		}
		
		.main{
			height:100%;
			background-color:white;

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

		.menu-footer_down{
			border:1px solid rgb(231, 216, 241);
			width:270px;
			height:79%;
			justify-content: center;
			align-items: center;
			padding: 20px;
			font-size:11.5px;
			background-color: white;
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
		.bbtn a{
			color: white;
		}
		.mustEatInfo{
			text-align:center;
		}
		.mustEatInfo>a{
			margin-left:2px;
			margin-bottom:7px;
		}
</style>
</head>

<body>

		<!-- alert문구 생성할 때 -->
	<% if(alertMsg != null) { %>
	<script>
		alert("<%=alertMsg%>");
		
		// 지우지 않으면 새로고침할 때마다 alert가 띄워짐
		// => 확인 버튼을 누르면 아예 사라지도록 설정(한 번 띄우고 난 뒤 안띄우기)
		// session.removeAttribute() : session 자체를 지우는 것이 아닌 안에 담긴 값을 삭제하는 것
		<% session.removeAttribute("alertMsg"); %>
	</script>
	<% } %>

  <div class="wrap">
    
		<div class="header">
			<!-- 로그인바 -->
			<div>
				<div class="webLogo">
					
					<% if(loginUser == null) { %> <!-- 로그인하지 않은 경우 -->
						<div class="bbtn">
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/login1.me" style="text-decoration: none;">SIGN IN</a></button>
		                	<button class="custom-btn btn-8"><span>SIGN OUT</span></button>
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/enroll1.me" style="text-decoration: none;">SIGN UP</a></button>
            			</div>
            			<img src="<%=contextPath %>/resources/image/me.png" style="width:270px; height:220px;">
					<% } else { %> <!-- 로그인한 경우 -->
						<div class="bbtn">
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/updateForm.me" style="text-decoration: none;">정보수정</a></button>
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/myPage.me" style="text-decoration: none;">MY PAGE</a></button>
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/logout.me" style="text-decoration: none;">로그아웃</a></button>
            			</div>
            			<img src="<%=contextPath %>/resources/image/me.png" style="width:270px; height:220px;">
            		<% } %>
				</div>
			</div>
			<!-- 메뉴바 -->
			<nav class="demo-dust menu menu--dustu">
					
					<a class="menu__item" href="<%=contextPath%>/list.st">
						<span class="menu__item-name">Restaurant</span>
						<span class="menu__item-label">View all our Restaurant</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/mealList.bo?cpage=1">
						<span class="menu__item-name">Meal Kit</span>
						<span class="menu__item-label">We can get to deliver to your home</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/clist.st">
						<span class="menu__item-name">MZ Pick</span>
						<span class="menu__item-label">Meet what MZ choice</span>
					</a>
					<a class="menu__item" href="#">
						<span class="menu__item-name">Event</span>
						<span class="menu__item-label">Read what others say</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/support.no">
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
				<p class="font_basic" style="margin:15px 0px 10px 0px;">오전 9시~오후 6시 운영/주말,휴일 휴무</p>

			</div>

			<div class="menu-footer_down font_basic">
				<p>
					- 전화 전 <a href="#" style="color:black;">자주 묻는 질문</a>을 확인하세요.
				</p>
				<p>
					- <a href="#" style="color:black;">1:1문의</a>를 통해서도 상담이 가능합니다.
				</p>
				<p>- 상품 문의는 각 상품 Q&A를 이용하세요.</p>

				<br> 
				
				<div class="mustEatInfo">
					<a href="" class="plain-btn btn" style="font-size:12px">회원후기</a> 
					<a href="" class="plain-btn btn" style="font-size:12px">적립금</a> 
					<a href="" class="plain-btn btn" style="font-size:12px">공지사항</a>
					</div>
					
					<div class="mustEatInfo">
					<a href="" class="plain-btn btn" style="font-size:12px; width:55px; height:40px;">FAQ</a>
					<a href="<%= contextPath %>/tosuserlist.no" class="plain-btn btn" style="font-size:12px">이용약관</a>
					<a href="" class="plain-btn btn" style="font-size:12px">1대1 문의</a>
					
					<p align="center" style="color:lightgray;">
						© MUSTEAT Corp.	
					</p>
				</div>
				
			<br><br>
			
			</div>
				
		</div>

		<div class="top-bar logo-bar">
			<!-- 로고 넣는 바  -->
			<div><h1 id="header-style" style="white-space : nowrap;">&nbsp;&nbsp;&nbsp;&nbsp;════════ Delicious ════════</h1></div>			
		</div>
	    
    
    <!-- 메인페이지 여기에 담기 -->
    <div class="main" role="main">

  		<script src="<%=contextPath %>/resources/js/demo.js"></script>
  		<script src="<%=contextPath %>/resources/js/demo.js"></script>

</body>

</html>