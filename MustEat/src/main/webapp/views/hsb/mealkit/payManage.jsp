<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
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
    
    table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
    padding: 5px;
  }

    .outer{
        margin-top: 15%;
        font-size:;
    }

    < style type="text/css"> 
     body{ 
         text-align: center; 
         display: block; 
         margin: 0 auto; 
         font-size: 16px; 
         color: #999; 
     } 
     h1{ 
         font-family: 'Oswald', sans-serif; 
         font-size: 30px; 
         color: #216182; 
     } 
     label { 
         display: block; 
         margin-top: 20px; 
         letter-spacing: 2px; 
     } 
     form { 
         margin: 0 auto; 
         width: 459px; 
     } 
     input, textarea { 
         width: 439px; 
         height: 27px; 
         background-color: #efefef; 
         border-radius: 6px; 
         border: 1px solid #dedede; 
         padding: 10px; 
         margin-top: 3px; 
         font-size: 0.9em; 
         color: #3a3a3a; 
     } 
         input:focus, textarea:focus{ 
             border: 1px solid #97d6eb; 
         } 
     
     textarea{ 
         height: 60px; 
         background-color: #efefef; 
     } 
     #submit{ 
         width: 127px; 
         height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #submit:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     } 
     #cancel { 
         width: 127px; height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #cancel:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     }

    .modal { 
         position: fixed; 
         left: 0; 
         top: 0; 
         width: 100%; 
         height: 100%; 
         background-color: rgba(0, 0, 0, 0.5); 
         opacity: 0; 
         visibility: hidden; 
         transform: scale(1.1); 
         transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s; 
     } 
     .modal-content { 
         position: absolute; 
         top: 50%; 
         left: 50%; 
         transform: translate(-50%, -50%); 
         background-color: white; 
         padding: 1rem 1.5rem; 
         width: 500px; 
         height: 350px; 
         border-radius: 0.5rem; 
     } 
     .close-button { 
         float: right; 
         width: 1.5rem; 
         line-height: 1.5rem; 
         text-align: center; 
         cursor: pointer; 
         border-radius: 0.25rem; 
         background-color: lightgray; 
     } 
     .close-button:hover { 
         background-color: darkgray; 
     } 
     .show-modal { 
         opacity: 1; 
         visibility: visible; 
         transform: scale(1.0); 
         transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s; 
     }
     #delibery input{
        display: inline-block;
     }
    
< /style>

</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp"%>
    
    <div class="outer" align="center" width="10%">
        <table style="border-collapse: collapse;" style=" border-top: 1px solid #444444;" style="box-sizing: border-box;">
            <tr style="background-color:rgb(226, 223, 223)">
                <th>번호</th>
                <th>아이디</th>
                <th>상품코드</th>
                <th>상품명</th>
                <th>결제금액</th>
                <th>결제일시</th>
                <th>배송상태</th>
                <th></th>
            </tr>
            <tr>
                <td>10</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick1();">변경</button></td>
            </tr>
            <tr>
                <td>9</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick1();">변경</button></td>
            </tr>
            <tr>
                <td>8</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick3();">변경</button></td>
            </tr>
            <tr>
                <td>7</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick4();">변경</button></td>
            </tr>
            <tr>
                <td>6</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick5();">변경</button></td>
            </tr>

            <tr>
                <td>5</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick6();">변경</button></td>
            </tr>
            <tr>
                <td>4</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick7();">변경</button></td>
            </tr>
            <tr>
                <td>3</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick8();">변경</button></td>
            </tr>
            <tr>
                <td>2</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick9();">변경</button></td>
            </tr>
            <tr>
                <td>1</td>
                <td>user91</td>
                <td>A381</td>
                <td>닭한마리 칼국수</td>
                <td>18,900</td>
                <td>xxxx-xx-xx</td>
                <td>배송중</td>
                <td><button class="btn1" onclick="windoOnClick10();">변경</button></td>
            </tr>
           
        </table>

        <!-- 팝업 될 레이어 --> 
     <div class="modal"> 
         <div class="modal-content"> 
             <span class="close-button">&times;</span> 
             <h1 class="title">상태변경</h1> 
             <form action="#post.php" method="POST" id="deilvery"> 
               
               <input type="radio" name="deli" required="required" style="display:inline">배송중
               <input type="radio" name="deli" style="display:inline">배송준비중
               <input type="radio" name="deli" style="display:inline">배송완료
               
               <input type="button" id="submit" value="확인"> 
               <input type="submit" id="cancel" value="취소"> 
             </form> 
         </div> 
     </div>

    <script type="text/javascript"> 
         var modal = document.querySelector(".modal"); 
         var trigger = document.querySelector(".btn1"); 
         var closeButton = document.querySelector(".close-button"); 
         var cancelButton = document.querySelector("#cancel");

        //console.log(modal);

        function toggleModal() { 
             modal.classList.toggle("show-modal"); 
         }

        function windowOnClick1(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

         function windowOnClick2(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

         function windowOnClick3(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

         function windowOnClick4(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

         function windowOnClick5(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }function windowOnClick6(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }function windowOnClick7(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }function windowOnClick8(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }function windowOnClick9(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }function windowOnClick10(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

        trigger.addEventListener("click", toggleModal); 
         closeButton.addEventListener("click", toggleModal); 
         cancel.addEventListener("click", toggleModal); 
         window.addEventListener("click", windowOnClick); 
     </script>

        <br><br>
        <div class="paging-area" align="center">
            <button>&lt;</button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>&gt;</button>
        </div>
    </div>

     
   
    
    
    
</body>
</html>