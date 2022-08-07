<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.store.model.vo.Store"%>
<%
	ArrayList<Store> list = (ArrayList<Store>)request.getAttribute("store");
	Store city = (Store)request.getAttribute("city");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Must Eat</title>
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5083115c1fb16d0c71e6b310c47c7609"></script>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
	<!-- services 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
	<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">

    <style>
    
    		html{
			cursor:url("<%=request.getContextPath() %>/burger.cur"),auto;
		}
		
		body{margin:0 auto;
			cursor:url("<%=request.getContextPath() %>/burger.cur"),auto;
		}
        .wrap31{
            border: 2px solid rgb(168, 99, 221);
            width: 80%;
            margin: auto;
            text-align: center;
        }
        
        .wrap32{
            width: 100%;
            
        }

        .outer11{
            border: 1px solid black;
            width: 100%;
            height: 500px;
        }

        .outer22{
            border: 2px solid rgb(168, 99, 221);
            width: 100%;
            text-align: center;
        }
    
        .outer33{
            float: right;
        }

        .thumb1{
            border: 1px solid black;
            width: 370px;
            height: 500px;
            margin: 50px;
            display: inline-block;
            cursor: pointer;
        }

 </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    
    <div class="wrap31">
        <div class="outer11">
        <div id="map" style="width:100%;height:500px;"></div>
<!-- @@@@@@@@@@@@@@@@@@@@지도 마커 움직이게 다시 작성할 것 -->
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
        
        </div>
        <div class="outer22">
            <hr>
            <h3><%=city.getLocalSi() + " "%><%=city.getLocalGu() %></h3><br>
            <!-- 검색폼 시작 -->
            <!-- @@@@@@@@@@@전체 조회도 가능하게 해야함 -->
		<form action="<%=contextPath %>/search.st" class="outer33">
			<div class="test1" style="display: inline-block;">
			<select name="select12" style="height: 48px; margin: 10px;">
				<option value="1">서울</option>
				<option value="2">경기</option>
                <option value="3">인천</option>
                <option value="4" selected>전체</option>
			</select>
			</div>
			<div class="wrap55" style="display: inline-block;">
				<div class="input-group mb-3">
					<input type="text" name="findKeyword" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2" >
					<div class="input-group-append">
						<button class="btn btn-outline-warning btn-lg" type="submit"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
		</form>
	<!-- 검색폼 끝 -->
        </div>
        <br><br><br><br><br>
		
        <div class="wrap32">
        	<% for(Store s : list) { %>
        	<div class="thumb1">
        		<input type="hidden" value="<%=s.getStoreNo() %>">
            	<img src="<%=contextPath%>/<%=s.getStoreImgPath() %>" alt="" style="width:100%; height:400px;">
	            <br>
	            <h4><b><%=s.getStoreName() %></b></h4>
	        </div>
			<% } %>
            
        </div>
        <script>
        	$(function(){
        		$(".thumb1").click(function(){
        			location.href = '<%=contextPath%>/detail.st?no=' + $(this).children("input").val();
        		})
        	})
        </script>
        

    </div>
</body>
</html>