<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.notice.model.vo.FAQ"%>
<%
	FAQ f = (FAQ)request.getAttribute("f");
	int currentPage = (int)request.getAttribute("currentPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]공지사항등록</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/contactEnrollFormAdmin.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    td div{
        display:inline-block;
    }
	.btn{
        padding:5px;
        border-radius:20%;
		font-size:small;
        background:rgb(167, 112, 239);
        color:white;
	}
	button{
		cursor:pointer;
	}
</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="contactEnroll-area">

        <br><br>
        <h2><b>FAQ</b></h2>

    <div id="bar" style="background:black; height:3px;"></div>
    <br><br>

    <form action="<%= contextPath %>/adminFaqUpdate.no" method="post" class="contactForm">
    
    	<input type="hidden" name="faqNo" value="<%=f.getFaqNo()%>">
    	<input type="hidden" name="currentPage" value="<%= currentPage %>">

        <table style="width:800px; height:500px;">
            <tr>
                <th id="contactTT">공지제목</th>
                <td>
                    <input type="text" name="contactTitle" required value="<%=f.getFaqTitle()%>">
                </td>
            </tr>

            <tr>
                <th id="contactCT">공지내용</th>
                <td>
                    <textarea name="contactContent" cols="30" rows="10" style="resize:none" required><%= f.getFaqContent() %></textarea>
                </td>
            </tr>
        </table>

        <br>

        <div class="contactBtn">
            <button class="btn1" type="submit">수정</button>
            <button class="btn1" type="reset">초기화</button>
        </div>

    </form>

    <br><br>

    </div>

</body>
</html>