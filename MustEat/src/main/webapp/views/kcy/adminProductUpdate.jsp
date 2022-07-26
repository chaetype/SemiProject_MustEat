<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Must Eat</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<style>
	.wrap101{
		width : 80%;
		margin : auto;
		text-align : center;
	}
	
	.rwd-table{
		margin-top:20px;
		width:100%;
	}
	
	.list01{
		margin-top:10px;
	}
</style>
</head>
<body>
	<%@ include file="../common/menubar22.jsp"%>
	
	
	<div class=wrap101>
		
			<table class="rwd-table" >
		    <tbody>
		      <tr>
		        <td data-th="Supplier Code" colspan="3">상품명 상세조회</td>
		      </tr>
		      <tr>
		      	<td rowspan="5"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 250px; height:250px;"></td>
		      	<th>상품코드</th>
		      	<td><input type="text" size=50 required value="xxxxx"></td>
		      </tr>
		       <tr>
		      	<th>상품명</th>
		      	<td><input type="text" size=50 required value="짱맛 떡볶이"></td>
		      </tr>
		      <tr>
		      	<th>금액</th>
		      	<td><input type="text" size=50 required value="0000원"></td>
		      </tr>
		      <tr>
		      	<th>등록일</th>
		      	<td><input type="text" size=50 required value="2022-07-26"></td>
		      </tr>
		      <tr>
		      	<th>판매자</th>
		      	<td><input type="text" size=50 required value="홍길동"></td>
		      </tr>
		      <tr>
		      	<td><button class="btn1">상세이미지</button></td>
		      	<td colspan="2"><button class="btn1">수정하기</button><button class="btn1">수정완료</button></td>
		      	
		      </tr>
		      
		    </tbody>
		  </table>

			
	</div>
</body>
</html>