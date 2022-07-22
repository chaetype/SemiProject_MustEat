<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
        <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="slick/slick.min.js"></script>
    
    <style>
 /*  폰트 적용 */
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500&display=swap');

html {
    font-family: "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body, ul, li, h1, h2, h3, h4, h5, p, figure {
    margin:0;
    padding:0;
    list-style:none;
}

a {
    color:inherit;
    text-decoration:none;
}

/* 라이브러리 */
.con {
    margin:0 auto;
}

.img-box > img {
    width:100%;
    display:block;
}

.row::after {
    content:"";
    display:block;
    clear:both;
}

.cell {
    float:left;
    box-sizing:border-box;
}

.cell-right {
    float:right;
    box-sizing:border-box;
}

.margin-0-auto {
    margin:0 auto;
}

.block {
    display:block;
}

.inline-block {
    display:inline-block;
}

.text-align-center {
    text-align:center;
}

.line-height-0-ch-only {
    line-height:0;
}

.line-height-0-ch-only > * {
    line-height:normal;
}

.relative {
    position:relative;
}

.absolute-left {
    position:absolute;
    left:0;
}

.absolute-right {
    position:absolute;
    right:0;
}

.absolute-middle {
    position:absolute;
    top:50%;
    transform:translateY(-50%);
}

.table {
    display:table;
}

.table-cell {
    display:table-cell;
}

input, button, select, fieldset {
    -webkit-border-radius: 0;
    border-radius: 0;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border:0;
    background-color:transparent;
}

fieldset {
    padding:0;
    margin:0;
}

.blind, legend {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    font-size: 12px;
    clip: rect(1px, 1px, 1px, 1px);
}

button {
    cursor:pointer;
    padding:0;
    font-size:inherit;
}

/* 커스텀 */
.con {
    max-width:1440px;
}

.con-min-width {
    min-width:320px;
}

html {
    overflow-x:hidden;
}

body {
    height:5000px;
}

/* 중앙 컨텐츠 3차 visual story */
.v-story-wrap {
    font-size:25px;
}

.v-story-wrap .v-story-tt {
    text-align:center;
    margin-bottom:11px;
}

.v-story-wrap .v-story-slider {
    text-align:center;
}

.v-story-wrap .v-story-slider .slick-list {
    box-sizing:border-box;
}

.v-story-wrap .v-story-slider .slider-item {
    max-width:690px;
    position:relative;
}

.v-story-wrap .v-story-slider .slider-item .img-box > img {
    transform-origin:50% 50%;
    transform:scale(0.88);
    transition:transform .5s linear;
}

.v-story-wrap .v-story-slider .slick-center .slider-item .img-box > img {
    transform:scale(1);
    transition:transform .5s linear;
}

/* discover btn 호버시 나오는 애니메이션까지 */
.v-story-wrap .v-story-slider .slider-item > a {
    position:relative;
}

.v-story-wrap .v-story-slider .slider-item > a::after {
    content:"";
    position:absolute;
    top:0;
    left:0;
    right:0;
    bottom:0;
    background-color:rgba(0,0,0,0);
    transition:background-color .8s;
}

.v-story-wrap .v-story-slider .slick-active .slider-item > a:hover::after {
    background-color:rgba(0,0,0,.3);
}

.v-story-wrap .v-story-slider .slider-item > a > .discover {
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%, -50%);
    z-index:5;
    opacity:0;
    transition:opacity .8s;
}

.v-story-wrap .v-story-slider .slider-item > a > .discover > span.discover-btn {
    background:url('https://kimyang-sun.github.io/pf-img/samsung-img/s-discover-btn.png');
    width:106px;
    height:106px;
}

.v-story-wrap .v-story-slider .slider-item > a > .discover > span.discover-btn::after {
    content:"";
    display:block;
    background:url('https://kimyang-sun.github.io/pf-img/samsung-img/s-discover-plus-ico.png');
    width:100%;
    height:100%;
    transition:transform .8s;
}

.v-story-wrap .v-story-slider .slider-item > a > .discover > span.discover-txt {
    font-size:12px;
    color:#fff;
}

/* 호버 애니메이션 */
.v-story-wrap .v-story-slider .slick-active .slider-item > a:hover > .discover {
    opacity:1;
}

.v-story-wrap .v-story-slider .slick-active .slider-item > a:hover > .discover > span.discover-btn::after {
    transform:rotate(360deg);
}

