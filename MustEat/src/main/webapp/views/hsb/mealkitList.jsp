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
 



    
     .list-area{
        border:1px solid white;
        text-align:center;
        margin:auto;
    }
    .mealkit>img:hover, .mealkit>p:hover{
    	opacity:0.7;
    	cursor:pointer;
    }
   
    body{
    	background-color: #eee;
	}

	.wrapper-paging{	
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

    .list-area{
        width:760px;
        
    }
    .mealkit{
        border:1px solid white;
        width:220px;
        display:inline-block;
        margin:14px;
    }
    .thumbnail:hover{
    	cursor:pointer;
    	opacity:0.7;
    }

    .wrap{
        
    }

</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
   
    <div class="outer">
    
        
            <h1 align="center">MEALKIT</h1>
            <br>
        
     <div class="list-area" align="center">
     
     	<% if(listP.isEmpty()) { %>
                       
                    <P>상품이 없습니다.</P>
              
			<% }else { %>
				<% for(Product p : listP) { %>
	            <div class="mealkit" align="center" style="margin-top: 0%; height:300px;">
	            	<input type="hidden" value="<%= p.getProductCode() %>">
	                <img src="<%= contextPath %>/<%= p.getImgPath() %>" width="200" height="150">
	                <p>
	                    No.<%= p.getProductCode() %> <%= p.getProductName() %> <br><br>
	                    <b>가격:</b> <%= p.getPrice() %>원
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
      </div>



            <div class="wrapper-paging">
						    
                <nav aria-label="Page navigation example" style="width : 100%;">
                    <ul class="pagination" style="width : 100%; justify-content: center;">
                        <% if(currentPage != 1) { %>
                            <li class="page-item"><a class="page-link" href="<%=contextPath%>/mealList.bo?cpage=<%=currentPage-1%>">&lt;</a></li>
                        <% } %>
                        
                        <% for(int p=startPage; p<=endPage; p++) { %>
                            
                            <% if(p == currentPage) { %>
                                <li class="page-item"><a class="page-link focus" href="<%=contextPath%>/mealList.bo?cpage=<%= p %>"><%= p %></a></li>
                            <% } else { %>
                                <li class="page-item"><a class="page-link" href="<%=contextPath%>/mealList.bo?cpage=<%=p%>"><%= p %></a></li>
                            <% } %>
                            
                        <% } %>
                        
                        <% if(currentPage != maxPage) { %>
                            <li class="page-item"><a class="page-link" href="<%=contextPath%>/mealList.bo?cpage=<%=currentPage+1%>">&gt;</a></li>
                        <% } %>
                    </ul>
                </nav>					
                    
            </div>
    

</body>
</html>