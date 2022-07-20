<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<div class="container">
		<h1>테이블 테스트중</h1>
		  <table class="rwd-table">
		    <tbody>
		      <tr>
		        <th>내용</th>
		        <th>내용</th>
		        <th>내용</th>
		        <th>내용</th>
		        <th>내용</th>
		        <th>내용</th>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code">내용</td>
		        <td data-th="Supplier Name">내용</td>
		        <td data-th="Invoice Number">내용</td>
		        <td data-th="Invoice Date">내용</td>
		        <td data-th="Due Date">내용</td>
		        <td data-th="Net Amount">내용</td>
		      </tr>
		        <tr>
		        <td data-th="Supplier Code">내용</td>
		        <td data-th="Supplier Name">내용</td>
		        <td data-th="Invoice Number">내용</td>
		        <td data-th="Invoice Date">내용</td>
		        <td data-th="Due Date">내용</td>
		        <td data-th="Net Amount">내용</td>
		      </tr>
		        <tr>
		        <td data-th="Supplier Code">내용</td>
		        <td data-th="Supplier Name">내용</td>
		        <td data-th="Invoice Number">내용</td>
		        <td data-th="Invoice Date">내용</td>
		        <td data-th="Due Date">내용</td>
		        <td data-th="Net Amount">내용</td>
		      </tr>
		        <tr>
		        <td data-th="Supplier Code">내용</td>
		        <td data-th="Supplier Name">내용</td>
		        <td data-th="Invoice Number">내용</td>
		        <td data-th="Invoice Date">내용</td>
		        <td data-th="Due Date">내용</td>
		        <td data-th="Net Amount">내용</td>
		      </tr>
		    </tbody>
		  </table>
	</div>

</body>
</html>