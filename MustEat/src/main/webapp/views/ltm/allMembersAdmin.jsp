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
        font-family:'OTWelcomeRA'; 
        height: 40px; 
        width: 80px;
        font-weight: bold;
        font-size: large;
        border: none;
    }
    #select{
        text-align-last: center;
        text-align: center;
        -ms-text-align-last: center;
        -moz-text-align-last: center;
        padding: 2px;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }
</style>
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp" %>
	
    <div class="outer">

        <br><br>
        
        <h2 style="padding-left: 10%">전체 회원 조회</h2>

        <p align="center">--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
        <br>

        <div style="display: inline; padding-left: 10%">
            <select name="select" id="select" style="height: 40px; width: 120px; font-weight: bold;">
                <option>번호</option>
                <option>이름</option>
                <option>가입일</option>
                <option>회원등급</option>
            </select>
        </div>

		&nbsp; &nbsp;
		
        <p style="display:inline-block; font-size: larger; font-size: x-large;" >총 회원 : 10 명</p>

        <div style="display:inline; padding-left:58%">
            <button class="delete">삭제하기</button>
        </div>
        
        <br>

        <table class="rwd-table" width="80%">   
            <tbody>
                <tr>
                    <th></th>
                    <th>번호</th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>회원 등급</th>
                    <th>휴대폰 번호</th>
                    <th>가입일</th>
                    <th>구매 횟수</th>
                    <th>구매 누적액</th>
                    <th>적립금</th>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>신뢰</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>신뢰</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
                </tr>
                <tr>
                    <th><input type="checkbox"></th>
                    <td>1</td>
                    <td>user1</td>
                    <td>백혜린</td>
                    <td>일반</td>
                    <td>010-1111-2222</td>
                    <td>2012.10.30</td>
                    <td>7</td>
                    <td>120,000</td>
                    <td>5000</td>
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
	              <input type="text" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
	                <div class="input-group-append">
	                    <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search">검색</i></button>
	                </div>
	            </div>
	            
	        </div>
        </div>

        


    </div>
</body>
</html>