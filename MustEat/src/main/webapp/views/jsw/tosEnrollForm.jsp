<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
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
	
	.tos-table{
		width:100%;
	}
	
</style>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-tos">
		
		<div class="container-tos">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:center;">이용약관</h1>

			<table class="rwd-table tos-table">
		    <tbody>
		      <tr>
		        <th>메뉴명</th>
		        <th>게시글 등록</th>
		        <th>게시글 수정</th>
		        <th/>게시글 삭제</th>
		      </tr>
		      <tr>
		        <th>이용약관</th>
		        <td><button class="btn1"><strong>등록</strong></button></td>
		        <td><button class="btn1"><strong>수정</strong></button></td>
		        <td><button class="btn1"><strong>삭제</strong></button></td>
		      </tr>		     
		    </tbody>
		  </table>
			
			
		</div>
		
	</div>

</body>
</html>