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
		      	<th><input type="checkbox" id="" name="tosNum" value=""></th>
		        <th>글번호</th>
		        <th>제목</th>
		        <th>내용</th>
		        <th>등록일</th>
		        <th>수정일</th>
		        <th/>비고</th>
		      </tr>
		      <tr>
		      	<td><input type="checkbox" id="" name="tosNum" value=""></td>
		        <td>(번호)</td>
		        <td>(제목)</td>
		        <td>(내용일부)</td>
		        <td>(등록일)</td>
		        <td>(수정일)</td>
		        <td>(비고)</td>
		      </tr>		     
		    </tbody>
		  </table>
			
			
		</div>
		
	</div>

</body>
</html>