/* visual story 내부 텍스트 */
.v-story-wrap .v-story-slider .slider-item > .v-story-desc-list {
    margin-top:26px;
    opacity:0;
    transform:translateY(30%);
    transition:opacity .8s, transform .8s;
}

.v-story-wrap .v-story-slider .slider-item > .v-story-desc-list > .v-story-desc-tt {
    font-size:14px;
}

.v-story-wrap .v-story-slider .slider-item > .v-story-desc-list > .v-story-desc {
    font-size:24px;
}

.v-story-wrap .v-story-slider .slick-active .slider-item > .v-story-desc-list {
    opacity:1;
    transform:translateY(0);
    transition:opacity .8s .5s, transform .8s .5s;
}

/* visual story 사이드 버튼 */
.v-story-wrap .v-story-slider .slick-arrow {
    z-index:10;
    top:185px;
    width:50px;
    height:60px;
}

.v-story-wrap .v-story-slider .slick-prev {
    left:259px;
}

.v-story-wrap .v-story-slider .slick-next {
    right:259px;
    left:auto;
}

.v-story-wrap .v-story-slider .slick-arrow::before {
    display:block;
    width:14px;
    height:26px;
    margin:0 auto;
    color: #000;
    font-size: 24px;
}

/* visual story 하단 페이지 버튼 */
.v-story-wrap .v-story-slider .slick-dots > li {
    width:auto;
    height:auto;
    margin:0 8px;
}

.v-story-wrap .v-story-slider .slick-dots > li > button {
    width:8px;
    height:8px;
    border:1px solid #363636;
    border-radius:45px;
    box-sizing:border-box;
    display:block;
    position:relative;
}

.v-story-wrap .v-story-slider .slick-dots > li > button::before {
    content:"";
    width:100%;
    height:100%;
    border-radius:45px;
    background-color:#363636;
    opacity:0;
    transition:opacity .8s;
}

.v-story-wrap .v-story-slider .slick-dots > li.slick-active > button::before {
    opacity:1;
}

.v-story-wrap .v-story-slider .slick-dots > li:hover > button::before {
    opacity:1;
}

/* 중앙 컨텐츠 3차 visual story 반응형 */
@media (max-width:1440px){
    .v-story-wrap .v-story-tt {
        font-size:2.2vw;
    }
    
    .v-story-wrap .v-story-slider .slider-item {
        max-width:48vw;
    }
    
    .v-story-wrap .v-story-slider .slider-item > .v-story-desc-list > .v-story-desc-tt {
        font-size:12px;
    }
    
    .v-story-wrap .v-story-slider .slider-item > .v-story-desc-list > .v-story-desc {
        font-size:18px;
    }
    
    .v-story-wrap .v-story-slider .slick-arrow {
        top:13vw;
        width:3.5vw;
        height:4.1vw;
    }
    
    .v-story-wrap .v-story-slider .slick-prev {
        left:18vw;
    }
    
    .v-story-wrap .v-story-slider .slick-next {
        right:18vw;
    }
}

@media (max-width:770px){
    .v-story-wrap .v-story-tt {
        font-size:40px;
    }
    
    .v-story-wrap .v-story-slider .slider-item {
        max-width:100%;
    }
    
    .v-story-wrap .v-story-slider .slider-item > a {
        padding:0 6.6vw;
    }
    
    .v-story-wrap .v-story-slider .slider-item > a::after {
        display:none;
    }
    
    .v-story-wrap .v-story-slider .slider-item > a > .discover {
        display:none;
    }
    
    .v-story-wrap .v-story-slider .slider-item > .v-story-desc-list > .v-story-desc-tt {
        font-size:22px;
    }
    
    .v-story-wrap .v-story-slider .slider-item > .v-story-desc-list > .v-story-desc {
        font-size:34px;
    }
}

    </style>
  </head>
  <body>

    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- slick 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">

