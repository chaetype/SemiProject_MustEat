<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<%@ include file="../common/menubar.jsp"%>
	
	
	<div class=wrap101>
		<form action="">
			<table class="rwd-table">
				<tbody>
				<tr>
					<th colspan="2">[상품코드]상품명</th>
				</tr>
				<tr>
					<td data-th="Supplier Code">*상품명</td>
					<td data-th="Supplier Name"><input type="text" name="proname" placeholder="상품명을 입력해주세요" size=70></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*판매가</td>
					<td data-th="Supplier Name"><input type="text" name="proprice" placeholder="가격을 입력해주세요" size=70></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">판매자</td>
					<td data-th="Supplier Name"><input type="text" name="proseller" placeholder="판매자를 입력해주세요" size=70></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">상품정보</td>
					<td data-th="Supplier Name"><input type="text" name="proname" placeholder="상품정보를 입력해주세요" size=70></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">키워드</td>
					<td data-th="Supplier Name"><input type="text" name="proname" placeholder="키워드를 입력해주세요" size=70></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">정가</td>
					<td data-th="Supplier Name"><input type="text" name="proname" placeholder="정가를 입력해주세요" size=70></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">표지이미지</td>
					<td data-th="Supplier Name"><button class="btn1">파일첨부</button></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">상세이미지</td>
					<td data-th="Supplier Name"><button class="btn1">파일첨부</button></td>
				</tr>
				</tbody>
		  </table>
		</form>  
			<div class="list01">
		        <button class="btn1">등록</button>
		        <button class="btn1">취소</button>
	        </div>
          <br><br><br>
	</div>
</body>
</html>