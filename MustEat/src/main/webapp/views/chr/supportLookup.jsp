<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터 검색</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<style>
    .outer{
        background-color:white;
        width:70%;
        height:100%;    
        margin:auto;
    }
    table{text-align:center;}
    table th, table td{padding:1% 0;}
    table th{background-color:rgba(179, 119, 219, 0.63)}
    tbody tr:hover{
        background-color:rgba(228, 207, 243, 0.568);
        cursor:pointer;
    }
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
    .table-wrap{
        border-top:3px solid black;
        padding-top:30px;
        width:90%;
    }
    .table-subWrap{
        border-top:1.5px solid black;
        padding-top:30px;
        width:90%;
    }
    body{
    	/* background-color: #eee; */
	}
    .outer a{
        display:block;
        width:88%;
        text-decoration:none;
        color:rgb(167, 112, 239);
        text-align:right;
        margin-bottom:1%;
    }
    .outer a:hover{
        color:rgb(149, 101, 212);
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2><b>검색 결과</b></h2>
        <br><br>

        <div class="table-wrap"></div>
        <h5><b>공지사항</b></h5><br>
        <a href="">더보기</a>
        <table class="table-bordered" width="90%">
            <thead>
                <tr>
                    <th width="10%">
                        <input type="checkbox" name="allCheck" id="all" onclick="checkAll();"> 전체 선택
                    </th>
                    <th width="6%">번호</th>
                    <th width="45%">제목</th>
                    <th width="15%">작성자</th>
                    <th width="15%">작성일자</th>
                    <th width="9%">조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>33</td>
                    <td>7월 이벤트 추첨 완료</td>
                    <td>관리자</td>
                    <td>2022-07-10</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>32</td>
                    <td>택배 파업으로 인한 배송 지연 안내</td>
                    <td>관리자</td>
                    <td>2022-06-03</td>
                    <td>9</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>31</td>
                    <td>서비스 점검 안내</td>
                    <td>관리자</td>
                    <td>2022-04-30</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>30</td>
                    <td>적립금 사용 안내</td>
                    <td>관리자</td>
                    <td>2022-03-01</td>
                    <td>21</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>29</td>
                    <td>서비스 이용약관 변경 안내</td>
                    <td>관리자</td>
                    <td>2022-01-20</td>
                    <td>33</td>
                </tr>
            </tbody>
        </table>
        <br><br><br>

        <div class="table-subWrap"></div>
        <h5><b>1 : 1 문의</b></h5><br>
        <a href="">더보기</a>
        <table class="table-bordered" width="90%">
            <thead>
                <tr>
                    <th width="10%">
                        <input type="checkbox" name="allCheck" id="all" onclick="checkAll();"> 전체 선택
                    </th>
                    <th width="6%">번호</th>
                    <th width="45%">제목</th>
                    <th width="15%">작성자</th>
                    <th width="15%">작성일자</th>
                    <th width="9%">조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>33</td>
                    <td>7월 이벤트 추첨 완료</td>
                    <td>관리자</td>
                    <td>2022-07-10</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>32</td>
                    <td>택배 파업으로 인한 배송 지연 안내</td>
                    <td>관리자</td>
                    <td>2022-06-03</td>
                    <td>9</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>31</td>
                    <td>서비스 점검 안내</td>
                    <td>관리자</td>
                    <td>2022-04-30</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>30</td>
                    <td>적립금 사용 안내</td>
                    <td>관리자</td>
                    <td>2022-03-01</td>
                    <td>21</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>29</td>
                    <td>서비스 이용약관 변경 안내</td>
                    <td>관리자</td>
                    <td>2022-01-20</td>
                    <td>33</td>
                </tr>
            </tbody>
        </table>
        <br><br><br>

        <div class="table-subWrap"></div>
        <h5><b>FAQ</b></h5><br>
        <a href="">더보기</a>
        <table class="table-bordered" width="90%">
            <thead>
                <tr>
                    <th width="10%">
                        <input type="checkbox" name="allCheck" id="all" onclick="checkAll();"> 전체 선택
                    </th>
                    <th width="6%">번호</th>
                    <th width="45%">제목</th>
                    <th width="15%">작성자</th>
                    <th width="15%">작성일자</th>
                    <th width="9%">조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>33</td>
                    <td>7월 이벤트 추첨 완료</td>
                    <td>관리자</td>
                    <td>2022-07-10</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>32</td>
                    <td>택배 파업으로 인한 배송 지연 안내</td>
                    <td>관리자</td>
                    <td>2022-06-03</td>
                    <td>9</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>31</td>
                    <td>서비스 점검 안내</td>
                    <td>관리자</td>
                    <td>2022-04-30</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>30</td>
                    <td>적립금 사용 안내</td>
                    <td>관리자</td>
                    <td>2022-03-01</td>
                    <td>21</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="글번호" id=""></td>
                    <td>29</td>
                    <td>서비스 이용약관 변경 안내</td>
                    <td>관리자</td>
                    <td>2022-01-20</td>
                    <td>33</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>