<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.notice.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("n");
	int currentPage = (int)request.getAttribute("currentPage");
%>
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
        width:70%;
        height:100%;    
        margin:auto;
    }
    button{
    	cursor:pointer;
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
    .post div{
        text-align:center;
    }
    #noticeImg{
    	margin-top:10%;
    	margin-bottom:3%;
    }
    .noticeContent{
        line-height:30px;
        margin-bottom:10%;
        font-size:larger;
    }
    @import url(solarized_light.css);@import url(//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css);

</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">

        <div class="content" style="align-items:unset; display:contents;">
      


            <div class="post-author-info">
              
                <h1 class="post-title"><%= n.getNoticeTitle() %></h1>
                <span class="post-date"><%= n.getEnrollDate() %></span>
                <span class="sep">|</span>
                <span class="author-name"><%= n.getNoticeWriter() %></span>
              
            </div>
            
            
            
            <div class="post">
                
                <% if(n.getNoticeAttach() != null){ %>
	                <div id="noticeImg">
	                    <img src="<%= contextPath %>/<%= n.getNoticeAttach() %>" width="600" height="300">
	                </div>
                <% } %>

                <div class="noticeContent">
                    <%= n.getNoticeContent() %>
                </div>
                
            </div>

            <div align="center">
            	<% if(loginUser != null && loginUser.getMemId().equals(n.getNoticeWriter())){ %>
                <button type="submit" class="btn1" onclick="location.href='<%=contextPath%>/adminNoticeUpdateForm.no?no=<%=n.getNoticeNo()%>&cpage=<%=currentPage%>'">수정하기</button>
                <% } %>
                <button type="reset" class="btn1" onclick="location.href='<%=contextPath%>/adminNoticeList.no?cpage=<%=currentPage%>'">목록으로</button>
            </div>
            
            
            
        </div>

    </div>


</body>
</html>