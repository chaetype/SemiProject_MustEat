<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.notice.model.vo.FAQ"%>
<%
	ArrayList<FAQ> list = (ArrayList<FAQ>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
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
<style>
    .outer{
        background-color:white;
        width:70%;
        height:100%;    
        margin:auto;
    }
    .accordion{
      border-top:3px solid black;
      padding-top:30px;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2><b>FAQ</b></h2>
        <br><br>

        <div class="accordion w-100" id="basicAccordion">
        	<% if(list == null){ %>
        		<div><b>FAQ가 없습니다.</b></div>
        	<% }else{ %>
        		<% for(int i=0; i<list.size(); i++){ %>
		            <div class="accordion-item">
		              <h2 class="accordion-header" id="heading<%=i%>">
		                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
		                  data-mdb-target="#basicAccordionCollapse<%= i %>" aria-expanded="false" aria-controls="collapse<%=i%>">
		                  Q. <%= list.get(i).getFaqTitle() %>
		                </button>
		              </h2>
		              <div id="basicAccordionCollapse<%= i %>" class="accordion-collapse collapse" aria-labelledby="heading<%= i %>"
		                data-mdb-parent="#basicAccordion">
		                <div class="accordion-body">
		                  A. <%= list.get(i).getFaqContent() %>
		                </div>
		              </div>
		            </div>
	            <% } %>
            <% } %>
          </div>

    </div>

</body>
</html>