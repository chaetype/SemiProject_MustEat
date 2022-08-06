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
     
	.container-tos {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.tos-table{
		width:100%;
	}
	
	.tos-enroll{
		margin-top:2%;	
		text-align:center;
	}
	
	#tos-list-area>tbody>tr:hover{
    	cursor:pointer;
    }
	
	@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');
    .card{position: relative;display: flex;flex-direction: column;min-width: 0;padding: 20px;word-wrap: break-word;background-color: #fff;background-clip: border-box;border-radius: 6px;-moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1)}
	
	.card input{margin-top:10px}.btn-success{color: #fff;background-color: #ff5300;border-color: #ff5300}
	
	.btn-success:hover{color: #fff;background-color: #ff0000;border-color: #ff0000}
	
	.btn-success.focus, .btn-success:focus{box-shadow: 0 0 0 0.2rem rgb(255, 255, 255)}
	
	.btn-success:not(:disabled):not(.disabled):active, .show>.btn-success.dropdown-toggle{color: #fff;background-color: #ff0000;border-color: #ff0000}
	
	.form-control:focus{color: #495057;background-color: #fff;border-color: #ff5300;outline: 0;box-shadow: 0 0 0 1px rgb(255, 255, 255) !important}
	
	
	
	
      
      
      
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
            <input type="hidden" name="<%= sr.getReNo()%>">
                <h1><%= sr.getReviewTitle() %></h1>
                <h6 style="float: right;">작성자 <%=sr.getReMemNick() %> 작성일자 <%=sr.getReviewEnrollDate() %> <br>조회수 <%=sr.getCount() %></h6>
                <br>
                <br>
                <hr>
                <%-- <div class="tumbnail3">
                    <img src="<%=contextPath%><%= sr.getReviewImgPath()%>"style="width: 100%; height:100%;">
                </div> --%>
                <div class="info3">
                    <%=sr.getReviewContent() %>
                </div>
                
            </div>
            
            
        </div>
        
        
        
        
        
       
		
		<form action="<%= contextPath %>/insert.rp" id="tos-modify-form" method="post">
				
		<!-- 등록 The Modal -->
		<div class="modal fade" id="myModal">
		    <div class="modal-dialog">
		      <div class="modal-content">
		      		        
		        <!-- Modal body -->
		        <div class="modal-body">
		          
					<input type="hidden" name="reno" value="<%=sr.getReNo() %>">
					<input type="hidden" name="reportedMemId" value="<%= sr.getReviewMemId() %>">
					<div class="container d-flex justify-content-center text-center">
					    <div class="card px-5 py-5">
					        <div class="row">
					        <h1 style="font-family: 'OTWelcomeRA';">신고합니다</h1>
					            <div class="col-md-6" style="float:left;"> 신고유형<br><br> 
					            <input type="radio" name="reportType" value="1">식당리뷰신고<br>
        						<input type="radio" name="reportType" value="2">밀키트리뷰신고</div>
					        </div>
					        <div class="row mt-3">
					            <div class="col-md-12" style="width:100%;"> <textarea name="reportContent" rows="15" class="form-control" id="tos-content" style="width:100% !important; resize:none;" placeholder="신고 내용" ></textarea> </div>
					        </div> <button id="report"  type="submit" value="신고내용" class="btn btn-primary mt-5" style="background:rgb(167, 112, 239) !important;">신고제출<i class="fa fa-long-arrow-right ml-2 mt-1"></i></button>
					    </div>
					</div>				          
		          
		        </div>
		        
		        <!-- Modal footer -->
		        <div class="modal-footer">
		          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        </div>
		        
		      </div>
		    </div>
		  </div>
		  
		  
		  </form>
		  
		 <% if(loginUser != null) { %>
        
        <%} %>
      
		<button type="button" class="btn1" id="tos-enroll-btn" data-toggle="modal" data-target="#myModal">신고하기</button>
        <button type="button" class="btn1" id="tos-delete-btn" onclick="history.back();">목록가기</button>
        
       
        
        
        
        
        
        
        
        
        
        
    </div>
    
   
    
    
    
    


    
</body>
</html>