<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5083115c1fb16d0c71e6b310c47c7609"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">



    <style>




        .wrap33{
            border: 2px solid rgb(231, 216, 241);
            width: 80%;
            /* margin-top: 10px;
            margin-left: 20%; */
            /* position: relative; */
            margin: auto;
        }

        .outer111{
            /* border: 1px solid black; */
            margin: 5px;
        }

        .outer222{
            /* border: 1px solid black; */
        }

        .outer333{
            /* border: 1px solid black; */
        }

        .tumbnail{
            /* border: 1px solid black; */
            width: 400px;
            height: 400px;
            display: inline-block;
            text-align: center;
            /* margin: 40px; */
            
        }
        .info{
            /* border: 1px solid red; */
            width: 55%;
            display: inline-block;
            /* float: right; */
            margin: 40px;
        }
       

        .tumbnail2{
            /* border: 1px solid black; */
            width: 200px;
            height: 200px;
            display: inline-block;
            text-align: center;
        }
        .popular{
            margin:40px;
            /* border: 1px solid blue; */
        }
        .info2{
            display: inline-block;
            /* border: 1px solid red; */
            width: 200px;
            /* height: 200px; */
            margin:5px
        }

        .popular2{
            margin:40px;
            /* border: 1px solid blue; */
        }
        .info3{
            display: inline-block;
            /* border: 1px solid red; */
            margin: 5px;
            width: 70%;
        }
        .tumbnail3{
            /* border: 1px solid black; */
            width: 200px;
            height: 200px;
            display: inline-block;
            text-align: center;
        }


        
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <div class="wrap33">
        <div class="outer111">
            <div class="tumbnail">
                <img src="<%=contextPath%>/resources/image/cy/hojokban.jpg" style="width: 100%; height:100%;" alt="">
            </div>
           
            <div class="info">
                <h2>(식당이름)호족반</h2>
                <br>
                (식당주소)서울 강남구 언주로 164길 39 1층
                <br>
                (식당 소개글)모던 서양 한식 브랜드 호족반 입니다. 좋을 호, 겨레 족, 밥 반. 훌륭한 민족의 밥이라는 뜻을 더해 어디에 내놓아도 선전할 수 있는 한식을 보여드릴 수 있도록 하겠습니다.
            </div>
            <button class="btn1" style="margin: 5px;"> ❥ 찜 ❥</button>
            
        </div>
        <div class="outer222">
            
            <div class="popular">
                <hr>
                <h2>식당 위치</h2>
                <br>
                <div id="map" style="width:100%;height:350px;"></div>

    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.5253641,127.0367206), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
        
        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
        
        // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(37.5253641,127.0367206); 
        
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });
        
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
        // marker.setMap(null);    
        </script>
      
        <br><br><br>
        <hr>

        <div class="outer222">
            <div class="popular">
                <h2>인기메뉴</h2>
                <div class="tumbnail2">
                    <img src="<%=contextPath%>/resources/image/cy/popmenuhojokban.jpg"style="width: 100%; height:100%;">
                </div>
                <div class="info2"><b>항정살 수육</b><br> 부드러운 항정살과 특제 무 무침의 조화</div>
            </div>
        </div>
        <hr>
        <div class="outer333">
            <div class="popular2">
                <h2>관련리뷰</h2>
                <div class="tumbnail3">
                    <img src="<%=contextPath%>/resources/image/cy/popmenuhojokban.jpg"style="width: 100%; height:100%;">
                </div>
                <div class="info3">최근에 신사역 갈 일이있었는데 점심을 근처 호족반에서 먹게되었습니다. 워낙에 한식을 좋아해서 애매한 퓨전음식은 좀 경계하는 편이였는데 이곳은 차원이 달랐습니다.
                    물론 주말이나 금요일 저녁에는 줄이 매우 길것 같았습니다. 따로 예약시스템이 없기때문에 근처 주민들은 포장을 해가던데 포장은 정말 빨리 나오는거 같더라구요</div>
            </div>
        </div>
    </div>
</body>
</html>