<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">

<style>
    .wrap55{
        /* border: 1px solid black; */
        width : 80%;
        margin-left:20%;
        
    }
    .list01{
        /* border: 1px solid red; */
        width: 70%;
        margin-top: 5px;
        /* margin-left: 150px; */
    }
    .thumbnail01{
        width: 150px;
        height: 150px;
        display: inline-block;
    }
    .info01{
        display: inline-block;
        /* border: 1px solid blue; */
        width: 500px;
        height: 150px;
        margin-left: 20px;
    }
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <div class="wrap55">
        


        <input type="checkbox" style="margin-top: 5px;" name='check'>
        <div class="list01">
            <div class="thumbnail01">
                <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;" alt="">
            </div>
            <div class="info01">
                <h3>호족반</h3>
                <table>
                    <tr>
                        <td style="width: 50px;">주소</td>
                        <td style="width: 300px;">서울 강남구 언주로 164길 39 1층</td>
                    </tr>
                    <tr>
                        <td style="width: 50px;">별점</td>
                        <td style="width: 200px;">4.5</td>
                    </tr>
                </table>
            </div>
            <br>
            <hr>
            <br>
        </div>

    
        <input type="checkbox" style="margin-top: 5px;" name='check'>
        <div class="list01">
            <div class="thumbnail01">
                <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;" alt="">
            </div>
            <div class="info01">
                <h3>호족반</h3>
                <table>
                    <tr>
                        <td style="width: 50px;">주소</td>
                        <td style="width: 300px;">서울 강남구 언주로 164길 39 1층</td>
                    </tr>
                    <tr>
                        <td style="width: 50px;">별점</td>
                        <td style="width: 200px;">4.5</td>
                    </tr>
                </table>
            </div>
            <br>
            <hr>
            <br>
        </div>



        <input type="checkbox" style="margin-top: 5px;" name='check'>
        <div class="list01">
            <div class="thumbnail01">
                <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;" alt="">
            </div>
            <div class="info01">
                <h3>호족반</h3>
                <table>
                    <tr>
                        <td style="width: 50px;">주소</td>
                        <td style="width: 300px;">서울 강남구 언주로 164길 39 1층</td>
                    </tr>
                    <tr>
                        <td style="width: 50px;">별점</td>
                        <td style="width: 200px;">4.5</td>
                    </tr>
                </table>
            </div>
            <br>
            <hr>
            <br>
        </div>




        <div class="list01">
        <button class="btn1" id="btn2">전체선택</button>
        <button class="btn1">선택삭제</button>
        </div>
    </div>




    <script>
        const $container = document.querySelector('.wrap55');
        const $inputs = [...$container.children];
        const $agreeBtn = document.querySelector('#btn2');

        $agreeBtn.onclick = () => {
        if ($inputs.filter(input => input.checked).length === 3) {
            $inputs.forEach(input => { input.checked = false; });
        } else {
            $inputs.forEach(input => {
            input.checked = true;
            });
        }
        };
    </script>
</body>
</html>