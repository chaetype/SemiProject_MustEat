<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">

<style>
    body,
ul,
li {
    list-style: none;
    padding: 0;
    margin: 0;
}
a {
    text-decoration: none;
    color: inherit;
}

/*라이브러리*/

.con {
    margin-left: auto;
    margin-right: auto;
}

.cell {
    float: left;
    box-sizing: border-box;
    margin-bottom: 20px;
}
.row::after {
    content: "";
    display: block;
    clear: both;
}
.img-box > img {
    display: block;
    width: 100%;
}
/*커스텀*/
/* html,
body {
    overflow-x: hidden;
} */
.con {
    max-width: 1000px;
}
.logo-bar {
    text-align: center;
    margin-bottom: 20px;
    margin-top: 20px;
}

.bn-box {
    margin-bottom: 20px;
    margin-top: 20px;
}
@media ( max-width:700px ) {
    .top-bn-box-1 {
        overflow-x:hidden;
    }

    .top-bn-box-1 > .img-box {
        margin-left:-50%;
    }
}

.menu-box {
    margin-bottom: 20px;
    margin-top: 20px;
}
.menu-box > ul > li {
    width: calc(100% / 7);
}
@media (max-width: 800px) {
    .menu-box {
        display: none;
    }
}

.menu-box > ul > li > a {
    display: block;
    text-align: center;
    font-weight: bold;
    position: relative;
}
.menu-box > ul > li:hover > a {
    color: red;
    text-decoration: underline;
}
.menu-box > ul > li > a::before,
.menu-box > ul > li > a::after {
    content: "";
    width: 1px;
    height: 13px;
    background-color: black;
    position: absolute;
    top: 50%;
    transform: translatey(-50%);
    left: 0;
}
.menu-box > ul > li > a::after {
    left: auto;
    right: 0;
}
.menu-box > ul > li:first-child > a::before,
.menu-box > ul > li:last-child > a::after {
    width: 2px;
}
.list > ul > li {
    width: calc(100% / 6);
}

.list > ul > li {
    padding: 0 10px;
}
.list > ul {
    margin: 0 -10px;
}

.list > ul > li > a > .product-name {
    text-align: Center;
    font-weight: bold;
}
.list > ul > li:hover > .product-name {
    text-decoration: underline;
}
.list > ul > li > a > .product-price {
    text-align: center;
    font-weight: bold;
    font-size: 1.5rem;
}
.list > ul > li > a > .product-price::after {
    content: "원";
    font-size: 1rem;
    font-weight:normal;
}


@media (max-width: 800px) {
    .list > ul > li {
        width: calc(100% / 5);
    }
}

@media (max-width: 650px) {
    .list > ul > li {
        width: calc(100% / 4);
    }
}

@media (max-width: 500px) {
    .list > ul > li {
        width: calc(100% / 3);
    }
}

@media (max-width: 400px) {
    .list > ul > li {
        width: calc(100% / 2);
    }
}

@media (max-width: 300px) {
    .list > ul > li {
        width: calc(100% / 1);
    }
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
    .wrap{
        width:80%;
        margin:auto;
    }

</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
    <div class="wrap">
    <div class="logo-bar con">
        <div class="logo">
            <h1>MEALKIT</h1>
            
        </div>
      
    </div>
    <div class="bn-box con">
        <div class="img-box">
            <img src="https://vrthumb.clipartkorea.co.kr/2021/03/29/ti381a21309.jpg" alt="" style="height:350px">
        </div>
    </div>
    <div class="list con">
        <table>
        <ul class="row">
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">[채선당]밀푀유나베 쿠킹박스 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">[을지다락]차돌박이 들깨 파스타 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAUg" alt=""></div>
                    <div class="product-name">[엄지척닭도리]닭도리탕 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAUg" alt=""></div>
                    <div class="product-name">[기승전골]쿠킹박스 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">[짐승파스타]월터감바스 알 아히요 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">[반미362]치즈 반미 샌드위치 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">냉메밀 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">[라라관]마라탕 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">한우곱창전골 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">돌문어삼합 밀키트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div iv class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAUg" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
            <li class="cell">
                <a href="">
                    <div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAU" alt=""></div>
                    <div class="product-name">밀키트 세트</div>
                    <div class="product-price">19800</div>
                </a>
            </li>
        </ul>
    </table>
    </div>

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