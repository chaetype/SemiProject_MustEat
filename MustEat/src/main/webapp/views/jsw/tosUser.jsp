<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.notice.model.vo.Tos"%>
<%
	Tos t = (Tos)request.getAttribute("Tos");
%>
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
   

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap-tos">

        <div class="table-tos">
	
            <table  class="rwd-table tos-table" id="tos-detail-area" width="100%" style="border:1px solid rgb(231, 216, 241); border-collapse:collapse; margin-top:3%;">
		
			<tr>
				<td><h2>이용약관제목들어갈자리</h2></td>
			</tr>
			<tr>
				<th colspan="4"><br></th>
			</tr>
			<tr>
				<td colspan="4" style="text-align:left;">이용약관내용들어갈자리</td>
			</tr>			

            </table>

        </div>
	
	</div>

</body>
</html>