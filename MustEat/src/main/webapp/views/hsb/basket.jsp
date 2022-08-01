<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
    <style>
       .wrap1313{
        width: 80%;
        margin: auto;
        margin-top: 10%;
       }

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

.paging-area>button{
        background-color: rgb(167, 112, 239);
        color: white;
        font-family: 'OTWelcomeRA';
        line-height: 0.28in;
        border: none;
        border-radius: 10%;
        height: 38px;
        width: 30px;
    }

    body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:4%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.page-link {
	    position: relative;
	    display: block;
	    color: #673AB7 !important;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #673AB7 !important;
	}
	
	
	.page-link:hover {
	    z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
	
	
	.page-link:focus {
		border-color: rgb(167, 112, 239) !important;
	    z-index: 3;
	    outline: 0;
	    box-shadow: none;
	}

    </style>
</head>
<body>
    <%@ include file="../common/adminMenubar.jsp"%>
    <div class="wrap1313">
    <form name="orderform" id="orderform" method="post" class="orderform" action="/Order">

        <div class="basket" id="basket">
    
        
            
       
            <hr>
            <div class="row data">
    
                <div class="check"><input type="checkbox" name="buy" value="260" checked="">&nbsp;</div>
    
                <div class="img"><img src="" width="160"></div>
    
                <div class="pname">
    
                   <span><b>닭한마리 칼국수</b></span>
    
                </div>
    
                <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="18900">18,900원</div>
    
                <div class="num">
    
                    <!-- "장바구니 수량 변경" -->
    
                    <div class="updown">
    
                        <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="1">
    
                        <span><i class="fas fa-arrow-alt-circle-up up"></i></span>
    
                        <span><i class="fas fa-arrow-alt-circle-down down"></i></span>
    
                    </div>
    
                </div>
                
                <!-- "장바구니 상품 합계" -->
    
                <div class="sum">18,900원</div> <br>
    
                <div class="basketcmd"><a href="#" class="abutton">삭제</a></div>
    
            </div>
    
        </div>
    
        <!-- "장바구니 기능 버튼" -->
    
        <div class="right-align basketrowcmd">
    
            <button class="btn1">선택상품삭제</button><br><br>
    
            <button class="btn1">주문하기</button>
    
        </div>
        <hr><br><hr>
        <div class="row data">
    
            <div class="check"><input type="checkbox" name="buy" value="260" checked="">&nbsp;</div>

            <div class="img"><img src="" width="160"></div>

            <div class="pname">

                <span><b>놀부 부대찌개</b></span>

            </div>

            <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="20000">20,000원</div>

            <div class="num">

                <!-- "장바구니 수량 변경" -->

                <div class="updown">

                    <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="2">

                    <span><i class="fas fa-arrow-alt-circle-up up"></i></span>

                    <span><i class="fas fa-arrow-alt-circle-down down"></i></span>

                </div>

            </div>

            <!-- "장바구니 상품 합계" -->

            <div class="sum">40,000원</div><br>
            <div class="basketcmd"><a href="#" class="abutton">삭제</a></div>

        </div>

    </div>
<div class="wrap1313">
     <!-- "장바구니 기능 버튼" -->


    <div class="right-align basketrowcmd">

        <button class="btn1">선택상품삭제</button> <br> <br>
        <button class="btn1">주문하기</button>

    </div>
    <hr>
        
         <!-- "장바구니 전체 합계 정보" -->
        <button class="btn1">전체선택</button>
    
        <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 4개</div>
    
        <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 59,800원</div>
    
    
    
        <div id="goorder" class="">
    
            <div class="clear"></div>
    
            <div class="buttongroup center-align cmd">
    
                <button class="btn1" style="width:100px">주문하기</button>
    
            </div>
    
        </div>
    </div>
    </form>
    <div class="wrapper-paging">
					    
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </nav>					
    
    </div>




 </div> 

</body>
</html>