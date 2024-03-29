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
		body { cursor: url('data:image/x-icon;base64,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'), auto; }
		
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
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/updateForm.me" style="text-decoration: none;">MODIFY</a></button>
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/myPage.me" style="text-decoration: none;">USER</a></button>
		                	<button class="custom-btn btn-8"><a href="<%=contextPath%>/logout.me" style="text-decoration: none;">SIGN OUT</a></button>
            			</div>
            			<img src="<%=contextPath %>/resources/image/me.png" style="width:270px; height:220px;">
            		<% } %>
				</div>
			</div>
			<!-- 메뉴바 -->
			<nav class="demo-dust menu menu--dustu" style="font-size:15px;">
				
					<br>
					<a class="menu__item" href="<%=contextPath %>/allMembersList.bo?cpage=1&a=1&c=no&search=">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 회원조회</span>
					</a>
					<a class="menu__item" href="<%=contextPath %>/memberWithdrawalAdmin.bo?cpage=1&a=4&c=kkk&search=">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 회원탈퇴 내역</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/storeadminlist.st">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 식당 조회</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/storeEnrollForm.st">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 식당 등록</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/AdminInsertProductView.do">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 밀키트 등록</span>
					</a>
					<a class="menu__item" href="<%=contextPath %>/reviewAdmin.bo?cpage=1&a=1&c=no&search=">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 리뷰관리</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/mpsList.me" >
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 적립금 조회</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/mpsPayList.me">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 적립금 지급</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/adminNoticeList.no?cpage=1">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 공지사항</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/adminContactList.no">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 1:1문의</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/adminFaqList.no?cpage=1">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ FAQ</span>
					</a>		
					<a class="menu__item" href="<%=contextPath%>/tosadminlist.no">
						<span class="menu__item-name" style="font-family: 'OTWelcomeRA'; line-height: 1.6;">▶ 이용약관</span>
					</a>
					<a class="menu__item" href="<%=contextPath%>/list.rp?cpage=1">
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