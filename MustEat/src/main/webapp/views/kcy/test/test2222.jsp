<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .btn:hover{
    color:rgb(231, 216, 241);
}

.input-text:focus{
    box-shadow: 0px 0px 0px;
    border-color:rgb(167, 112, 239);
    outline: 0px;
}

.form-control {
    border: 1px solid rgb(167, 112, 239);
}

.btn-outline-warning{
    color:rgb(231, 216, 241);
    background-color:transparent;
    background-image:none;
    border-color:rgb(167, 112, 239);
}

.btn-outline-warning:hover{
    background:rgb(167, 112, 239);
    border-color:rgb(167, 112, 239);
}

.wrap-support{
    background-color:white;
    width:80%;
    height:100%;    
    margin:auto;
}

.support-button{
    display:inline-block;
    background-color:rgb(167, 112, 239);
    width:150px;
    height:150px;
    margin:7% 30px;
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
}
.wrap55{
    width: 300px;
}
</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">

</head>
<body>
    <%@ include file="../common/menubar.jsp"%>

    <div class="wrap55">
        <div class="input-group mb-3">
            <input type="text" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
            </div>
        </div>
    </div>
</body>
</html>