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
		<form action="<%=contextPath %>/insertProduct.do" method="post" enctype="multipart/form-data">
			<table class="rwd-table">
				<tbody>
				<tr>
					<th colspan="2">[상품코드]상품명</th>
				</tr>
				<tr>
					<td data-th="Supplier Code">*상품명</td>
					<td data-th="Supplier Name"><input type="text" name="pName" placeholder="상품명을 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*판매가</td>
					<td data-th="Supplier Name"><input type="text" name="price" placeholder="가격을 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*등록일</td>
					<td data-th="Supplier Name"><input type="text" name="enrollDate" placeholder="등록일을 입력해주세요 ex) xxxx/xx/xx" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*판매자</td>
					<td data-th="Supplier Name"><input type="text" name="seller" placeholder="판매자를 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">판매자연락처</td>
					<td data-th="Supplier Name"><input type="text" name="sPhone" placeholder="판매자연락처를 입력해주세요" size=70 ></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*판매단위</td>
					<td data-th="Supplier Name"><input type="text" name="saUnit" placeholder="판매단위를 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*용량</td>
					<td data-th="Supplier Name"><input type="text" name="capacity" placeholder="용량을 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*포장타입</td>
					<td data-th="Supplier Name"><input type="text" name="packing" placeholder="포장타입을 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*알레르기정보</td>
					<td data-th="Supplier Name"><input type="text" name="allergy" placeholder="알레르기정보를 입력해주세요" size=70 required></td>
				</tr>
				<tr>
					<td data-th="Supplier Code">*유통기한</td>
					<td data-th="Supplier Name"><input type="text" name="exDate" placeholder="유통기한을 입력해주세요" size=70 required></td>
				</tr>						
				<tr>
					<td data-th="Supplier Code">*상품이미지</td>
					<td data-th="Supplier Name"><input type="file" name="upfile" required></td>
				</tr>
			

				
				</tbody>
		  </table>
		  <div class="list01">
		        <button class="btn1">등록</button>
		        <button class="btn1">취소</button>
	        </div>
		</form>  
			
          <br><br><br>
	</div>
</body>
</html>