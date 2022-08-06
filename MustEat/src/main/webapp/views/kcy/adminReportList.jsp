<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.member.model.vo.Report, com.mz.common.model.vo.PageInfo" %>
<%
	ArrayList<Report> list = (ArrayList<Report>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MUST EAT : 신고관리</title>
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

	body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:4%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.page-link {
	    position: relative;
	    display: block;
	    color: #673AB7 !important;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #673AB7 !important;
	}
	
	
	.page-link:hover {
	    z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
	
	
	.page-link:focus {
		border-color: rgb(167, 112, 239) !important;
	    z-index: 3;
	    outline: 0;
	    box-shadow: none;
	}
</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap44">
	
		<h2 style="text-align:center">REPORT LIST</h2>
		
		  <table class="rwd-table" width="100%">

				<thead>
					<tr>
						<th width="60">선택<input class="btn1" name="chk" type="checkbox" onclick="checkAll(this)"></th>
						<th width="75">글번호</th> <!--신고당한 글, 가게리뷰에서 가져오기-->
						<th width="90">신고자</th> <!--신고 한 사람, 멤버에서에서 가져오기-->
						<th width="100">신고대상자</th><!--신고당한 사람 가게리뷰에서 가져오기-->
						<th width="280">리뷰제목</th>
						<th>신고내용</th><!--신고 한 사람이 작성한 신고 사유-->
						<th width="145">신고일</th>
					
					</tr>
				</thead>
				<tbody>
				<% if(list.isEmpty()) { %>
                <!--case1. 신고글이 없을 경우-->
                <tr>
                    <td colspan="7">존재하는 신고사항이 없습니다.</td>
                </tr>
				<% }else { %>
                <!--case2.신고글이 있을 경우-->
                <td colspan="7"></td>
                	<% for(Report r : list){ %>
	                <tr>
	                	<td data-th="Supplier Code"><input type="checkbox" class="chkbox" name="list"></td>
	                    <td><%=r.getReportNo()%></td>
	                    <td><%= r.getMemNickname()%></td>
	                    <td><%= r.getMemId()%></td>
	                    <td><%= r.getReportTitle()%></td>
	                    <td><%= r.getReportContent()%></td>
	                    <td><%= r.getReportDate()%></td>
	                   
	                </tr>
                	<% } %>
				<% } %>
				
				

				</tbody>
		  	</table>
		
			<div class="list01" style="float: left;">
				<!-- <input class="btn1" type="button" id="check_all" value="전체선택" /> -->
		        <button class="btn1" onclick="deleteNo();">선택삭제</button>
				
	        </div>
		
	</div>
	<br><br><br>
	<div class="wrapper-paging">
					    
		    <nav aria-label="Page navigation example">
				<ul class="pagination">
					<% if(currentPage != 1){ %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/list.rp?cpage=<%=currentPage-1%>">&lt;</a></li>
				    <% } %>
				    
				    <% for(int i=startPage; i<=endPage; i++){ %>
				    	<% if(i == currentPage){ %>
				    		<li class="page-item"><a class="page-link focus" href="<%=contextPath%>/list.rp?cpage=<%=i%>"><%= i %></a></li>
				    	<% }else{ %>
				    		<li class="page-item"><a class="page-link" href="<%=contextPath%>/list.rp?cpage=<%=i%>"><%= i %></a></li>
				    	<% } %>
				    <% } %>
				    
				    <% if(currentPage != maxPage){ %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/list.rp?cpage=<%=currentPage+1%>">&gt;</a></li>
				    <% } %>
			    </ul>
			</nav>					
		
		</div>
 

    
	

	
	<script>
		
	
	
    	
    	
    	
    	$(".rwd-table>tbody>tr").click(function(){
		                	location.href="<%=contextPath%>/detail.st?no=" + $(this).siblings().eq(1).text();
		                })
    	
    	
    	
    	
    </script> 
	
	
	





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