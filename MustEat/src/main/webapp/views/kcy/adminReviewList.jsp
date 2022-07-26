<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
    
    
    <style>
    	.rwd-table{
		width: 80%;
		margin: auto;
    }

    h3{
        margin-left: 20% ;
        color: rgb(167, 112, 239);
    }
    .list01{
    margin-left : 10%
    }
    </style>
</head>
<body>
	<%@ include file="../common/adminMenubar.jsp"%>
	
	
	
	<div>
        <br><br>
        <hr>
        <h1 style="font-family: 'OTWelcomeRA';">전체 댓글 관리 페이지</h1>
        <br>
		
		  <table class="rwd-table">
		    <tbody>
		      <tr>
		        <th >선택</th>
		        <th >등록번호</th>
		        <th >게시자 아이디</th>
		        <th >게시자 닉네임</th>
		        <th >댓글 내용</th>
		        <th >게시일</th>
		        <th >비고</th>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">15</td>
		        <td data-th="Invoice Number">user015</td>
		        <td data-th="Invoice Date">김밥</td>
		        <td data-th="Due Date">지난번에 여기 가봤는데 정말 맛있었어요</td>
		        <td data-th="Net Amount">2022-07-25</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">14</td>
		        <td data-th="Invoice Number">user014</td>
		        <td data-th="Invoice Date">도넛</td>
		        <td data-th="Due Date">여기 위생상태가 별로였어요</td>
		        <td data-th="Net Amount">2022-07-25</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">13</td>
		        <td data-th="Invoice Number">user013</td>
		        <td data-th="Invoice Date">젤리젤리</td>
		        <td data-th="Due Date">포장하면 양이 더 많습니다 추천해요</td>
		        <td data-th="Net Amount">2022-07-24</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">12</td>
		        <td data-th="Invoice Number">user012</td>
		        <td data-th="Invoice Date">악성유저</td>
		        <td data-th="Due Date">돈주고 왜먹냐 해먹으면 되는걸</td>
		        <td data-th="Net Amount">2022-07-24</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">11</td>
		        <td data-th="Invoice Number">user011</td>
		        <td data-th="Invoice Date">캡슐커피 매니아</td>
		        <td data-th="Due Date">재방문의사 넘칩니다~</td>
		        <td data-th="Net Amount">2022-07-23</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">10</td>
		        <td data-th="Invoice Number">user010</td>
		        <td data-th="Invoice Date">김밥처도리</td>
		        <td data-th="Due Date">지난번에 여기 가봤는데 정말 맛있었어요</td>
		        <td data-th="Net Amount">2022-07-23</td>
		        <td data-th="Net Amount">우수회원</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">9</td>
		        <td data-th="Invoice Number">user009</td>
		        <td data-th="Invoice Date">튀긴도넛</td>
		        <td data-th="Due Date">여기 위생상태가 별로였어요</td>
		        <td data-th="Net Amount">2022-07-22</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">8</td>
		        <td data-th="Invoice Number">user008</td>
		        <td data-th="Invoice Date">젤리아이스크림</td>
		        <td data-th="Due Date">포장하면 양이 더 많습니다 추천해요</td>
		        <td data-th="Net Amount">2022-07-21</td>
		        <td data-th="Net Amount">우수회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">7</td>
		        <td data-th="Invoice Number">user007</td>
		        <td data-th="Invoice Date">악성유저</td>
		        <td data-th="Due Date">돈주고 왜먹냐 해먹으면 되는걸</td>
		        <td data-th="Net Amount">2022-07-21</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">6</td>
		        <td data-th="Invoice Number">user006</td>
		        <td data-th="Invoice Date">돌체커피 매니아</td>
		        <td data-th="Due Date">재방문의사 넘칩니다~</td>
		        <td data-th="Net Amount">2022-07-20</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">5</td>
		        <td data-th="Invoice Number">user005</td>
		        <td data-th="Invoice Date">김밥</td>
		        <td data-th="Due Date">지난번에 여기 가봤는데 정말 맛있었어요</td>
		        <td data-th="Net Amount">2022-07-20</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
              <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">4</td>
		        <td data-th="Invoice Number">user004</td>
		        <td data-th="Invoice Date">노티드도넛</td>
		        <td data-th="Due Date">여기 위생상태가 별로였어요</td>
		        <td data-th="Net Amount">2022-07-20</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">3</td>
		        <td data-th="Invoice Number">user003</td>
		        <td data-th="Invoice Date">젤라또는자몽</td>
		        <td data-th="Due Date">포장하면 양이 더 많습니다 추천해요</td>
		        <td data-th="Net Amount">2022-07-20</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">2</td>
		        <td data-th="Invoice Number">user002</td>
		        <td data-th="Invoice Date">악성유저</td>
		        <td data-th="Due Date">돈주고 왜먹냐 해먹으면 되는걸</td>
		        <td data-th="Net Amount">2022-07-20</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      <tr>
		        <td data-th="Supplier Code"><input type="checkbox"></td>
		        <td data-th="Supplier Name">1</td>
		        <td data-th="Invoice Number">user001</td>
		        <td data-th="Invoice Date">캡슐커피 매니아</td>
		        <td data-th="Due Date">재방문의사 넘칩니다~</td>
		        <td data-th="Net Amount">2022-07-19</td>
		        <td data-th="Net Amount">일반회원</td>
		      </tr>
		      
		      
		    </tbody>
		  </table>

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
	
	
</body>
</html>