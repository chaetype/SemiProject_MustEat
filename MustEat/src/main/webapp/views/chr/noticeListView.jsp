<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.notice.model.vo.Notice, com.mz.common.model.vo.PageInfo"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin:auto;
    }

    .accordion{
      font-weight:bold;
      border-top:3px solid black;
      padding-top:30px;
    }

    .accordion-button:not(.collapsed){
      color:blueviolet;
      font-weight:bold;
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
	
	.focus {
		z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
    
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2>공지사항</h2>
        <br><br>

        <div class="accordion accordion-flush" id="accordionFlushExample">
        
        	<% for(int i=0; i<list.size(); i++) { %>
        		<div class="accordion-item">
		        	<h2 class="accordion-header" id="flush-heading<%=i%>">
		              <button
		                class="accordion-button collapsed"
		                type="button"
		                data-mdb-toggle="collapse"
		                data-mdb-target="#flush-collapse<%=i%>"
		                aria-expanded="false"
		                aria-controls="flush-collapse<%=i%>"
		              >
		                <%= list.get(i).getNoticeTitle() %>
		              </button>
		            </h2>
		        	<div
		              id="flush-collapse<%=i%>"
		              class="accordion-collapse collapse"
		              aria-labelledby="flush-heading<%=i%>"
		              data-mdb-parent="#accordionFlushExample"
		            >
		              <div class="accordion-body">
		                <%= list.get(i).getNoticeContent() %>
		              </div>
		            </div>
	          </div>
        	<% } %>
        	
	    <br><br>
	    <div class="wrapper-paging">
						    
		    <nav aria-label="Page navigation example">
				<ul class="pagination">
					<% if(currentPage != 1) { %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/listNotice.no?cpage=<%= currentPage-1 %>">&lt;</a></li>
				    <% } %>
				    
				    <% for(int p=startPage; p<=endPage; p++) { %>
				    	
				    	<% if(p == currentPage) { %>
				    		<li class="page-item"><a class="page-link focus" href="<%=contextPath%>/listNotice.no?cpage=<%=p%>"><%= p %></a></li>
				    	<% } else { %>
				    		<li class="page-item"><a class="page-link" href="<%=contextPath%>/listNotice.no?cpage=<%=p%>"><%= p %></a></li>
				    	<% } %>
				    	
				    <% } %>
				    
				    <% if(currentPage != maxPage) { %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/listNotice.no?cpage=<%=currentPage+1%>">&gt;</a></li>
				    <% } %>
			    </ul>
			</nav>					
				
		</div>
    </div>
    


</body>
</html>