<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
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
    	width: 170px;
        height: 150px;;
        margin: 0;
        margin-left: 42%;
    }
    .btn1{
        border-radius: 2%;
        font-weight: bold;
        font-size: 15px;
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
                        <td><input type="text" placeholder="6~15글자"></td>
                        <td><button class="btn1">중복확인</button></td>
                    </tr>        
                    <tr>
                        <th>비밀번호</th>
                        <td colspan="2"><input type="password" placeholder="영문/숫자/특수문자 2가지 이상 (8~20글자)"></td>
                    </tr>
                    <tr>
                        <th>비밀번호확인</th>
                        <td colspan="2"><input type="password" placeholder="비밀번호를 한번 더 입력해주세요"></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td colspan="2"><input type="text" placeholder="이름을 입력해주세요"></td>
                    </tr>
                    <tr>
                        <th>닉네임</th>
                        <td><input type="text" placeholder="닉네임을 입력해주세요"></td>
                        <td><button class="btn1">중복확인</button></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" placeholder="abc@naver.com"></td>
                        <td><button class="btn1">중복확인</button></td>
                    </tr>
                    <tr>
                        <th>휴대전화</th>
                        <td colspan="2"><input type="text" placeholder="-포함해서 작성해주세요"></td>
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
    </script>
	
</body>
</html>