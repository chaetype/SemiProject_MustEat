<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin-left:20%;
        /* margin:auto; */
        /* border:1px solid black; */
    }
    th{
        /* border:1px solid black;  */
        font-size:large;
        height:50px;
    }
    td{
        /* border:1px solid black;  */
        font-size:medium;
        height:50px;
    }
    #email, #phone{
        margin-left:10px;
    }
    .form-wrap{
        width:80%;
        border-top:3px solid black;
        padding-top:30px;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <!-- 셀 크기 조정 -->

    <div class="outer">
        <br><br>
        <h2 style="margin-left:50px"><b>1 : 1 문의하기</b></h2>
        <br><br>

        <div class="form-wrap">
            <form action="<%= contextPath %>/contactInsert.no" method="post" enctype="multipart/form-data">
                <table style="margin-left:50px">
                    <tr>
                        <th width="130px">문의 제목</th>
                        <td width="700px">
                            <select name="contact-type" id="type" style="width:10%; height:80%">
                                <option>주문</option>
                                <option>배송</option>
                                <option>회원</option>
                            </select>
                            <input type="text" name="contact-title" style="width:84%; height:80%" placeholder="제목을 입력해주세요." required>
                        </td>
                    </tr>
                    <tr>
                        <th>문의 내용</th>
                        <td>
                            <textarea name="contact-content" cols="87" rows="20" style="resize:none" required></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>파일 첨부</th>
                        <td>
                            <input type="file" name="contact-file" id="file">
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td><p style="font-size:small; color:gray; margin-top:0;">jpg, gif, psd, png, tif, zip, pdf ,ms office, hwp 만 첨부 가능하고 <br>
                            10MB까지 등록가능하며 첨부파일은 답변완료가 되면 즉시 삭제됩니다.</p></td>
                    </tr>
                    <tr>
                        <th>이메일 주소</th>
                        <td>
                            <input type="email" name="contact-email" style="width:50%; height:80%" placeholder="예) example@naver.com">
                            <input type="checkbox" name="contact-eCheck" id="email" value="emailCheck"> <label for="email" style="font-size:medium;">이메일로 답변 수신</label>
                        </td>
                    </tr>
                    <tr>
                        <th>휴대폰 번호</th>
                        <td>
                            <input type="tel" name="contact-phone" style="width:50%; height:80%" placeholder="예) 010-1234-5678">
                            <input type="checkbox" name="contact-pCheck" id="phone" value="phoneCheck"> <label for="phone" style="font-size:medium;">SMS로 답변 수신</label>
                        </td>
                    </tr>
                </table>
                <br><br>
                <div style="width:850px" align="right">
                    <button type="submit" class="btn1">문의하기</button>
                    <button type="reset" class="btn1">초기화</button>
                </div>
            </form>
        </div>
    </div>

</body>
</html>