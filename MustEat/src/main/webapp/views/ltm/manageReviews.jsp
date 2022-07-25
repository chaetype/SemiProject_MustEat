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
        
        <h2 style="padding-left: 10%">리뷰 관리</h2>

        <p align="center">--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
        <br>

        <div style="width: 80%; padding-left:82%;">
            <button class="delete">선택 삭제하기</button>
        </div>
        
        <br>

        <table class="rwd-table" width="80%">   
            <tbody>
                <tr>
                    <th></th>
                    <th>번호</th>
                    <th>게시일</th>
                    <th>아이디</th>
                    <th>게시자</th>
                    <th width="500px">내용</th>
                    <th>회원등급</th>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>신뢰</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>일반</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>신뢰</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>2012.10.30</td>
                    <td>user01</td>
                    <td>백혜린</td>
                    <td>여기는 테이블 간 공간이 벽으로 아주 잘 분리되어 있어서 프라이빗 룸 느낌이 난다 데이트하기도 좋고 지인들과 도란도란 대화 나누며 깔끔하게 식사하기 좋다. 음식도 맛있다</td>
                    <td>신뢰</td>
                </tr>
               
                
            </tbody>
        </table> 
       
        <br>

        <!--페이징바 영역-->
        <div class="paging-area" align="center">
            <button>&lt;</button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>&gt;</button>
        </div>
        
        <br>
        

        <!--검색바 영역-->
        <div align="center">
	        <div class="wrap55">
	            <div class="input-group mb-3" >
	              <input type="text" class="form-control input-text" placeholder="아이디 검색" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
	                <div class="input-group-append">
	                    <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search">검색</i></button>
	                </div>
	            </div>
	            
	        </div>
            
        </div>

        


    </div>
</body>
</html>