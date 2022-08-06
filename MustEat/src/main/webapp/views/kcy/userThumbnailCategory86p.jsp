<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.Editor" %>
<%
	ArrayList<Editor> list = (ArrayList<Editor>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<style>
    .list-area{
        align-items: center;
        margin:auto;
        /* border:1px solid white; */
        text-align:center;
        width:80%;
    }
    .thumbnail33{
        border:1px solid lightgray;
        border-radius: 3%;
        overflow: hidden;
        display:inline-block;
        margin:20px;
        margin-left:35px;
        box-shadow: 9px 9px 4px 1px rgba(0, 0, 255, .2);
        cursor:pointer;
        
    }
   
    .thumbnail2{
        border:1px solid lightgray;
        border-radius: 5%;
        overflow: hidden;
        display:inline-block;
        margin:10px;
        margin-left:35px;
        margin-bottom:30px;
        margin-top:30px;
        box-shadow: 9px 9px 4px 1px rgba(0, 0, 255, .2);
        cursor:pointer;
    }

    p{
        text-align: center;
        font-size:15px;
        font-family: 'Lato', sans-serif;
        font-weight: 300;
        color: #676767;
    }
    
    .writebutton{
    	float : right;
    	width:80%;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<div class="outer">
        
        
        <div class="list-area">
	
            <div class="thumbnail33" align="center">
            <a href="<%=contextPath%>/srlist.st?cpage=1 " style="text-decoration: none;">
                <img src="<%=contextPath%>/resources/image/cy/rank.jpg" width="270" height="170">
                <p>ME인정 맛집+리뷰 상위랭킹 확인하기</p>
            </a> 
               
            </div>

            <div class="thumbnail33" align="center">
                <img src="<%=contextPath%>/resources/image/cy/mealkit.jpg" width="270" height="170">
                <p>맛집을 집에서도? 밀키트 찾아보기</p>
            </div>

            <div class="thumbnail33" align="center">
            <a href="<%=contextPath%>/mlist.fo?cpage=1 " style="text-decoration: none;">
                <img src="<%=contextPath%>/resources/image/mz.png" width="270" height="170">
                <p>MZ유저들 찾아보기</p>
             </a>
            </div>

        </div>

        <br>


		<div class="list-area">
		<div class="writebutton">
		 <% if( loginUser != null && loginUser.getMemId().equals("admin1") ) { %>
        <div style="width:850px" align="right">
        	<a href="<%= contextPath %>/ctenroll.st" class="btn1">글작성</a>
        	<br><br>
        </div>
        <% } %>
         <% if( loginUser != null && loginUser.getMemId().equals("admin2") ) { %>
        <div style="width:850px" align="right">
        	<a href="<%= contextPath %>/ctenroll.st" class="btn1">글작성</a>
        	<br><br>
        </div>
        <% } %>
        </div>
        
        
        
        <br><br><br>
        <h1 style="text-align: center;"><b>MZ EDITOR PICK!</b></h1>

        	<%for(Editor e : list) {%>
     		<input type="hidden" value="<%= e.getEditorNo() %>">
            <div class="thumbnail2" align="center">
            	<input type="hidden" value="<%= e.getEditorNo() %>">
                <img src="<%=contextPath%>/<%=e.getEditorAttach() %>" width="400" height="250">
            </div>
			<% } %>

			<div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/shrimp.jpg" width="400" height="250">
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/neyorkcafe.jpg" width="400" height="250">
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/dosirak.jpg" width="400" height="250">
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/bankan.jpg" width="400" height="250">
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/makgeolli.jpg" width="400" height="250">
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/winter.jpg" width="400" height="250">
            </div>

            <div class="thumbnail2" align="center">
                <img src="<%=contextPath%>/resources/image/cy/hapjung.jpg" width="400" height="250">
            </div>

        </div>
        
        
        <script>
        	$(function(){
        		$(".thumbnail2").click(function(){
        			location.href = '<%=contextPath%>/cdetail.st?no=' + $(this).children("input").val();
        		})
        	})
        </script>
         
        
        
        


    </div>
</body>
</html>