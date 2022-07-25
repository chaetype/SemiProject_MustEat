<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/memberUpdateForm.css" />
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="basicInfo-area">

        <div class="userUpdateForm" style="height:50px;">
          <div class="userInfo">
            <div class="basicInfo"><strong>기본정보</strong>
            <span><em>*</em> 필수</span>
            </div>
          </div>
        </div>  

        <div class="updateInfo">
            <div class="basicInfoUpdate">아이디 : 
                <input type="text" value="유저 아이디" name="userId" readonly>
            </div>
            
        </div>



    </div>

</body>
</html>