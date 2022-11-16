<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.store.model.vo.Editor" %>
<%
	Editor e = (Editor)request.getAttribute("e");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .wrap99{
        width: 80%;
        margin:auto;
        border: 2px solid rgb(231, 216, 241);
    }

    img{
        width: 300px;
        height: 300px;
        overflow:hidden;
    }
</style>
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
    <div class="wrap99">
    	<input type="hidden" name="no" value="<%=e.getEditorNo()%>">
        <%=e.getEditorContent() %>
    </div>
</body>
</html>