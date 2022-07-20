<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css"> -->

<link rel="stylesheet"  href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.css"/> 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/table.js"></script>

</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

		<h2 style="color:red;">표제목</h2>

		<div class="container">
		  <div class="row">
		    <div class="col-xs-12">
		    
		      <table class="table table-bordered table-hover dt-responsive">
		        <caption class="text-center">부연설명(써도 되고 안써도 되고)</caption>
		        
		        <thead>
		          <tr>
		            <th>내용</th>
		            <th>내용</th>
		            <th>내용</th>
		            <th>내용</th>
		            <th>내용</th>
		          </tr>
		        </thead>
		        
		        <tbody>
		        
		          <tr>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		          </tr>
		          <tr>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		          </tr>
		          <tr>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		          </tr>
		          <tr>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		          </tr>
		          <tr>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		          </tr>
		          <tr>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		            <td>내용</td>
		          </tr>
		        </tbody>
		        
		        <tfoot>
		          <tr>
		            <td colspan="5">내용 써도 되고 안써도 되고</td>
		          </tr>
		        </tfoot>
		        
		      </table>
		      
		    </div>
		  </div>
		</div>
		

</body>
</html>