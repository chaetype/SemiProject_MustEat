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
        <h2><b>공지사항</b></h2>

    <div id="bar" style="background:black; height:3px;"></div>
    <br><br>

    <form action="<%= contextPath %>/adminNoticeUpdate.no" method="post" class="contactForm" enctype="multipart/form-data">
    
    	<input type="hidden" name="noticeNo" value="<%=n.getNoticeNo()%>">
    	<input type="hidden" name="currentPage" value="<%= currentPage %>">

        <table style="width:800px; height:500px;">
            <tr>
                <th id="contactTT">공지제목</th>
                <td>
                    <input type="text" name="contactTitle" required value="<%=n.getNoticeTitle()%>">
                </td>
            </tr>

            <tr>
                <th id="contactCT">공지내용</th>
                <td>
                    <textarea name="contactContent" cols="30" rows="10" style="resize:none" required><%= n.getNoticeContent() %></textarea>
                </td>
            </tr>

            <tr>
                <th id="contactFI">파일첨부</th>
                <td>
                	<% if(n.getNoticeAttach() != null) { %>
                		<div id="attachImg" style="margin-left:20px;">
                            <img src="<%=contextPath%>/<%=n.getNoticeAttach()%>" id="preview" width="100px" heigh="50px" onclick="chooseFile();" title="클릭해서 수정">
                            <input type="hidden" name="originFile" id="originFile" value="<%=n.getNoticeAttach()%>">
                        </div>
                		<div class="btn" id="btnDe" onclick="deleteImg();" style="margin-left:20px;">삭제</div><br>
                		<input type="file" name="changeFile" id="changeFile" onchange="loadImg(this);" style="display:none">
                	<% }else{ %>
                    	<input type="file" name="contactFile" style="margin-left:20px;">
                    <% } %>
                </td>
            </tr>
        </table>

        <br>

        <div class="contactBtn">
            <button class="btn1" type="submit">수정</button>
            <button class="btn1" type="reset">초기화</button>
        </div>

    </form>
    
    <script>
    	function chooseFile(){
    		$("input").click();
    	}
    	
    	function loadImg(inputFile){
    		
    		const reader = new FileReader();
    		
    		reader.readAsDataURL(inputFile.files[0]);
    		
    		reader.onload = function(e){
    			$("#changeFile").attr("src", e.target.result);
    			$("#preview").attr("src", e.target.result);
    		}
    		
    	}
    	
    	function deleteImg(){
    		$("#attachImg").remove();
    	}
    </script>

    <br><br>

    </div>

</body>
</html>