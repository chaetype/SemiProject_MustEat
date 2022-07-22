<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .list-area{
        width:760px;
        margin:auto;
    }
    .thumbnail{
        border:1px solid white;
        width:220px;
        display:inline-block;
        margin:14px;
    }
</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp"%>
	
	<div class="outer">
        <br>
        <h2 align="center">밀키트</h2>
        <br>
        
        <% if(loginUser != null) { %>
        <div align="right" style="width:850px">
        	<a href="<%= contextPath %>/enrollForm.th" class="btn btn-sm btn-secondary">글작성</a>
        	<br><br>
        </div>
		<% } %>

        <div class="list-area">
			<!-- 나중에 목록 조회기능 구현할 예정 -->
            <!-- 썸네일 한개 -->
            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>

            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>

            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>

            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>
            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>
            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>
            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>
            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>
            <div class="thumbnail" align="center">
                <p>
                    <img src="대표이미지경로" width="200" height="150">
                    No.120 제목자리 <br>
                    조회수 : 30
                </p>
            </div>
            

            <br><br>



        </div>

    </div>



    

    <div class="paging-area" align="center">
        <% if(currentPage != 1){ %>
        <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%=currentPage-1%>';">&lt;</button>
        <% } %>
        
        <% for(int p=startPage; p<=endPage; p++) {%>
        
            <% if(p == currentPage){ %>
            <button disabled><%= p %></button>
            <% }else { %>
            <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%= p %>';"><%= p %></button>
            <% } %>
        <% } %>
        
        <% if(currentPage != maxPage){ %>
        <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%=currentPage+1%>';">&gt;</button>
        <% } %>
    </div>

</body>
</html>