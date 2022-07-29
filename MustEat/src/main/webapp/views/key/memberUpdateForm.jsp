<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/memberUpdateForm.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<!-- 메뉴바에 담겨있는 회원 정보 불러오기 -->
	<%
		String memId = loginUser.getMemId();
		String memPwd = loginUser.getMemPwd();
		String memName = loginUser.getMemName();
		String memNickname = loginUser.getMemNickname();
		String phone = loginUser.getMemPhone();
		String email = loginUser.getMemEmail();
		int addressCode = loginUser.getAddressCode();
		String address = loginUser.getAddress();
		String addressDetail = loginUser.getAddressDetail();
		String addressRef = loginUser.getAddressRef();
	%>

  <!-- 회원 정보 수정 창 -->
    <div class="basicInfo-area">

        <br>
        <h3 align="center">회원 정보 수정</h3>
        <br>
        
	<form action="<%=contextPath %>/update.me" class="userUpdateForm" method="post">
	
        <div class="basicInfoTitle" style="height:50px;">
            <div class="basicInfo"><strong>기본정보</strong>
            <span><em>*</em> 필수</span>
            </div>
        </div>  

            <table class="userUpdateInfo" width="100%">

                <tr class="updateInfo">
                  <th>아이디</th>
                  <td><input type="text" name="userId" value="<%=memId %>" readonly></td>
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
                  <td><input type="text" name="userName" value="<%=memName %>" required></td>
                </tr>
                                
                <tr class="updateInfo"> 
                    <th>닉네임</th>
                    <td><input type="text" name="userNickname" value="<%=memNickname %>" required></td>
                </tr>

                <tr class="updateInfo">
                    <th>전화번호</th>
                    <td><input type="text" name="phone" value="<%=phone %>"></td>
                </tr>

                <tr class="updateInfo">
                    <th>이메일</th>
                    <td><input type="text" name="email" value="<%=email %>"></td>
                </tr>

                <tr class="updateInfo">
                    <th>주소</th>
                    <td colspan="3">
                        <input type="text" name="addressCode" value="<%=addressCode %>"> <button class="addressCheck btn1">주소검색</button>  <br>
                        <input type="text" name="address" value="<%=address %>"> <br>
                        <input type="text" name="addressDetail" value="<%=addressDetail%>" style="width:50%;">
                        <input type="text" name="addressRef" value="<%=addressRef%>" style="width:50%;">
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
	      
	        <form action="<%=contextPath %>/delete.me" method="post" id="delete-form">
	        	<input type="hidden" name="userId" value="<%=memId%>">
				
          <div class="deleteContent">
            <b>혜택 내역</b>  <br> 
            탈퇴하면 적립금이 삭제됩니다. <br>
            현재 적립금 : 7000
          </div>

          <div class="deleteSelect">

            <span><strong>회원 탈퇴 사유</strong></span>

              <div class="deleteReason">
                <select name="withdraw" required>
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
              <div><input type="password" name="deletePwd" id="deletePwd"></div>
			</div>
			
			 <div id="alert-fail" style="padding-left:31px; font-size:12px; color:red;">비밀번호를 다시 입력해주세요.</div>

			<br>
            <div align="center">
              <button type="submit" class="plain-btn btn" onclick="return deleteMember();">탈퇴하기</button>
              <button type="button" class="plain-btn btn" onclick="history.back();">취소</button>
            </div>
            
            <br><br>

	        </form>
	        
	        <script>

	        	 $("#alert-fail").hide(); // 비밀번호 불일치 안내창 숨기기
	        	
	        	function deleteMember() {
	        		
	        		if( $("#deletePwd").val() != <%=memPwd %>) {
	        			$("#alert-fail").show();
	        			// alert("볼일치");
	        			return false;
	        		}
	        		
	        	}

	        </script>

	        
	 		</div>
		 </div>
	  </div>
	</div>

</body>
</html>