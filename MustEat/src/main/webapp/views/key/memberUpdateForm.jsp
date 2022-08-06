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
		String memImg = loginUser.getMemImgPath();
	%>

  <!-- 회원 정보 수정 창 -->
    <div class="basicInfo-area">

        <br>
        <h3 align="center">회원 정보 수정</h3>
        <br>
        
	<form action="<%=contextPath %>/update.me" class="userUpdateForm" method="post" enctype="multipart/form-data">
	
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
                    <input type="password" name="updatePwd" id="pw" value="<%=memPwd %>" onchange="check_pw();" required>
                  </td>
                </tr>
                
                <tr>
                	<th></th>
                	<td>                  
                    <p id="short" style="display:none; font-size:12px; color:red;">비밀번호는 8글자 이상, 20글자 이하만 이용 가능합니다.</p>
                    <p id="noneSign" style="display:none; font-size:12px; color:red;">특수문자가 포함되어 있지 않습니다.</p>
                    </td>
                </tr>

                <tr class="updateInfo">
                  <th>비밀번호 확인</th>
                  <td>
                    <input type="password" name="checkPwd" id="pw" onchange="check_pw();" required >
                  </td>
                </tr>
                
                <tr class="updateInfo">
                  <th>이름</th>
                  <td><input type="text" name="userName" value="<%=memName %>" required></td>
                </tr>
                                
                <tr class="updateInfo"> 
                    <th>닉네임</th>
                    <td><input type="text" id="nick" name="userNickname" value="<%=memNickname %>" required>
                    	<input type="hidden" name="double" id="doubleNick" value="Y">
                    	<button type="button" class="checkDouble btn1" onclick="checkNick();">중복확인</button>
                    </td>
                </tr>
                
                <tr>
                	<th></th>
                	<td>                  
                    <p id="exist" style="display:none; font-size:12px; color:red;">이미 존재하거나 탈퇴한 회원의 닉네임입니다.</p>
                    <p id="noneExist" style="display:none; font-size:12px; color:red;">사용가능한 닉네임 입니다.</p>
                    </td>
                </tr>

                <tr class="updateInfo">
                    <th>전화번호</th>
                    <td><input type="text" name="phone" id="phone" value="<%=phone %>">
                    	<input type="hidden" name="doublePhone" id="doublePhone" value="Y">
                    	<button type="button" id="phoneChk" class="checkDouble btn1" onclick="phoneCheck();">본인인증</button>
                    </td>
                </tr>
                
                <tr class="updateInfo" id="show" style="display:none">
                        <th></th>
                        <td><input type="text" name="userPhone2" id="phone2" placeholder="인증번호를 입력해주세요">
                       <span id="check2"></span>
                        <button type="button" id="phoneChk2" class="checkDouble btn1" onclick="phoneCheck2();">인증확인</button></td>
                </tr>

                <tr class="updateInfo">
                    <th>이메일</th>
                    <td><input type="email" id="email" name="email" value="<%=email %>" required>
                    	<input type="hidden" name="doubleCheck" id="doubleEmail" value="Y">
                    	<button class="checkDouble btn1" type="button" onclick="checkEmail();">중복확인</button>
                    </td>
                </tr>

     <script>
                
	   // 이메일 변경시 실행할 함수
       $("#email").change(function() {
         $("#doubleEmail").val("N");    	
       })
       
       // 전화번호 변경시 실행할 함수
       $("#phone").change(function() {
    	   $("#doublePhone").val("N");
       })
       
       // 닉네임 변경시 실행할 함수
       $("#nick").change(function() {
    	   $("#doubleNick").val("N");
       })
        
        // 이메일 중복검사
        function checkEmail(){
            
            const $emailInput = $('#email');
            var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            //숫자 (0~9) or 알파벳 (a~z, A~Z) 으로 시작하며 중간에 -_. 문자가 있을 수 있으며 
            //그 후 숫자 (0~9) or 알파벳 (a~z, A~Z)이 올 수도 있고 연달아 올 수도 있고 없을 수도 있다. 
            //@ 는 반드시 존재하며 . 도 반드시 존재하고 a~z, A~Z 의 문자가 2,3개 존재하고 i = 대소문자 구분 안한다.
            
           $("#doubleEmail").val("Y");
            
            if(document.getElementById('email').value ==''){
                alert("이메일을 입력해주세요");
                $emailInput.focus();
            }else if(!regExpEmail.test(document.getElementById("email").value)){
                alert("이메일 형식이 올바르지 않습니다.");
                document.getElementById("email").value='';
                $emailInput.focus();
            } else{
                $.ajax({
                    url:"<%=request.getContextPath()%>/emailCheck.me",
                    data:{checkEmail:$emailInput.val()},
                    success:function(result){   
                        //console.log(result);
                        if(result == "NNN"){ // 사용불가능일 경우
                            alert("이미 존재하거나 탈퇴한 회원의 이메일입니다.");
                            document.getElementById("email").value='';
                            $emailInput.focus();
                        }else{ // 사용가능일 경우
                            if(confirm("사용가능한 이메일입니다. 사용하시겠습니까?")){ // 사용하겠다
                                $emailInput.attr("readonly", true);
                                //$("#enroll-form :submit").removeAttr("disabled");
                                check4 = 1;
                                                                
                            }else{ // 사용안하겠다
                                //$nickInput.val()=''; 왜 안먹는지...
                                $emailInput.focus();
                            }
                        }
                        
                    },error:function(){
                        console.log("아이디 중복체크용 ajax 통신 실패");
                    }
                });
            }
        }
        
       // 휴대폰 본인인증 
       var ranNum = "";
       function phoneCheck(){
    	   
    	   $("#doublePhone").val("Y");
           
           const $phoneInput = $('#phone')
           
           if(document.getElementById('phone').value ==''){
               alert("핸드폰 번호를 입력해주세요");
               $phoneInput.focus();
           }else{
               $("#show").css("display", "");
               $.ajax({
                   url:"<%=request.getContextPath()%>/phoneCheck.me",
                   data:{checkPhone:$phoneInput.val()},
                   success:function(result){ 
                       ranNum = result;
                       alert("인증번호가 정상적으로 발송되었습니다.")
                       
                   },error:function(){
                       console.log("휴대폰 본인인증 ajax 통신 실패");
                   }
               });    
           }
       }    
       function phoneCheck2(){
           const $phoneInput = $('#phone');
           
           console.log(document.getElementById('phone2').value);
           if(document.getElementById('phone2').value != ranNum){
               document.getElementById('phone2').value='';
               document.getElementById('check2').innerHTML='&nbsp;&nbsp;인증번호를 잘못입력하셨습니다.';
               document.getElementById('check2').style.color='red';
               document.getElementById('phone2').focus();
           }else{
               document.getElementById('check2').innerHTML='&nbsp;&nbsp;본인인증이 완료되었습니다.'
               document.getElementById('check2').style.color='blue';
               $phoneInput.attr("readonly", true);
               check5 = 1;
           }
       }
        </script>

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

                <tr class="updateInfo">
	                <th>프로필 사진</th>
	                <% if( memImg != null ) {%>
                    <td> <!-- 프로필 사진이 존재하는 경우 -->
	                    <img src="<%=memImg %>" id="existIcon" onclick="chooseFile(1);">
	                    <input type="hidden" id="hidden" name="profile" value="<%=memImg %>">
	                    <input type="file" id="profile1" name="newProfile" value="" onchange="loadImg(this, 1);" style="display:none;">
	                    <button type="button" class="btn1 basicProfile" onclick="removeImg();">기본프로필로 변경</button>
                    </td>
                    <% } else { %>
                    <td> <!-- 프로필 사진이 없는 경우 -->
	                    <img src="<%=request.getContextPath()%>/resources/image/user.png" id="noneIcon" onclick="chooseFile(2);">
	                    <input type="file" id="profile2" name="newProfile" onchange="loadImg(this, 2);" style="display:none;">
                    </td>
                    <% } %>
                </tr>
              
              </table>
              
              <script>
              
      		// 미리보기 공간 클릭시 실행하는 함수

      		function chooseFile(num) {
      			$("#profile" + num).click();
      		}
      		
      		function removeImg() {
      			
      			$("#existIcon").removeAttr('src'); // 이미지 경로 변경
      			$("#existIcon").attr("src",'<%=request.getContextPath()%>/resources/image/user.png');
      			$("#hidden").val( $("#existIcon").attr("src") ); // 변경된 이미지 경로 저장 
      		}
      					

			// input type="file"에 변화(change)가 생길때 실행하는 함수 
			function loadImg(inputFile, num) {

					// 파일을 읽어들일 FileReader 객체 생성 
					const reader = new FileReader();

					reader.readAsDataURL(inputFile.files[0]); // 파일정보가 담겨있는 요소를 삽입하여 파일 읽어들이기 
					// 파일 읽어들이기가 완료됐을 때 실행할 함수를 정의해두기
					reader.onload = function(e) { // e : 전달된 event객체를 받는 매개변수

						switch(num) {
						case 1 : $("#existIcon").attr("src", e.target.result); break;
						case 2 : $("#noneIcon").attr("src", e.target.result); break;
						case 3 : $("#noneIcon").attr("src", e.target.result); break;
						}
						
					}
				} 

              
              </script>
              
              


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		
	
	    // 비밀번호 유효성검사
	    function check_pw(){
	        var pw = document.getElementById('pw').value;
	        var SC = ["!","@","#","$","%","^","&","*"];
	        var check_SC = 0;
	
	        if(pw.length < 6 || pw.length>16){
	            $("#short").show();
	            document.getElementById('pw').value='';
	        }else{
	            for(var i=0;i<SC.length;i++){
	                if(pw.indexOf(SC[i]) != -1){
	                	$("#short").hide();
	                    check_SC = 1;
	                }
	            }
	            if(check_SC == 0){
	            	 $("#noneSign").show();
	                document.getElementById('pw').value='';
	            } else {
	            	$("#noneSign").hide();
	            }
	        }
	        
	    }
	    
        // 닉네임 중복검사
        function checkNick(){
        	
        	 $("#doubleNick").val("Y");
            
            const $nickInput = $('#nick');
            if(document.getElementById('nick').value !=''){
                $.ajax({
        			url:"<%=request.getContextPath()%>/nickCheck.me",
        			data:{checkNick:$nickInput.val()},
        			success:function(result){   
        				//console.log(result);
        				if(result == "NNNN"){ // 사용불가능일 경우
        					 $("#exist").show();
        					 $("#noneExist").hide();
                            document.getElementById("nick").value='';
        					$nickInput.focus();
        				}else{ // 사용가능일 경우
        					$("#noneExist").show();
        					$("#exist").hide();
        				}
        				
        			},error:function(){
        				console.log("닉네임 중복체크용 ajax 통신 실패");
        			}
        		});
            }else{
                alert("닉네임을 입력해주세요");
                $nickInput.focus();
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
        } else if ( $("#doubleEmail").val() == 'N' ){
			alert("이메일 중복체크 해주세요");
			return false;
        } else if (  $("#doubleNick").val() == 'N') {
        	alert("닉네임 중복체크 해주세요.");
        	return false;
        } else if ( $("#doublePhone").val() == 'N' ) {
        	alert("핸드폰 중복체크 해주세요.");
        	return false;
        } 
      	
      }

    </script>

    <br><br>

    
	<form action="<%=contextPath %>/delete.me" method="get" id="delete-form">
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
              <button type="button" class="plain-btn btn" data-dismiss="modal">취소</button>
            </div>
            
            <br><br>
         </div>
	  </div>
	</div> 

	        </form>
	        
	        <script>
	       		 $("#alert-none").hide(); // 비밀번호 미입력 안내창 숨기기
	        	 $("#alert-fail").hide(); // 비밀번호 불일치 안내창 숨기기
	        	
	        	function deleteMember() {
	        		 
	        		 if( $("#deletePwd").val() == "" ) {
	        			 $("#alert-none").show(); // 비밀번호 미입력시 안내창 보이도록 설정
	        			 $("#alert-fail").hide();
	        			 return false;
	        		 } else if( $("#deletePwd").val() != "<%=memPwd %>") {
	        			 $("#alert-fail").show(); // 비밀번호 불일치시 안내창 보이도록 설정
	        			 $("#alert-none").hide();
	        			 return false; // 탈퇴 불가능하도록 설정
	        		} 
	        		
	        	}
	        </script>

	        
	 		</div>


</body>
</html>