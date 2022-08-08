<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<style>

	.outer h1{
	font-family: 'OTWelcomeRA' !important;}
    .container{
        margin-top:4%;
        margin-left:20%;
    }

    .btn:hover{
        color:rgb(231, 216, 241);
    }

    .input-text:focus{
        
    
        box-shadow: 0px 0px 0px;
        border-color:rgb(231, 216, 241);
        outline: 0px;
    }

    .form-control {
        border: 1px solid rgb(231, 216, 241);
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

    .outer{
        background-color:#f8f9fa;
        width:70%;
        height:65%;    
        margin:auto;
        border-radius:5%;
    }

    .support-button{
        display:inline-block;
        background-color:rgb(231, 216, 241);
        width:150px;
        height:150px;
        margin:5% 30px;
        border-radius:30%;
    }

    .support-button a{
        display:inline-block;
        text-decoration:none;
        color:black;
        width:100%;
        height:100%;
        box-sizing:border-box;
        line-height:150px;
    }

    .support-button a:hover{
        color:white;
        text-decoration:none;
    }

    #input{
        height:100%;
    }

    h1{
        /* !! 폰트 수정 */
    }

    /* #notice-button{
        background-color:rgb(231, 216, 241);
        width:100px;
        height:100px;
    }

    #contact-button{
        background-color:rgb(231, 216, 241);
        width:100px;
        height:100px;
    } */
    
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer" align="center" >
        <br>
        <h1 align="center" style="margin-top:20%; margin-bottom:5%;"><b>무엇을 도와드릴까요?</b></h1>
        
        <!-- <div class="container justify-content-center" style="margin-left:20%">
    
            <div class="row">
        
               <div class="col-md-8">
                   
                    <form action="<%=contextPath%>/supportList.no">
                        <div class="input-group mb-3">
                            <input type="text" id="keyword" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                   
               </div>        
                
            </div>

            
        </div> -->
        
        <div class="support-button" id="notice-button"><a href="<%=contextPath%>/noticeList.no?cpage=1"><b>공지사항</b></a></div>

        <div class="support-button" id="contact-button"><a href="<%=contextPath%>/contactEnrollForm.no"><b>1 : 1 문의하기</b></a></div>

        <div class="support-button" id="faq-button"><a href="<%=contextPath%>/faqList.no"><b>FAQ</b></a></div>
    </div>

</body>
</html>