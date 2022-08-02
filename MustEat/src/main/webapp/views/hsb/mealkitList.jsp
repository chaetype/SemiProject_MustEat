<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,  com.mz.product.model.vo.Product"%>
<%
	ArrayList<Product> list =  (ArrayList<Product>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">

<style>
 


.paging-area>button{
        background-color: rgb(167, 112, 239);
        color: white;
        font-family: 'OTWelcomeRA';
        line-height: 0.28in;
        border: none;
        border-radius: 10%;
        height: 38px;
        width: 30px;
    }
   

</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
    <div class="wrap">
    <div class="logo-bar con">
        <div align="center">
            <h1>MEALKIT</h1>
            <br>
        </div>
      
    </div>
   
    
    
     <div class="list con">
			<% for(Product p : list) { %>
            <div class="mealkit" align="center">
            	<input type="hidden" value="<%= p.getProductCode() %>">
                <img src="<%= contextPath %>/<%= p.getImgPath() %>" width="200" height="150">
                <p>
                    No.<%= p.getProductCode() %> <%= p.getProductName() %> <br>
                </p>
            </div>
			<% } %>
        </div>
        
        <script>
        	$(function(){
        		$(".mealkit").click(function(){
        			location.href = '<%=contextPath%>/detail.li?no=' + $(this).children("input").val();
        		})
        	})
        </script>

        <!-- 페이징바 영역 -->
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
    
</div>
</body>
</html>