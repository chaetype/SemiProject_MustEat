<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.member.model.vo.*, java.text.DecimalFormat"%>
<%
	MyPage mp = (MyPage)request.getAttribute("myPage");
%>
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
		String addressCode = loginUser.getAddressCode();
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
                    <input type="password" name="updatePwd" id="pw" value="<%=memPwd %> onchange="check_pw();"" required>
                  </td>
                </tr>

                <tr class="updateInfo">
                  <th>비밀번호 확인</th>
                  <td>
                    <input type="password" name="checkPwd" id="pw" required onchange="check_pw();">
                  </td>
                </tr>
                
                <tr class="updateInfo">
                  <th>이름</th>
                  <td><input type="text" name="userName" value="<%=memName %>" onchange="check_pw();" required></td>
                </tr>
                                
                <tr class="updateInfo"> 
                    <th>닉네임</th>
                    <td><input type="text" name="userNickname" value="<%=memNickname %>" required>
                    	<button type="button" class="checkDouble btn1" onclick="checkNick();">중복확인</button>
                    </td>
                </tr>

                <tr class="updateInfo">
                    <th>전화번호</th>
                    <td><input type="text" name="phone" value="<%=phone %>">
                    	<button type="button" id="phoneChk" class="checkDouble btn1" onclick="phoneCheck();">본인인증</button>
                    </td>
                </tr>

                <tr class="updateInfo">
                    <th>이메일</th>
                    <td><input type="text" name="email" value="<%=email %>" required>
                    	<button  type="button" class="checkDouble btn1" onclick= "checkEmail();">중복확인</button>
                    </td>
                    
                </tr>

                <tr class="updateInfo">
                    <th>주소</th>
                    <td colspan="3">
                    	<% if( addressCode == null) { %>
                    	<input type="text" name="addressCode" id="sample6_postcode" placeholder="우편번호"> <button onclick="sample6_execDaumPostcode()" class="addressCheck btn1">우편번호 찾기</button>  <br>
                    	<% } else { %>
                        <input type="text" name="addressCode" id="sample6_postcode" placeholder="우편번호" value="<%=addressCode %>" > <button onclick="sample6_execDaumPostcode()" class="addressCheck btn1">우편번호 찾기</button>  <br>
                        <% } %>
                        
                        <% if ( address == null) { %>
                       	 <input type="text" name="address" id="sample6_address" placeholder="주소"><br>
                       	<% } else { %>
                        <input type="text" name="address" id="sample6_address" placeholder="주소" value="<%=address %>" ><br>
                        <% } %>
                        
                        <% if( addressDetail == null) { %>
                        <input type="text" name="addressDetail" id="sample6_detailAddress" placeholder="상세주소">
                        <% } else { %>
                        <input type="text" name="addressDetail" id="sample6_detailAddress" placeholder="상세주소" value="<%=addressDetail %>" >
                        <% } %>
                        
                        <% if( addressRef == null) { %>
                        <input type="text" name="addressRef" id="sample6_extraAddress" placeholder="참고항목">
                        <% } else { %>
                        <input type="text" name="addressRef" id="sample6_extraAddress" placeholder="참고항목" value="<%=addressRef %>" >
                        <% } %>
                    </td>
                </tr>
              
              </table>
              


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	
	    // 비밀번호 유효성검사
	    function check_pw(){
	        var pw = document.getElementById('pw').value;
	        var SC = ["!","@","#","$","%","^","&","*"];
	        var check_SC = 0;
	
	        if(pw.length < 6 || pw.length>16){
	            window.alert('비밀번호는 8글자 이상, 20글자 이하만 이용 가능합니다.');
	            document.getElementById('pw').value='';
	        }else{
	            for(var i=0;i<SC.length;i++){
	                if(pw.indexOf(SC[i]) != -1){
	                    check_SC = 1;
	                }
	            }
	            if(check_SC == 0){
	                window.alert('특수문자가 포함되어 있지 않습니다.')
	                document.getElementById('pw').value='';
	            }
	        }
	        
	    }
		
	
	// 주소 검색
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>

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
	        	
	        	<%
	       			DecimalFormat df = new DecimalFormat("#,##0"); // 가격 천단위로 보여지도록 설정
	       		%>
				
          <div class="deleteContent">
            <b>혜택 내역</b>  <br> 
            탈퇴하면 적립금이 삭제됩니다. <br>
            현재 적립금 : <%=df.format(mp.getMpsPoint()) %>
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
			
			 <div id="alert-fail" style="padding-left:31px; font-size:12px; color:red;">비밀번호를 잘못 입력하셨습니다. 다시 입력해주세요.</div>
			 <div id="alert-none" style="padding-left:31px; font-size:12px; color:red;">비밀번호를 입력해주세요.</div>

			<br>
            <div align="center">
              <button type="submit" class="plain-btn btn" onclick="return deleteMember();">탈퇴하기</button>
              <button type="button" class="plain-btn btn" onclick="history.back();">취소</button>
            </div>
            
            <br><br>

	        </form>
	        
	        <script>

	       		 $("#alert-none").hide(); // 비밀번호 미입력 안내창 숨기기
	        	 $("#alert-fail").hide(); // 비밀번호 불일치 안내창 숨기기
	        	
	        	function deleteMember() {
	        		 
	        		 if( $("deletePwd").val() == null ) {
	        			 $("#alert-none").show(); // 비밀번호 미입력시 안내창 보이도록 설정
	        			 return false;
	        		 } else if( $("#deletePwd").val() != <%=memPwd %>) {
	        			 $("#alert-fail").show(); // 비밀번호 불일치시 안내창 보이도록 설정
	        			 return false; // 탈퇴 불가능하도록 설정
	        		}
	        		
	        	}

	        </script>

	        
	 		</div>
		 </div>
	  </div>
	</div>

</body>
</html>