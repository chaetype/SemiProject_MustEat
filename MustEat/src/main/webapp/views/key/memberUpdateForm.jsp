<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/memberUpdateForm.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

  <!-- 회원 정보 수정 창 -->
    <div class="basicInfo-area">

        <br>
        <h3 align="center">회원 정보 수정</h3>
        <br>

        <div class="basicInfoTitle" style="height:50px;">
            <div class="basicInfo"><strong>기본정보</strong>
            <span><em>*</em> 필수</span>
            </div>
        </div>  
        
        <form action="" class="userUpdateForm">

            <table class="userUpdateInfo" width="100%">

                <tr class="updateInfo">
                  <th>아이디</th>
                  <td><input type="text" name="userId" value="유저아이디" readonly></td>
                </tr>
    
                <tr class="updateInfo">
                  <th>비밀번호</th>
                  <td>
                    <input type="password" name="updatePwd" placeholder="- (영문 대소문자/숫자 4~16자)" required>
                  </td>
                </tr>

                <tr class="updateInfo">
                  <th>비밀번호 확인</th>
                  <td>
                    <input type="password" name="checkPwd" required>
                  </td>
                </tr>
                
                <tr class="updateInfo">
                  <th>이름</th>
                  <td><input type="text" name="userName" value="회원이름" required></td>
                </tr>
                                
                <tr class="updateInfo"> 
                    <th>닉네임</th>
                    <td><input type="text" name="userNickname" value="닉네임" required></td>
                </tr>

                <tr class="updateInfo">
                    <th>전화번호</th>
                    <td><input type="text" name="phone" value="유저 전화번호"></td>
                </tr>

                <tr class="updateInfo">
                    <th>이메일</th>
                    <td><input type="text" name="email" value="이메일"></td>
                </tr>

                <tr class="updateInfo">
                    <th>주소</th>
                    <td colspan="3">
                        <input type="text" name="addressCode" value="우편번호"> <button class="addressCheck btn1">주소검색</button>  <br>
                        <input type="text" name="address" value="기본주소"> <br>
                        <input type="text" name="addressDetail" value="상세주소">
                    </td>
                </tr>
              
              </table>
    	
          <div class="basicInfoTitle" style="height:50px;">
            <div class="basicInfo"><strong>환불계좌</strong>
            </div>
          </div>  
          
          <table width="100%">
            <tr class="updateInfo">
              <th>예금주</th>
              <td> <input type="text" name="accountName"> <br>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;- 예금주명은 주문자명과 동일해야 합니다.</span>
              </td>
            </tr>

            <tr class="updateInfo">
              <th>은행명</th>
              <td>
                <select name="bank">
                  <option value="none" selected>-선택하세요-</option>
                  <option value="우리">우리은행</option>
                  <option value="기업">기업은행</option>
                  <option value="하나">하나(신한)은행</option>
                  <option value="카카오">카카오뱅크</option>
                  <option value="국민">국민은행</option>
                  <option value="신한">신한은행</option>
                </select>
              </td>
            </tr>

            <tr class="updateInfo">
              <th>계좌번호</th>
              <td><input type="text" name="account"> <br>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;- '-'없이 숫자만 입력해주세요.</span>
              </td>
            </tr>

          </table>

      <br>

      <div align="center">
        <button type="submit" class="updateCheck btn1" onclick="return updateMember();">회원정보수정</button>
        <button type="button" class="updateCheck btn1" data-toggle="modal" data-target="#deleteModal">회원탈퇴</button>
        <button type="button" class="updateCheck btn1" onclick="history.back();">취소</button>
      </div>

    </form>

    <script>

      function updateMember() {

        if( $("input[name=updatePwd]").val() != $("input[name=checkPwd").val() ) {
              alert("동일한 비밀번호를 입력해주세요");
              return false;
        } 

      }

    </script>

    <br><br>

    </div>

  <!-- 회원 탈퇴에 해당하는 Modal창 -->
	<div class="modal" id="deleteModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header memberDelete">
	        <h4 class="modal-title">회원 탈퇴</h4>
	        <button type="button" class="close" data-dismiss="modal" style="color:white;">&times;</button>
	        <!-- 해당 버튼 클릭시 모달과 연결해제 -->
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body" align="center">
	      
	        <form action="" method="post">
	        	<input type="hidden" name="userId" value="">
				
          <div class="deleteContent">
            <b>혜택 내역</b>  <br> 
            탈퇴하면 적립금이 삭제됩니다. <br>
            현재 적립금 : 7000
          </div>

          <div class="deleteSelect">

            <span><strong>회원 탈퇴 사유</strong></span>

              <div class="deleteReason">
                <select required>
                  <option value="맛집 및 상품 종류 부족">맛집 및 상품 종류 부족</option>
                  <option value="상품 가격 불만족">상품 가격 불만족</option>
                  <option value="서비스 이용 불편">서비스 이용 불편</option>
                  <option value="방문 횟수 거의 없음">방문 횟수 거의 없음</option>
                </select>
            </div>

          </div>

				</div>

            <div class="deleteCheck">

              <div><strong>비밀번호를 입력해주세요.</strong></div>
              <input type="password" name="userPwd" id="deletePwd">
              <br><br>

	        	</div>

            <div align="center">
              <button type="submit" class="plain-btn btn">탈퇴하기</button>
              <button type="button" class="plain-btn btn" onclick="history.back();">취소</button>
            </div>

	        </form>

          <br>
	        
	 		</div>
		 </div>
	  </div>
	</div>

</body>
</html>