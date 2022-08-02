<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.outer{
        width:1000px;
        margin:auto;
        margin-top:3%;
    }
    input{
        margin: 10px;
        width: 300px;
        height: 33px;
        border: 1px solid rgb(167, 112, 239);
    }
    img{
    	width: 120px;
        height: 100px;;
        margin: 0;
        margin-left: 44%;
    }
    .btn1{
        border-radius: 2%;
        font-weight: bold;
        font-size: 13px;
    }
    #check{
        border: 0;
        padding: 0;
        font-size:12px;
    }


</style>
</head>
<body>

    <div class="outer">
           
        <img src="<%= request.getContextPath() %>/resources/image/mz.png" align="center">
        <p align="center" style="font-size: 30px; font-weight: bold; margin: 20px;">회원가입</p>
        
        <div align="center"><div style="width: 55%;"><hr></div></div>
        
        <form action="" id="enroll-form">
            <div align="center">
                <table>
                    <tr>
                        <th>아이디</th>
                        <td><input type="text" placeholder="6~15글자" name= "userid" id="id" required></td>
                        <td><button type="button" class="btn1" name="check-Id" onclick="checkId();">중복확인</button></td>
                    </tr>        
                    <tr>
                        <th>비밀번호</th>
                        <td colspan="2"><input type="password" name="userPW" id="pw" onchange="check_pw();" placeholder="8~20글자(특수문자 포함)" required></td>
                    </tr>
                    <tr>
                        <th>비밀번호확인</th>
                        <td colspan="2"><input type="password" name="userPW2" id="pw2" onchange="check_pw();" 
                            placeholder="비밀번호를 한번 더 입력해주세요" required><br><span id="check"></span></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td colspan="2"><input type="text" name="userName"  placeholder="이름을 입력해주세요" required></td>
                    </tr>
                    <tr>
                        <th>닉네임</th>
                        <td><input type="text" id="nick" name="userNick" placeholder="닉네임을 입력해주세요" required></td>
                        <td><button type="button" class="btn1" onclick="checkNick();">중복확인</button></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" id="email" name="userEmail" placeholder="abc@naver.com" required></td>
                        <td><button class="btn1" type="button" onclick="checkEmail();">중복확인</button></td>
                    </tr>
                    <tr>
                        <th>휴대전화</th>
                        <td><input type="text" placeholder="-빼고 작성해주세요"></td>
                        <td><button type="button" id="phoneChk" class="btn1" onclick="location.href='<%=request.getContextPath() %>/phoneCheck.me';">본인인증</button></td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td>
                            <input type="text" id="sample6_postcode" placeholder="우편번호"><br>
                            <input type="text" id="sample6_address" placeholder="주소"><br>
                            <input type="text" id="sample6_detailAddress" placeholder="상세주소"><br>
                            <input type="text" id="sample6_extraAddress" placeholder="참고항목">
                        </td>
                        <td>
                            <input type="button" onclick="sample6_execDaumPostcode()" class="btn1" value="우편번호 찾기" style="width:145px; height: 40px;">
                        </td>
                    </tr>

                </table>
            </div>
            
            <br>

            <div align="center"><div style="width: 55%;"><hr></div></div>
            
            <br><br>
            
            <div align="center">
                <button type="submit" style="width: 30%; height: 50px;" class="btn1">회원가입하기</button>
            </div>
            

        </form>
    
    </div>

    <br><br><br><br>

    <!-- 유효성 검사 -->
    <script>
        var check1 = 0;

        var regExpId =/^[A-Za-z0-9]+$/;
        
        // 아이디 유효성검사 & 중복검사
        function checkId(){
            //alert(document.getElementById("id").value.length)
            if(document.getElementById("id").value.length < 6 || document.getElementById("id").value.length > 15) {
			    alert("아이디는 6 - 15자 이내로 입력바랍니다!");
                document.getElementById("id").value='';
		    }else if(!regExpId.test(document.getElementById("id").value)){
                alert("아이디는 영어와 숫자로만 입력바랍니다!");
                document.getElementById("id").value='';
            }else{
               
                // 아이디 입력하는 input요소 객체
        		const $idInput = $('#id');

        		// $idInput.val() => 사용자가 입력한 아이디값
        		
        		$.ajax({
        			url:"<%=request.getContextPath()%>/idCheck.me",
        			data:{checkId:$idInput.val()},
        			success:function(result){   
        				//console.log(result);
        				if(result == "NNNNN"){ // 사용불가능일 경우
        					alert("이미 존재하거나 탈퇴한 회원의 아이디입니다.");
                            document.getElementById("id").value='';
        					$idInput.focus();
        				}else{ // 사용가능일 경우
        					if(confirm("멋진 아이디네요! 사용하시겠습니까?")){ // 사용하겠다
        						$idInput.attr("readonly", true);
                                //$("#enroll-form :submit").removeAttr("disabled");
                                        						
        					}else{ // 사용안하겠다
                                //$idInput.val()=''; 왜 안먹는지...
                                document.getElementById("id").value='';
        						$idInput.focus();
        					}
        				}
        				
        			},error:function(){
        				console.log("아이디 중복체크용 ajax 통신 실패");
        			}
        		});
            }
        }

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
                    window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                    document.getElementById('pw').value='';
                }
            } 
            
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='&nbsp;&nbsp;&nbsp;비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                    check1 = 1;
                }
                else{
                    document.getElementById('check').innerHTML='&nbsp;&nbsp;&nbsp;비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                    check1 = 0;
                }
            }
        }
        
        // 닉네임 중복검사
        function checkNick(){
            
            const $nickInput = $('#nick');

            if(document.getElementById('nick').value !=''){
                $.ajax({
        			url:"<%=request.getContextPath()%>/nickCheck.me",
        			data:{checkNick:$nickInput.val()},
        			success:function(result){   
        				//console.log(result);
        				if(result == "NNNN"){ // 사용불가능일 경우
        					alert("이미 존재하거나 탈퇴한 회원의 닉네임입니다.");
                            document.getElementById("nick").value='';
        					$nickInput.focus();
        				}else{ // 사용가능일 경우
        					if(confirm("멋진 닉네임이네요! 사용하시겠습니까?")){ // 사용하겠다
        						$nickInput.attr("readonly", true);
                                //$("#enroll-form :submit").removeAttr("disabled");
                                        						
        					}else{ // 사용안하겠다
                                //$nickInput.val()=''; 왜 안먹는지...
                                document.getElementById("nick").value='';
        						$nickInput.focus();
        					}
        				}
        				
        			},error:function(){
        				console.log("아이디 중복체크용 ajax 통신 실패");
        			}
        		});
            }else{
                alert("닉네임을 입력해주세요");
                $nickInput.focus();
            }
            
        }

        // 이메일 중복검사
        function checkEmail(){
            
            const $emailInput = $('#email');
            var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

            //숫자 (0~9) or 알파벳 (a~z, A~Z) 으로 시작하며 중간에 -_. 문자가 있을 수 있으며 
            //그 후 숫자 (0~9) or 알파벳 (a~z, A~Z)이 올 수도 있고 연달아 올 수도 있고 없을 수도 있다. 
            //@ 는 반드시 존재하며 . 도 반드시 존재하고 a~z, A~Z 의 문자가 2,3개 존재하고 i = 대소문자 구분 안한다.
            
            if(document.getElementById('email').value ==''){
                alert("이메일을 입력해주세요");
                $emailInput.focus();
            }else if(!regExpEmail.test(document.getElementById("email").value)){
                alert("이메일 형식이 올바르지 않습니다.");
                document.getElementById("email").value='';
                $emailInput.focus();
            }else{
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
                                                                
                            }else{ // 사용안하겠다
                                //$nickInput.val()=''; 왜 안먹는지...
                                document.getElementById("email").value='';
                                $emailInput.focus();
                            }
                        }
                        
                    },error:function(){
                        console.log("아이디 중복체크용 ajax 통신 실패");
                    }
                });
            }
        }

       
        
	</script>


    <!-- 우편번호 찾기 관련-->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
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
        /*
        $("#phoneChk").click(function(){
            alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
            var phone = $("#phone").val();
            $.ajax({
                type:"GET",
                url:'/MustEat/phoneCheck.me',
                cache : false,
                success:function(data){
                    if(data == "error"){
                        alert("휴대폰 번호가 올바르지 않습니다.")
                        
                    }else{	        		
                        alert("휴대폰 번호가 올바르지 않습니다.")
                       
                    }
                }
            });
        });
        */


    </script>
	
</body>
</html>