<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.notice.model.vo.Notice, com.mz.common.model.vo.PageInfo"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]공지사항목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<style>
    .outer{
        background-color:white;
        width:80%;
        height:100%;    
        margin:auto;
    }
    table{text-align:center;}
    table th, table td{padding:1% 0;}
    table th{background-color:rgba(179, 119, 219, 0.63)}
    tbody tr:hover{
        background-color:rgba(228, 207, 243, 0.568);
        cursor:pointer;
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
    .table-wrap{
        border-top:3px solid black;
        padding-top:30px;
        width:90%;
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
	
	.focus {
		z-index: 2;
	    color: #fff !important;
	    background-color: rgb(167, 112, 239) !important;
	    border-color: rgb(167, 112, 239) !important;
	}
</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2><b>공지사항</b></h2>
        <br><br>

        <div class="table-wrap"></div>
        <table class="table-bordered" width="90%">
            <thead>
                <tr>
                    <th width="10%">
                        <input type="checkbox" name="check" id="all" onclick="checkAll(this)"> 전체 선택
                    </th>
                    <th width="6%">번호</th>
                    <th width="45%">제목</th>
                    <th width="15%">작성자</th>
                    <th width="15%">작성일자</th>
                    <th width="9%">조회수</th>
                </tr>
            </thead>
            <tbody>
            	<% for(int i=0; i<list.size(); i++){ %>
	                <tr>
	                    <td><input type="checkbox" name="check" id="chkbox<%=i%>" value="<%=list.get(i).getNoticeNo()%>"></td>
	                    <td class="noDetail"><%= list.get(i).getNoticeNo() %></td>
	                    <td class="noDetail"><%= list.get(i).getNoticeTitle() %></td>
	                    <td class="noDetail"><%= list.get(i).getNoticeWriter() %></td>
	                    <td class="noDetail"><%= list.get(i).getEnrollDate() %></td>
	                    <td class="noDetail"><%= list.get(i).getNoticeCount() %></td>
	                </tr>
	                <script>
		                $("tbody>tr>.noDetail").click(function(){
		                	location.href="<%=contextPath%>/adminNoticeDetail.no?cpage=<%=currentPage%>&no=" + $(this).siblings().eq(1).text();
		                })
	                </script>
                <% } %>
            </tbody>
        </table>
        <br><br>

        <div style="width:90%" align="right">
            <button type="button" class="btn1" onclick="location.href='<%=contextPath%>/adminNoticeEnrollForm.no'">공지 등록</button>
            <button type="button" class="btn1" onclick="deleteNo();">선택 삭제</button>
        </div>
        
        <script>
         	function deleteNo(){
         		confirm("선택한 게시글을 삭제하시겠습니까?");
         		
         		val delArr = []
            	if(con){
    	        	if($("tbody .check").attr("checked", true)){
    	        		delArr += $(this).val();
    	        	}
    	        	console.log(delArr);
            	}
         		
         	}
        </script>
        
        <br>
        <div class="wrapper-paging">
					    
		    <nav aria-label="Page navigation example">
				<ul class="pagination">
					<% if(currentPage != 1){ %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/adminNoticeList.no?cpage=<%=currentPage-1%>">&lt;</a></li>
				    <% } %>
				    
				    <% for(int i=startPage; i<=endPage; i++){ %>
				    	<% if(i == currentPage){ %>
				    		<li class="page-item"><a class="page-link focus" href="<%=contextPath%>/adminNoticeList.no?cpage=<%=i%>"><%= i %></a></li>
				    	<% }else{ %>
				    		<li class="page-item"><a class="page-link" href="<%=contextPath%>/adminNoticeList.no?cpage=<%=i%>"><%= i %></a></li>
				    	<% } %>
				    <% } %>
				    
				    <% if(currentPage != maxPage){ %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/adminNoticeList.no?cpage=<%=currentPage+1%>">&gt;</a></li>
				    <% } %>
			    </ul>
			</nav>					
		
		</div>
    </div>

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
           let checkboxes=document.getElementsByName("check");
           console.log(checkboxes);
           checkboxes.forEach((checkbox)=>{
              console.log(checkbox    );
              checkbox.checked=checkAll.checked;
           })
        }
        
        val delArr = []
        function deleteNo(){
        	alert("선택한 게시글을 삭제하시겠습니까?");
        	
        	/*if(alert("선택한 게시글을 삭제하시겠습니까?")){
	        	if($("tbody .check").attr("checked", true)){
	        		delArr += $(this).val();
	        	}
	        	console.log(delArr);*/
        	}
        }
     
     </script>

</body>
</html>