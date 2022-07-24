<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #enroll-form table{
        border:1px solid white;
        width: 950px;
    }
    #enroll-form input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    .outer{
        margin-left: 50px ;
    }
</style>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>
	
	<div class="outer">
        <br>
        <h2 align="center">식당 리뷰 작성하기</h2>
        <br>

        <form id="enroll-form" action="<%= contextPath %>/insert.bo" method="post" enctype="multipart/form-data">
            <!-- 카테고리번호, 제목, 내용, 로그인한회원번호, 첨부파일 한개 -->
            <table align="center">
                <tr>
                    <th>제목</th>
                    <td><input type="text" name="title" required></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td><div id="ta1" contentEditable="true" style="overflow-x:auto; width:100%; height: 500px; border: solid 1px; margin: 0px; line-height: 20px; background-image: ; background-color: white;"></div></td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td><input type="file" name="upfile"></td>
                </tr>

            </table>
            <br>

            <div align="center">
                <button class="btn1" type="submit" style="    font-family: 'OTWelcomeRA';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
                font-weight: normal;
                font-style: normal;">작성하기</button>
                <button class="btn1" type="reset" style="    font-family: 'OTWelcomeRA';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
                font-weight: normal;
                font-style: normal;">취소하기</button>
            </div>
        </form>

        <br><br>


    </div>

</body>
</html>