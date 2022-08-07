<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.store.model.vo.Store"%>
<%
	Store s = (Store)request.getAttribute("Store");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당정보수정(이거안씀)</title>
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
		
		<form action="<%= contextPath %>/storelistUpdate.st" method="post" id="store-update-form">
		<input type="hidden" name="no" value="">
		<table class="rwd-table tos-table" id="tos-detail-area">
		
			<tr>
				<td colspan="4">식당 수정</td>
			</tr>
			<tr>
				<th>식당명</th>
				<th>전화번호(-포함)</th>
			</tr>
			<tr>
				<td><input type="text" name="storename" id="store-name" value="<%=s.getStoreName()%>"></td>
				<td><input type="text" name="tosNote" required value=""></td>
			</tr>
			<tr>
				<th colspan="4">이용약관 내용</th>
			</tr>
			<tr>
				<td colspan="2" width="100%">
				<textarea rows="15" name="tosContent" style="width:100% !important; resize:none;" required></textarea>
				</td>
			</tr>
			
		</table>
		
		<div class="modify-button">
			<button type="submit" class="btn1" id="tos-modify-btn">수정완료</button>
			<button type="button" class="btn1" id="tos-delete-btn" onclick="history.back();">뒤로가기</button>
		</div>	
		</form>	 
				  
				  
						
		</div>
		
	</div>

</body>
</html>