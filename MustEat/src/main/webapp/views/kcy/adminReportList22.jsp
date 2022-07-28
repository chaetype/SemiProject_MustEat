<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"% import="java.util.ArrayList, com.mz.member.model.vo.Report"%>
<%
	ArrayList<Notice> list = (ArrayList<Report>)request.getAttribute("list");
%>
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
<script type="text/javascript" src="./js/jquery_3.5.1.js"></script>




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

				<thead>
					<tr>
						<th width="60">선택<input class="btn1" name="chk" type="checkbox" onclick="checkAll(this)"></th>
						<th width="75">글번호</th> <!--신고당한 글, 가게리뷰에서 가져오기-->
						<th width="75">신고자</th> <!--신고 한 사람, 멤버에서에서 가져오기-->
						<th width="100">신고대상자</th><!--신고당한 사람 가게리뷰에서 가져오기-->
						<th colspan="3" width="290">리뷰제목</th>
						<th width="180">신고내용</th><!--신고 한 사람이 작성한 신고 사유-->
						<th width="145">게시일</th>
					
					</tr>
				</thead>
				<tbody>
				<% if(list.isEmpty()) { %>
                <!--case1. 신고글이 없을 경우-->
                <tr>
                    <td colspan="8">존재하는 신고사항이 없습니다.</td>
                </tr>
				<% }else { %>
                <!--case2.신고글이 있을 경우-->
                	<% for(Report r : list){ %>
	                <tr>
	                	<td data-th="Supplier Code"><input type="checkbox" name="list"></td>
	                    <td><%=r.getReportNo()%></td>
	                    <td><%= r.getMemNickname()%></td>
	                    <td><%= r.getMemId()%></td>
	                    <td><%= r.getReportTitle()%></td>
	                    <td><%= r.getReportContent()%></td>
	                    <td><%= r.getReportDate()%></td>
	                   
	                </tr>
                	<% } %>
				<% } %>
				<tr>
					<td data-th="Supplier Code"><input type="checkbox" name="list"></td>
					<td data-th="Supplier Code">5</td>
					<td data-th="Supplier Name">김김이</td>
					<td data-th="Invoice Number">user001</td>
					<td data-th="Invoice Date" colspan="3">시금치치킨 안먹어보신분?</td>
					<td data-th="Due Date">광고글이에요</td>
					<td data-th="Due Date">2022-07-23</td>
		
				</tr>
				

				</tbody>
		  	</table>
		
			<div class="list01">
				<!-- <input class="btn1" type="button" id="check_all" value="전체선택" /> -->
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
    	$(function(){
    		$(".list-area>tbody>tr").click(function(){
    			const num = $(this).children().eq(0).text(); // 클릭했을때의 글번호
    			
    			// 요청할url?키=밸류&키=밸류... 
    			// 요청시전달값(키=밸류) => 쿼리스트링 
     			
    			// /web/detail.no?no=xx
    			location.href = '<%=contextPath%>/detail.rp?no=' + num;
    		})
    	})
    	
    </script>
	
	
	
	
	


	<!-- <script>
		jQuery(document).ready(function($){
			$("#check_all").click(function() {
				$("input[name=list]:checkbox").attr("checked", true);
			});



			$("#uncheck_all").click(function() {
				$("input[name=list]:checkbox").attr("checked", false);
			});
		});
		</script>
 -->




 <script type="text/javascript">
	let check = false;
	// function checkAll(){
	//     let chk = document.getElementsByName("chk[]");
	//     console.log(chk);
	//     if(check==false){
	//         check=true;
	//         for(let i=0; i<chk.length; i++){
	//             chk[i].checked=true;
	//         }
	//     }else{
	//         check=false;
	//         for(let i=0; i<chk.length; i++){
	//             chi[i].checked=false;
	//         }
	//     }
	// }

	function checkAll(checkAll){
		let checkboxes=document.getElementsByName("list");
		console.log(checkboxes);
		checkboxes.forEach((checkbox)=>{
			console.log(checkbox    );
			checkbox.checked=checkAll.checked;
		})
	}

</script>











</body>
</html>