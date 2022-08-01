<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<style>
	.outer{
		width:80%;
		margin:auto;
	}
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
		
		<div class="outer">
			
				<div class="col-md-5" style="display:inline-block;vertical-align:top;">
					<img style="display:flex" width="300" height="300" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdInsHseLr8NDKrBFMtAht7th7Rww6Cf_wf41RJAcKAQhfNK-fwZqWyl63rAznrbiu6hw&usqp=CAUg">
					 
				</div>
				

				
			
				<div style="display:inline-block; margin-left: 50px;" >
					<h3>상품이름넣을곳</h3>
					<p>상품설명넣을곳<p>
					<p><b>판매단위: </b></p>
					<p><b>중량/용량: </b></p>
					<p><b>배송구분: </b></p>
                    <p><b>포장타입: </b></p>
                    <p><b>알레르기정보: </b></p>
                    <p><b>유통기한: </b></p>
                    <p><b>구매수량: </b></p>
				</div>

					<div align="right">	
						<hr>
						<h4>~~~~~원</h4>
						<button class="btn1">바로구매</button>
						<button class="btn1">장바구니</button>
					</div>
					<hr>
		</div>		
			
		<div id="reply-area">
            <table border="1" align="center" class="rwd-table">
                
                <tbody>
                	<tr>
                    	<td class="reviewDelete">댓글 삭제</td>
                        <th>댓글작성</th>
                        <td><textarea rows="3" cols="50" style="resize:none"></textarea></td>
                        <td><button class="btn1">댓글등록</button></td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>김밥</td>
                        <td>지난번에 여기 가봤는데 정말 맛있었어요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>젤리아이스크림</td>
                        <td>포장하면 양이 더 많습니다 추천해요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>젤리아이스크림</td>
                        <td>포장하면 양이 더 많습니다 추천해요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>악성유저</td>
                        <td>돈주고 왜먹냐 해먹으면 되는걸<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>캡슐커피 매니아</td>
                        <td>재방문 하고싶습니다 맜있어요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-24</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>노티드 도넛</td>
                        <td>위생상태는 그리 좋은 것 같지않아요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-23</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox"></td>
                        <td>젤리아이스크림</td>
                        <td>포장하면 양이 더 많습니다 추천해요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                </tbody>
            </table>
        </div>
			<div class="list01">
		        <button class="btn1" id="btn2">전체선택</button>
		        <button class="btn1">선택삭제</button>
	        </div>
          <br><br><br>
  
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

			
		
		
	 
</div>




		 


		
		
		
</body>
</html>
