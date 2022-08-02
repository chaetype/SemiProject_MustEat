<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]공지사항등록</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/contactEnrollFormAdmin.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="contactEnroll-area">

        <br><br>
        <h2><b>공지사항</b></h2>

    <div id="bar"></div>
    <br><br>

    <form action="" method="post" class="contactForm">

        <table style="width:800px; height:500px;">
            <tr>
                <th id="contactTT">공지제목</th>
                <td>
                    <input type="text" name="contactTitle" required>
                </td>
            </tr>

            <tr>
                <th id="contactCT">공지내용</th>
                <td>
                    <textarea name="contactContent" cols="30" rows="10" style="resize:none"></textarea>
                </td>
            </tr>

            <tr>
                <th id="contactFI">파일첨부</th>
                <td>
                    <input type="file" name="contactFile">
                </td>
            </tr>
        </table>

        <br>

        <div class="contactBtn">
            <button class="btn1" type="submit">등록</button>
            <button class="btn1" type="reset">초기화</button>
        </div>

    </form>

    <br><br>

    </div>

</body>
</html>