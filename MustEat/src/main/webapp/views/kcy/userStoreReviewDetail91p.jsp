<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.*" %>
<%
	Store s = (Store)request.getAttribute("s");
	StoreReview sr = (StoreReview)request.getAttribute("sr");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">


    <style>
     .background {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.3);
        z-index: 1000;

        /* 숨기기 */
        z-index: -1;
        opacity: 0;
      }

      .show {
        opacity: 1;
        z-index: 1000;
        transition: all 0.5s;
      }

      .window {
        position: relative;
        width: 100%;
        height: 100%;
      }

      .modal {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #ffffff;
        box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);

        /* 임시 지정 */
        width: 1000px;
        height: 1000px;

        /* 초기에 약간 아래에 배치 */
        transform: translate(-50%, -40%);
      }

      .show .modal {
        transform: translate(-50%, -50%);
        transition: all 0.5s;
      }
      
      
        .wrap33{
            /* border: 1px solid black; */
            width: 80%;
            margin:auto;
            position: relative;
       
        }

        .popular2{
            margin:40px;
            /* border: 1px solid blue; */
        }
        .info3{
            display: inline-block;
            /* border: 1px solid red; */
            margin: 5px;
            width: 100%;
        }
        .tumbnail3{
            /* border: 1px solid black; */
            width: 400px;
            height: 400px;
            display: inline-block;
            text-align: center;
        }
        
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
 
    <div class="wrap33">
        <div class="outer333">
        
        	
            <div class="popular2">
                <h1><%= sr.getReviewTitle() %></h1>
                <h6 style="float: right;">작성자 <%=sr.getReMemNick() %> 작성일자 <%=sr.getReviewEnrollDate() %> <br>조회수 <%=sr.getCount() %></h6>
                <br>
                <br>
                <hr>
                <div class="tumbnail3">
                    <img src="<%=contextPath%><%= sr.getReviewImgPath()%>"style="width: 100%; height:100%;">
                </div>
                <div class="info3">
                    <%=sr.getReviewContent() %>
                </div>
                <% if(loginUser != null) { %>
                <div style="float: right;">
                	<button class="btn1 .btn-open-popup" id="show">신고하기</button>
                </div>
                <%} %>
            </div>
            
            
        </div>
        
        
        
        <div class="background">
        <div class="window">
        <div class="modal">
        	<form action="">
        	<h3>신고합니다</h3>
        	<input type="hidden" id="reportNo" name="reportNo">
        	<li>신고 유형 : <select name = "reportType"> <option value="1">식당리뷰신고</option>
        											   <option value="2">밀키트리뷰신고</option></li>
        	<li>신고 내용 : <input type=text id="reportContent" name="reportContent" placeholder="신고내용을 입력해주세요" width="200px" required></li>
        	
        	 <button type="submit" class="btn1" >신고제출</button><button id="close" class="btn1">신고취소</button>
        	</form>
        </div>
        </div>
        </div>
        
        <script>
        	
        	
        	function show() {
                document.querySelector(".modal").className = "background show";
              }

              function close() {
                document.querySelector(".modal").className = "background";
              }

              document.querySelector("#show").addEventListener("click", show);
              document.querySelector("#close").addEventListener("click", close);
        </script>
    </div>
    
    
    
    
    
    


    
</body>
</html>