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

        <div class="basicInfoTitle" style="height:50px;">
            <div class="basicInfo"><strong>기본정보</strong>
            <span><em>*</em> 필수</span>
            </div>
        </div>  
        
        <form action="" class="userUpdateForm">

            <table class="userUpdateInfo" width="100%">

                <tr>
                  <th>아이디</th>
                  <td><input type="text" name="userId" value="유저아이디" readonly></td>
                </tr>
    
                <tr>
                  <th>비밀번호</th>
                  <td>
                    <input type="text" name="updatePassword" placeholder="-를 포함해서 입력해주세요" required>
                  </td>
                </tr>

                <tr>
                  <th>비밀번호 확인</th>
                  <td>
                    <input type="text" name="checkPassword" value="- (영문 대소문자/숫자 4~16자)" required>
                  </td>
                </tr>
                
                <tr>
                  <th>이름</th>
                  <td><input type="text" name="userName" value="회원이름" required></td>
                </tr>
                                
                <tr>
                    <th>닉네임</th>
                    <td><input type="text" name="userNickname" value="닉네임" required></td>
                </tr>

                <tr>
                    <th>전화번호</th>
                    <td><input type="text" name="phone" value="유저 전화번호"></td>
                </tr>

                <tr>
                    <th>이메일</th>
                    <td><input type="text" name="email" value="이메일"></td>
                </tr>

                <tr>
                    <th>주소</th>
                    <td style="border:1px solid red;" colspan="3">
                        <input type="text" name="email" value="우편번호"> <button>주소검색</button>  <br>
                        <input type="text" name="email" value="기본주소"> <br>
                        <input type="text" name="email" value="상세주소">
                    </td>
                </tr>
            
            </table>	

    </form>

    </div>

</body>
</html>