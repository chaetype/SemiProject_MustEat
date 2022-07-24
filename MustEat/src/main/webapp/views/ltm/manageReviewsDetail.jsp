<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<style>
    .paging-area>button{
        background-color: rgb(167, 112, 239);
        color: white;
        font-family: 'OTWelcomeRA';
        line-height: 0.28in;
        border: none;
        border-radius: 10%;
        height: 38px;
        width: 30px;
    }
    .delete{
        border-radius: 8%; 
        background: rgb(167, 112, 239); 
        color: white; 
        font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
        height: 40px; 
        width: 130px;
        font-weight: bold;
        font-size: large;
        border: none;
    }

</style>
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp" %>
	
    <div class="outer">

        <br><br>
        
        <h2 style="padding-left: 130px">리뷰 관리</h2>

        <p align="center">--------------------------------------------------------------------------------------------------------------------------------------------------</p>
        <br>

        <div style="width: 1125px; padding-left:990px;">
            <button class="delete">삭제하기</button>
        </div>
        
        <br>

        <table class="rwd-table" width="80%" style="table-layout:fixed">   
            <tbody>
 				<tr>
	                <th width="15%"></th>
	                <td width="80%">리뷰 관리</td>
	            </tr>
	            <tr>
	                <th>아이디</th>
	                <td>user01</td>
	            </tr>
                <tr>
                    <th>게시자</th>
                    <td>백혜린</td>
                </tr>
                <tr>
	                <th>게시일</th>
	                <td>2015.05.10</td>
	            </tr>
                <tr>
	                <th>제목</th>
	                <td>인생 맛집을 소개합니다!</td>
	            </tr>
                <tr>
	                <th>제목</th>
	                <td>
                        <pre align=left style="height: 300px;">여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</pre>
                    </td>
	            </tr>
            </tbody>
        </table> 

        <br>
        <br>
        <div style="width: 1125px; padding-left:600px;">
            <button class="delete">목록으로</button>
        </div>
      
    </div>
    <br><br><br>
</body>
</html>