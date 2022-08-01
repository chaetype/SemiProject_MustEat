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
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
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
	
	#tos-detail-area {
		width:100%;
	}
	
	.modify-button{
		margin-top:3%;
		text-align:center;	
	}

</style>
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>
	
		<div class="wrap-tos">
		
		<div class="container-tos">
		
		<table class="rwd-table tos-table" id="tos-detail-area">
		
			<tr>
				<td colspan="4">이용약관</td>
			</tr>
			<tr>
				<th>제목</th>
				<th>비고</th>
			</tr>
			<tr>
				<td><%= t.getTosTitle() %></td>
				<td><%= t.getTosNote() %></td>
			</tr>
			<tr>
				<th colspan="4">이용약관 내용</th>
			</tr>
			<tr>
				<td colspan="4" style="text-align:left;"><%= t.getTosContent() %></td>
			</tr>
			
		</table>
		
		<div class="modify-button">
			<button type="button" class="btn1" id="tos-modify-btn" onclick="location.href='<%= contextPath %>/tosupdateForm.no?no=<%= t.getTosNo() %>'" style="color:blue;">수정하기</button>
			<button type="button" class="btn1" id="tos-delete-btn" onclick="location.href='<%= contextPath %>/tosdelete.no?no=<%= t.getTosNo() %>'" style="color:red;">삭제하기</button>
			<button type="button" class="btn1" id="tos-delete-btn" onclick="history.back();">목록가기</button>
		</div>		 
				  
				  
						
		</div>
		
	</div>
	
</body>
</html>