<!-- AOS 플러그인 -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<!-- 중앙 컨텐츠 3차 visual story -->
<div class="v-story-wrap con">
    <h2 class="v-story-tt" data-aos="fade-up">Explore #DoWhatYouCant</h2>
    <div class="v-story-slider" data-aos="fade-up">
        <div class="slider-item">
            <a href="#" class="block">
                <div class="wrap22">
		
    
        <div class="content22">
            <div class="img11">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, <br>겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div class="content23">
			<div class="img11">
            <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%"></div>
            <div class="rmf11"><h2>호족반</h2><br>모던 서양 한식 브랜드 <br>호족반 입니다. 좋을 호, <br>겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.</div>
        </div>

        <div>
        <img src="<%=contextPath%>/resources/image/cy/purplecloud.png" style="width:100%; height:350px; ">
        </div>
    </div>
            </a>
            <div class="v-story-desc-list">
                <p class="v-story-desc-tt">전시 / 행사</p>
                <p class="v-story-desc">CES 2020</p>
            </div>
        </div>
        <div class="slider-item">
            <a href="#" class="block">
                <div class="img-box">
                    <img src="https://source.unsplash.com/random/690x386" alt="">
                </div>
                <div class="discover">
                    <span class="discover-btn block"></span>
                    <span class="discover-txt block">EXPLORE</span>
                </div>
            </a>
            <div class="v-story-desc-list">
                <p class="v-story-desc-tt">SAMSUNG WITHIN</p>
                <p class="v-story-desc">밀리 바비 브라운과 함께하는<br>#SpreadTheLove</p>
            </div>
        </div>
        <div class="slider-item">
            <a href="#" class="block">
                <div class="img-box">
                    <img src="https://source.unsplash.com/random/690x386" alt="">
                </div>
                <div class="discover">
                    <span class="discover-btn block"></span>
                    <span class="discover-txt block">EXPLORE</span>
                </div>
            </a>
            <div class="v-story-desc-list">
                <p class="v-story-desc-tt">SAMSUNG WITHIN</p>
                <p class="v-story-desc">초고화질 시대를 향한 거대한 도약</p>
            </div>
        </div>
        <div class="slider-item">
            <a href="#" class="block">
                <div class="img-box">
                    <img src="https://source.unsplash.com/random/690x386" alt="">
                </div>
                <div class="discover">
                    <span class="discover-btn block"></span>
                    <span class="discover-txt block">EXPLORE</span>
                </div>
            </a>
            <div class="v-story-desc-list">
                <p class="v-story-desc-tt">다양한 활용</p>
                <p class="v-story-desc">젊은 기업가들에게 배우는 성공의 자세</p>
            </div>
        </div>
        <div class="slider-item">
            <a href="#" class="block">
                <div class="img-box">
                    <img src="https://source.unsplash.com/random/690x386" alt="">
                </div>
                <div class="discover">
                    <span class="discover-btn block"></span>
                    <span class="discover-txt block">EXPLORE</span>
                </div>
            </a>
            <div class="v-story-desc-list">
                <p class="v-story-desc-tt">SAMSUNG WITHIN</p>
                <p class="v-story-desc">5G의 오늘과 내일</p>
            </div>
        </div>
        <div class="slider-item">
            <a href="#" class="block">
                <div class="img-box">
                    <img src="https://source.unsplash.com/random/690x386" alt="">
                </div>
                <div class="discover">
                    <span class="discover-btn block"></span>
                    <span class="discover-txt block">EXPLORE</span>
                </div>
            </a>
            <div class="v-story-desc-list">
                <p class="v-story-desc-tt">건강</p>
                <p class="v-story-desc">나쁜 스마트폰 사용 습관 버리는 방법</p>
            </div>
        </div>
    </div>
</div>


  <script>
    console.clear();

// animation on scroll
AOS.init({
    //once:true,
    duration:800,
    easing: 'ease',
});


// 3차 visual stroy slick 적용
$('.v-story-slider').slick({
    dots:true,
    draggable:false,
    arrows:true,
    adaptiveHeight:true,
    centerMode:true,
    centerPadding:'300px',
    responsive: [
        {
          breakpoint: 1440,
          settings: {
            centerPadding:'20vw',
          }
        },
        {
          breakpoint: 770,
          settings: {
            centerPadding:'0',
            arrows:false,
          }
        },
    ],
}).on('beforeChange', function(event, slick, currentSlide, nextSlide) {
    /* 자바스크립트
    if (currentSlide !== nextSlide) {
        document.querySelectorAll('.slick-center + .slick-cloned').forEach((next) => {
            // timeout required or Slick will overwrite the classes
            setTimeout(() => next.classList.add('slick-current', 'slick-center'));
        });
    }
    */
    // IE 호환성을 고려한 제이쿼리
    if (currentSlide !== nextSlide) {
        $('.slick-center + .slick-cloned').each(function(index, node) {
            var $node = $(node);
            
            setTimeout(function() {
                $node.addClass('slick-current');
                $node.addClass('slick-center');
            });
        });
    }
}); // 이 코드는 slick infinite 가 맨끝에서 다시 처음으로 돌아가거나 할때도 트랜지션이 적용되기 위한 코드입니다. (centerMode 에서)
  </script>
  
  </body>
</html>