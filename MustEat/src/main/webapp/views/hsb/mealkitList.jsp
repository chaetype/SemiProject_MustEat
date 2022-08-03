<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,  com.mz.product.model.vo.Product, com.mz.common.model.vo.PageInfo"%>
<%
	ArrayList<Product> listP =  (ArrayList<Product>)request.getAttribute("listP");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">

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
    
     .list-area{
        border:1px solid white;
        text-align:center;
    }
    .mealkit>img:hover, .mealkit>p:hover{
    	
    	cursor:pointer;
    }
   
    body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:4%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.page-link {
	    position: relative;
	    display: block;
	    color: #673AB7 !important;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #673AB7 !important;
	}
	
	
	.page-link:hover {
	    z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
	
	
	.page-link:focus {
		border-color: rgb(167, 112, 239) !important;
	    z-index: 3;
	    outline: 0;
	    box-shadow: none;
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
     
     	<% if(listP.isEmpty()) { %>
                       
                    <P>상품이 없습니다.</P>
              
			<% }else { %>
				<% for(Product p : listP) { %>
	            <div class="mealkit" align="center">
	            	<input type="hidden" value="<%= p.getProductCode() %>">
	                <img src="<%= contextPath %>/<%= p.getImgPath() %>" width="200" height="150">
	                <p>
	                    No.<%= p.getProductCode() %> <%= p.getProductName() %> <br>
	                    <%= p.getPrice() %>원
	                </p>
	            </div>
				<% } %>
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
            <button onclick="location.href='<%=contextPath%>/mealList.bo?cpage=<%=currentPage-1%>';">&lt;</button>
            <% } %>
            
			<% for(int p=startPage; p<=endPage; p++) {%>
			
				<% if(p == currentPage){ %>
				<button disabled><%= p %></button>
				<% }else { %>
            	<button onclick="location.href='<%=contextPath%>/mealList.bo?cpage=<%= p %>';"><%= p %></button>
            	<% } %>
            <% } %>
			
			<% if(currentPage != maxPage){ %>
            <button onclick="location.href='<%=contextPath%>/mealList.bo?cpage=<%=currentPage+1%>';">&gt;</button>
            <% } %>
        </div>
        
        <div class="wrapper-paging">
					    
			    <nav aria-label="Page navigation example">
					<ul class="pagination">
					    <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item"><a class="page-link" href="#">4</a></li>
					    <li class="page-item"><a class="page-link" href="#">5</a></li>
					    <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
				    </ul>
				</nav>					
			
			</div>
    
</div>
</body>
</html>