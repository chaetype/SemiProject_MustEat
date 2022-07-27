<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
    <style>
        .basketdiv {
    width: 100%;
    border-top: 1px solid #e0e0e0;
    float: left;
    font-size: 0.9375em;
    margin-bottom: 20px;
}
    .basketdiv .row.head {
        border-bottom: 2px solid #888;
        box-sizing: border-box;
        background-color: #f4f4f4;
        font-weight: 500;
    }
    .basketdiv .data {
        border-bottom: 1px dashed #888;
        box-sizing: border-box;
        cursor: pointer;
        float: left;
        width: 100%;
    }
    .basketdiv .data .empty{
        text-align: center;
        padding: 12px 0;
    }
    .basketdiv .row.head .subdiv {
        background-color: #f4f4f4;
    }
    .basketdiv .row > .subdiv {
        display: block;
        float: left;
    }
    .basketdiv .row > .subdiv:nth-child(1) {
        width: 50%;
    }
    .basketdiv .row > .subdiv:nth-child(2) {
        width: 40%;
    }
    .basketdiv .row > .subdiv:nth-child(3) {
        width: 10%;
    }
    .basketdiv2 .row > .subdiv:nth-child(1) {
        width: 60%;
    }
    .basketdiv2 .row > .subdiv:nth-child(2) {
        width: 40%;
    }
    .basketdiv .row > div > div {
        display: block;
        float: left;
        text-align: center;
        margin: 0;
        padding: 12px 0;
    }
    .basketdiv .row.data > div > div {
        height: 60px;
        line-height: 60px;
    }
        .basketdiv .data .num .updown {
            color: #0075ff;
            font-size: 2em;
            letter-spacing: -5px;
        }
        .basketdiv .check {
            width: 10%;
        }
    .basketdiv .check input[type=checkbox] {
        transform: scale(1.5);
    }
    .basketdiv .img{
        width: 20%;
    }
    .basketdiv .pname{
        width: 70%;
    }
    .basketdiv2 .pname {
        width: 80%;
    }
    .basketdiv .basketprice {
        width: 33%;
    }
    .basketdiv .num {
        width: 33%;
      min-width: 105px;
    }
    .basketdiv .sum {
        width: 34%;
      max-width: 80px;
        color: #0000aa;
    }
    .basketdiv .point {
        width: 50%;
    }
    .basketdiv2 .basketprice {
        width: 25%;
    }

    .basketdiv2 .num {
        width: 25%;
    }

    .basketdiv2 .sum {
        width: 25%;
        color: #0000aa;
    }

    .basketdiv2 .point {
        width: 25%;
    }
    .basketdiv .basketcmd{
        width: 100%;
    }
    .basketdiv .data .pname {
        text-align: left !important;
      line-height: 1.2 !important;
    }
    .basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point {
        text-align: right;
    }
    .baseform > tbody > tr > td:first-child {
        width: 100px;
    }

.buttongroup {
    padding: 11px 0;
    margin: 50px 0;
}
.narrowbuttongroup{
    margin: 15px 0;
}
    .buttongroup.center {
        text-align: center;
    }
    .buttongroup input[type=text], .buttongroup input[type=password] {
        height: 30px;
    }
    .buttongroup button, .buttongroup a {
        margin-right: 5px;
    }
        .buttongroup button:last-child, .buttongroup a:last-child {
            margin-right: 0;
        }

    .abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button] {
        background-color: #383838;
        border: 1px solid #888888;
        color: #ffffff;
        cursor: pointer;
        letter-spacing: -1px;
        padding: 3px 5px;
        margin: 2px 3px;
        width: auto;
        word-break: keep-all;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9375em;
    }

.abutton-alt {
    background-color: #d3e2c6;
}

.red {
    color:#b00;
}
.blue {
  color: #0075ff;
}
.basketrowcmd, .sumcount, .summoney{
  text-align: right;
  margin-bottom: 10px;
}
.sumcount, .summoney{
  font-size: 1.25em;
    font-weight: bold;
}
.buttongroup{
  text-align: center;
}
.buttongroup a{
  text-decoration: none;
}
.cmd a, .cmd span {
    padding: 12px 30px;
    box-sizing: border-box;
    margin-top: 10px;
    font-size: 1.2em;
    color: #000;
    background-color: #f4f4f4;
    border: 1px solid #e0e0e0;
    text-align: center;
}
.cmd.small a, .cmd.small span {
    padding: 6px 20px;
    font-size: 0.8125em;
}

.orderform .p_num {
    text-align: right;
    width: 40px;
    font-size: 1em;
}

.outer{
    margin-top: 15%;
}


    </style>

</head>
<body>

    <%@ include file="../common/menubar.jsp"%>
    
            <div class="outer" align="center">
                <table>
                    <caption>배송정보</caption>
                    <tbody>
                        <tr>
                            <th>* 이름</th>
                            <td><input type="text"></td>
                        </tr>
                         <tr>
                            <th>* 휴대폰</th>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                        <tr>
                            <th>* 이메일</th>
                            <td><input type="text"></td>
                         </tr>
                            <th>* 주소</th>
                            <td>
                                <input type="text">
                                <button class="btn1">우편번호</button>
                               
                            </td>    
                        </tr>
                        <tr>
                            <th></th>
                            <td><textarea name="" id="" cols="30" rows="1]" style="resize: none ;"></textarea></td>
                        </tr>
                        <tr>
                            <th>* 배송시 요청사항</th>
                            <td><textarea name="" id="" cols="30" rows="10" style="resize: none ;"></textarea></td>
                        
                    </tbody>
                </table>

           
           
            <br><br>
            <div style="background-color:rgb(209, 209, 209)">
                <div class="bigtext right-align box blue summoney" style="color: black;">배송비: 2,500원</div>
                <div class="bigtext right-align box blue summoney" style="color: black;">총상품 금액: 59,800원</div>
           
            <hr>

        
            <div class="bigtext right-align box blue summoney" id="sum_p_price" >최종결제 금액: 62,300원</div>
       
        
            
                <div id="goorder" class="">
            
                    <div class="clear"></div>
            
                    <div class="buttongroup center-align cmd">
            
                        <button class="btn1" style="width:100px" align="right" onclick="pay();">주문하기</button>
            
                    </div>
            
                </div>
      
    
            </div>
        </div>
       
        <script>
            function pay(){
                IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
                IMP.request_pay({
                    pg: "inicis",
                    pay_method: "card",
                    merchant_uid : 'merchant_'+new Date().getTime(),
                    name : '결제테스트',
                    amount : 14000,
                    buyer_email : 'iamport@siot.do',
                    buyer_name : '구매자',
                    buyer_tel : '010-1234-5678',
                    buyer_addr : '서울특별시 강남구 삼성동',
                    buyer_postcode : '123-456'
                }, function (rsp) { // callback
                    if (rsp.success) {
                        
                        // 결제 성공 시 로직,
                        
                    } else {
                        
                        // 결제 실패 시 로직,
                        
                    }
                });
                }

            
        </script>
   
</body>
</html>