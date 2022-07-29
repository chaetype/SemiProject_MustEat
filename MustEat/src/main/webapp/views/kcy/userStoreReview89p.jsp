<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.StoreReview"%>
<%ArrayList<StoreReview> list = (ArrayList<StoreReview>)request.getAttribute("list");%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MUST EAT</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
	<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">

<style>
	.wrap22{
        /* border: 1px solid black; */
        width: 80% ;
        height: 350px;
        /* margin-top: 10px;
        margin-left: 100px; */
        margin: auto;
     
        /* position: relative; */
        /* display: flex; */
        /* background-color: rgb(231, 216, 241); */
		background-image: url("<%=request.getContextPath()%>/resources/image/cy/purplecloud.png");
  
    }
    
	
    .content22{
        /* border: 1px solid black; */
        /* width: 470px ; margin: 20px; */
        height: 300px;
        width: 80% ; margin: auto;
        /* position: absolute; */
        
    }
    .content23{
        /* border: 1px solid black; */
        /* width: 470px ;margin: 20px; */
        height: 300px;
        width: 80% ; margin: auto;
        /* position: absolute; */
        
    }
 
    .img11{
        /* border: 1px solid black; */
        width: 250px;
        height: 250px;
        display:inline-block;
        
        
    }

    .rmf11{
        /* border: 1px solid red; */
        width: 200px;
        display:inline-block;
    }
	
	.slick-prev:before {
	color: rgb(167, 112, 239) !important;
	background-color: white;
	}
	.slick-next:before {
	color: rgb(167, 112, 239) !important;
	background-color: white;
	}








	.wrap44{
		/* width: 80%;
		margin-left: 20%; */
		width: 80%;
		margin: auto;
	}
	.wrap55{
		display: inline-block;
	}

	.test1{
		display: inline-block;
	}

	.btn1{
		font-family: 'OTWelcomeRA';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
		font-weight: normal;
		font-style: normal;
	}
	.a222{
    	float:right;
    	color:red;
    	font-size:10px;
    	cursor:pointer;
    }
    
    .a222:hover{
    	background-color: rgb(231, 216, 241);
    	color: red;
    }





	body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:4%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.page-link {
	    position: relative;
	    display: block;
	    color: #673AB7 !important;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #673AB7 !important;
	}
	
	
	.page-link:hover {
	    z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
	
	
	.page-link:focus {
		border-color: rgb(167, 112, 239) !important;
	    z-index: 3;
	    outline: 0;
	    box-shadow: none;
	}
	.rwd-table{
		width: 100%;
	}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>
	<h1 style="text-align: center;">MUST EAT TOP 5 : RESTAURANT</h1>
    <div class="wrap22">
        
        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>
    </div>
    
    <br><br><br>
    <h1 style="text-align: center;">MUST EAT TOP 5 : REVIEW</h1>
    <div class="wrap22">
        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>


        <div class="content23">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호오오족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content22">
            <div class="img11"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>
    </div>
    
	<br><br><br><br><br>

    <script type="text/javascript">
        $('.wrap22').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 3000,
        });
    </script>






	<div class="wrap44">
	
		<h2 style="text-align:center">MZ RESTAURANT REVIEWS</h2>
		
		  <table class="rwd-table">
		  		<thead>
		  			<tr>
						<th width="75">글번호</th>
						<th width="100">게시자</th>
						<th width="80">아이디</th>
						<th>리뷰제목</th>
						<th width="70">별점</th>
						<th width="150">게시일</th>
						<th width="75">비고</th>
						<th width="75">조회수</th>
					</tr>
		  		</thead>
				<tbody>
					<% if(list.isEmpty()) { %>
		                <!--case1. 게시글이 없을 경우-->
		                <tr>
		                    <td colspan="8">존재하는 게시글이 없습니다.</td>
		                </tr>
						<% }else { %>
		                <!--case2.게시글이 있을 경우-->
		                <td colspan="8"></td>
		                	<% for(StoreReview sr : list){ %>
			                <tr>
			                    <td><%=sr.getReNo()%></td>
			                    <td><%= sr.getReviewWriter()%></td>
			                    <td><%= sr.getReviewMemId()%></td>
			                    <td><%= sr.getReviewTitle()%></td>
			                    <td><%= sr.getReviewRate() %></td>
			                    <td><%= sr.getReviewEnrollDate()%></td>
			                    <td><%= sr.getMemLevel()%></td>
			                    <td><%= sr.getCount()%></td>
			                </tr>
                	<% } %>
				<% } %>
				
				
				

				</tbody>
		  	</table>
	
		<form action="test.do">
			<div class="test1">
			<select name="select11" style="height: 48px; margin: 10px;">
				<option value="name">게시자</option>
				<option value="reviewTitle">리뷰제목</option>
				<option selected>선택안함</option>
			</select>
			</div>
			<div class="wrap55">
				<div class="input-group mb-3">
					<input type="text" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
			<button class="btn1" style="float: right; margin:10px;">글쓰기</button>
		</form>
	</div>
	
	<div class="wrapper-paging">
					    
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">&lt;</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">&gt;</a></li>
			</ul>
		</nav>					
	
	</div>
	<br><br><br><br><br>
	
	
	
		<script>
    	$(function(){
    		$(".list-area>tbody>tr").click(function(){
    			const num = $(this).children().eq(0).text(); // 클릭했을때의 글번호
    			
    			// 요청할url?키=밸류&키=밸류... 
    			// 요청시전달값(키=밸류) => 쿼리스트링 
     			
    			// /web/detail.no?no=xx
    			location.href = '<%=contextPath%>/detail.rp?no=' + num;
    		})
    	})
    	
    </script> 
</body>
</html>