<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.notice.model.vo.Contact"%>
<%
	Contact c = (Contact)request.getAttribute("c");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세부공지사항</title>
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css"
  rel="stylesheet"
/>
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.js"
></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    .outer{
        background-color:white;
        width:70%;
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
        /* font-weight:bolder; */
    }
@import url(solarized_light.css);@import url(//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css);

</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">

        <div class="content" style="align-items:unset; display:contents;">
      


            <div class="post-author-info">
              
                <h1 class="post-title">
                	[<%= c.getContactType() %>] <%= c.getContactTitle() %>
                </h1>
                <span class="post-date"><%= c.getEnrollDate() %></span>
                <span class="sep">|</span>
                <span class="author-name"><%= c.getContactWriter() %></span>
              
            </div>
            
            
            
            <div class="post">
                
                <% if(c.getContactAttach() != null){ %>
	                <div id="noticeImg">
	                    <img src="<%= contextPath %>/<%= c.getContactAttach() %>" width="600" height="300">
	                </div>
                <% } %>

                <div class="noticeContent">
                    <%= c.getContactContent() %>
                </div>
                
            </div>
            
            <form action="<%= contextPath %>/reply.no" method="post">
            	<input type="hidden" name="no" value="<%=c.getContactNo()%>">
            	<% if(c.getAnswer() != null){ %>
            		<div class="form-outline" style="width:600px; margin:auto;">
            			<input type="hidden" name="chkNo" value="1">
		                <textarea class="form-control" name="answer" id="textAreaExample" rows="4"><%= c.getAnswer() %></textarea>
		                <label class="form-label" for="textAreaExample"></label>
		            </div>
		            <br>
		            <div style="width:76%" align="right">
		                <button type="submit" class="btn1">답변 수정</button>
		                <button type="button" class="btn1" onclick="toList();">목록으로</button>
		            </div>
            	<% }else{ %>
	            <div class="form-outline" style="width:600px; margin:auto;">
	            	<input type="hidden" name="chkNo" value="2">
	                <textarea class="form-control" name="answer" id="textAreaExample" rows="4"></textarea>
	                <label class="form-label" for="textAreaExample">답변 입력</label>
	            </div>
	            <br>
	            <div style="width:76%" align="right">
	                <button type="submit" class="btn1">답변 등록</button>
	                <button type="button" class="btn1" onclick="toList();">목록으로</button>
	            </div>
	            <% } %>
	        </form>
	        <script>
	            document.querySelectorAll('.form-outline').forEach((formOutline) => {
	            new mdb.Input(formOutline).init();
	            });
	            
	            function toList(){
	            	location.href="<%=contextPath%>/adminContactList.no";
	            }
	        </script>
            
            
            
        </div>

    </div>


</body>
</html>