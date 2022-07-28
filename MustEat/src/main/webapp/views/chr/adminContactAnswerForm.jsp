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
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
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
    table{
        margin:auto;
    }
    h2{
        display:inline-block;
        margin-left:20%;
    }
    .bar{
        border:3px solid rgba(139, 3, 230, 0.726);
    }
    textarea{
        width:70%;
    }
    .form-wrap{
        margin:auto;
        width:60%;
        border-top:3px solid black;
        padding-top:30px;
    }
    /* .form-outline .form-control {
        border: 1px solid #bdbdbd;
        border-top-right-radius: 0.25rem;
        border-bottom-right-radius: 0.25rem;
    } */
    /* .form-outline .form-control:focus {
        border: 1px solid rgba(139, 3, 230, 0.726);
        box-shadow: none;
    } */
    /* .form-outline .form-control:focus~ .form-notch .form-notch-leading {
        border-top: .125rem solid #ffaabb;
        border-bottom: .125rem solid #ffaabb;
        border-left: .125rem solid #ffaabb;
    } 

    .form-outline .form-control:focus~ .form-notch .form-notch-trailing {
        border-top: .125rem solid #ffaabb;
        border-right: .125rem solid #ffaabb;
        border-bottom: .125rem solid #ffaabb;
    } 

    .form-outline .form-control:focus~ .form-notch .form-notch-middle {
        border-top: 0;
        border-bottom: .125rem solid #ffaabb;
    } 
    .form-outline .form-control~ .form-notch .form-notch-leading {
        border-radius: 10px 0 0 10px;
    } 

    .form-outline .form-control~ .form-notch .form-notch-trailing {
    border-radius: 0 10px 10px 0;
    } 

    .form-label {
    color: #ffaabb !important;
    } */
</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">

        <br><br>
        <h2>1 : 1 문의</h2>
        <br><br>

        <div class="form-wrap"></div>
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
            <div class="form-outline" style="width:60%; margin:auto;">
                <textarea class="form-control" id="textAreaExample" rows="4"></textarea>
                <label class="form-label" for="textAreaExample">답변 입력</label>
            </div>
            <br>
            <div style="width:80%" align="right">
                <button type="submit" class="btn1">답변 등록</button>
            </div>
        </form>
        <script>
            document.querySelectorAll('.form-outline').forEach((formOutline) => {
            new mdb.Input(formOutline).init();
            });
        </script>
    </div>

</body>
</html>