<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세부공지사항</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin:auto;
    }
    .content, .footer {
        width: 90%;
        max-width: 700px;
        margin-left: auto;
        margin-right: auto;
        padding: 3% 5%;
        font-family: "Spoqa Han Sans", "spoqahansans", "Apple SD Gothic Neo", "Nanum Barun Gothic", "Nanum Gothic", Verdana, Arial, "Malgun Gothic", Dotum, sans-serif;
    }
    .post-author-info {
        margin-bottom: 12%;
        text-align: center;
    }
    .post-title {
    font-size: 44px;
    margin-top: 30px;
    margin-bottom: 10px;
    color: #4d5256;
}
.outer h1 {
    line-height: 1.3em;
    font-weight: 700 !important; 
    display: block;
    /* font-size: 2em; */
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    /* font-weight: bold; */
    font-family: "Spoqa Han Sans", "spoqahansans", "Apple SD Gothic Neo", "Nanum Barun Gothic", "Nanum Gothic", Verdana, Arial, "Malgun Gothic", Dotum, sans-serif !important;
}
.post-date {
    margin-bottom: 10px;
    color: #81878b;
}
.sep {
    color: #81878b;
    margin: 0 5px;
}
.post-author-info .author-name {
    color: #81878b;
}
@import url(solarized_light.css);@import url(//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css);

</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">

        <div class="content" style="align-items:unset">
      


            <div class="post-author-info">
              
                <h1 class="post-title">'글'이 디자인이 될 때</h1>
                <span class="post-date">2020년 08월 21일</span>
                <span class="sep">|</span>
                <span class="author-name">유다정</span>
              
            </div>
            
            
            
            <div class="post">
                
            </div>
            
            
            
        </div>

    </div>


</body>
</html>