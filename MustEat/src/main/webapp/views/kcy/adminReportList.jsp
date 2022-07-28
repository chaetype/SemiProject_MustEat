<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<style>
	.wrap44{
		/* width: 80%;
		margin-left: 20%; */
		width: 80%;
		margin: auto;
	}
	.wrap55{
		display: inline-block;
	}

	.test1{
		display: inline-block;
	}

	.btn1{
		font-family: 'OTWelcomeRA';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
		font-weight: normal;
		font-style: normal;
		padding: 0.3em 1em;
    	margin: 0 0.1em 0.1em 0;
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
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<div class="wrap44">
	
		<h2 style="text-align:center">REPORT LIST</h2>
		
		  <table class="rwd-table">
				<tbody>
				<tr>
					<th>선택</th>
					<th>글번호</th>
					<th width="90">게시자</th>
					<th width="90">회원아이디</th>
					<th colspan="3" width="295">리뷰제목</th>
					<th width="180">신고내용</th>
					<th width="145">게시일</th>
					<th width="90">비고</th>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">5</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">광고글이에요</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">4</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">광고글이에요</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">3</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">광고글이에요</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">2</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">광고글이에요</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox"></td>
					<td data-th="Supplier Code">1</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">광고글이에요</td>
					<td data-th="Due Date">2022-07-23</td>
					<td data-th="Net Amount">일반회원</td>
				</tr>

				</tbody>
		  	</table>
			<div class="list01">
		        <button class="btn1 btn2">전체선택</button>
		        <button class="btn1">선택삭제</button>
	        </div>
	</div>
	<br><br><br>
	<div class="paging-area" align="center">
		<button>&lt;</button>
		<button>1</button>
		<button>2</button>
		<button>3</button>
		<button>4</button>
		<button>5</button>
		<button>&gt;</button>
	</div>
	<br><br>
	<script>
        const $container = document.querySelector('.rwd-table');
        const $inputs = [...$rwd-table.children];
        const $agreeBtn = document.querySelector('.btn2');

        $btn2.onclick = () => {
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