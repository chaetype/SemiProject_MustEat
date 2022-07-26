<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css"
  rel="stylesheet"
/>
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.js"
></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin:auto;
    }
    #a th{
        border-bottom-style:hidden;
        padding-left:5%;
        padding-top:5%;
        color:lightyellow
    }
    #b th{
        border-left-style:hidden;
        text-align:right;
        color:lightyellow
    }
    table, h2{
        margin-left:15%;
    }
    .bar{
        border:3px solid rgba(139, 3, 230, 0.726);
    }
    textarea{
        width:70%;
    }
</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">

        <br><br>
        <h2>1 : 1 문의</h2>
        <br><br>

        <table class="table table-bordered border-secondary" style="width:60%">
            <thead style="background:rgba(139, 3, 230, 0.726)">
                <tr id="a">
                    <th colspan="3"><h4><b>[주문] 주문할 때 적립금 적용 어떻게 해요?</b></h4></th>
                </tr>
                <tr id="b">
                    <td width="60%"></td>
                    <th><b>user01</b></th>
                    <th>2022-07-10</th>
                </tr>
            </thead>
            <tbody style="background:rgba(250, 243, 255, 0.568)">
                <tr>
                    <td colspan="3">
                        <div>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                            적립금 적용하는 방법을 모르겠어요ㅠ <br>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <br><br>
        <!-- <div class="bar"></div> -->
        <form action="">
            <div style="margin-left:15%">
                <textarea name="contactAnswer" id="answer" cols="30" rows="10" style="resize:none"></textarea>
            </div>
            <br>
            <div style="width:75%" align="right">
                <button type="submit" class="btn1">답변 등록</button>
            </div>
        </form>
    </div>

</body>
</html>