<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../resources/css/memberWithdrawal.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<title>Insert title here</title>
</head>
<body>

    <!-- 회원 탈퇴 후 페이지 -->
    <%@ include file="../common/menubar.jsp"%>

    <div class="delete-area">

        <div class="deleteInfo_first">
            <img src="../../resources/image/key/check-mark-black.png" alt=""> <br><br>
            <div><strong>회원탈퇴가 <span>완료되었습니다.</span></strong></div>
        </div>

        <div class="deleteInfo_middle">

            <div id="text1">그동안 <span>머스트잇 </span>서비스를 이용해주셔서 감사합니다. </div>
            <div id="text2"> 보다 나은 서비스로 다시 찾아 뵙겠습니다.</div>
            
        </div>

        <div class="deleteInfo_last">
            <button type="button" class="btn1" onclick="moveMain();">머스트잇 메인페이지로 이동</button>
        </div>

        <script>

            function moveMain() {
                location.href("메인페이지로 이동");
            }

        </script>

    </div>

</body>
</html>