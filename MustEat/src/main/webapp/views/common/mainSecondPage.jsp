<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Must Eat</title>
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">


    <style>
        .wrap31{
            border: 1px solid red;
            width: 80%;
            margin: auto;
            text-align: center;
        }

        .outer11{
            border: 1px solid black;
            width: 100%;
            height: 500px;
        }

        .outer22{
            border: 1px solid blue;
            width: 100%;
            text-align: center;
        }
    
        .outer33{
            float: right;
        }

        .thumb1{
            border: 1px solid black;
            width: 400px;
            height: 500px;
            margin: 50px;
            display: inline-block;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="wrap31">
        <div class="outer11">서울,경기, 인천 지도 넣기</div>
        <div class="outer22">
            <hr>
            <h3>(지역명)서울 금천구</h3><br>
            <!-- 검색폼 시작 -->
		<form action="" class="outer33">
			<div class="test1" style="display: inline-block;">
			<select name="select11" style="height: 48px; margin: 10px;">
				<option value="1">서울</option>
				<option value="2">경기</option>
                <option value="3">인천</option>
				<option value="4" selected>전체</option>
			</select>
			</div>
			<div class="wrap55" style="display: inline-block;">
				<div class="input-group mb-3">
					<input type="text" name="findKeyword" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2" >
					<div class="input-group-append">
						<button class="btn btn-outline-warning btn-lg" type="submit"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
		</form>
	<!-- 검색폼 끝 -->
        </div>
        <br><br><br><br><br>

        <div class="thumb1">
            <a href="<%=contextPath%>/detail.st"><img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" alt="" style="width:100%; height:400px;"></a>
            <br>
            <h4><b>식당이름</b></h4>
        </div>
        <div class="thumb1">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" alt="" style="width:100%; height:400px;">
            <br>
            <h4><b>식당이름</b></h4>
        </div>
        <div class="thumb1">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" alt="" style="width:100%; height:400px;">
            <br>
            <h4><b>식당이름</b></h4>
        </div>
        <div class="thumb1">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" alt="" style="width:100%; height:400px;">
            <br>
            <h4><b>식당이름</b></h4>
        </div>
        

    </div>
</body>
</html>