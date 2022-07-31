<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.notice.model.vo.Tos"%>
<%
	Tos t = (Tos)request.getAttribute("Tos");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관 상세보기</title>
<style>

	.wrap-tos {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container-tos {
		margin-top:5%;
		margin-bottom:5%;
	}	

</style>
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>
	
		<div class="wrap-tos">
		
		<div class="container-tos">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:center;">이용약관</h1>
			
			<!-- 이용약관이 있을 경우 -->    				
				<table class="rwd-table tos-table">
			    <tbody>	
			    	<tr>
			    		<td width="100%">이용약관</td>
			    	</tr>	    
				    <tr>
				      	<td><%= t.getTosTitle() %></td>
				      	<td><%= t.getTosNote() %></td>
				    </tr>	
				    <tr>
				    	<td><%= t.getTosContent() %></td>
				    </tr>   
		    </tbody>
		  </table>
						
		</div>
	
</body>
</html>