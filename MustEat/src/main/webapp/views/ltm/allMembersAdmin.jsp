<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.mz.common.model.vo.PageInfo, java.util.ArrayList, com.mz.member.model.vo.Member" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	int count = (int)request.getAttribute("count");
    int a = (int)request.getAttribute("a");
    String c = (String)request.getAttribute("c");
    String search = (String)request.getAttribute("search");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">

<!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
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
    .delete{
        border-radius: 8%; 
        background: rgb(167, 112, 239); 
        color: white; 
        font-family:'OTWelcomeRA'; 
        height: 40px; 
        width: 80px;
        font-weight: bold;
        font-size: large;
        border: none;
    }
    #select{
        text-align-last: center;
        text-align: center;
        -ms-text-align-last: center;
        -moz-text-align-last: center;
        padding: 2px;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
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
	
	<%@ include file="../common/adminMenubar.jsp" %>
	
    <div class="outer">

        <br><br>
        
        <h2 style="padding-left: 10%">전체 회원 조회</h2>

        <p align="center">--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
        <br>

        <div style="display: inline; padding-left: 11%">
            <select id="select" name="selectbox" onchange="chageSelect()" style="height: 40px; width: 120px; font-weight: bold;">
                <option id="x" value="no">회원번호</option>
                <option id="z" value="grade">회원등급</option>
                <option id="y" value="name">이름</option>
            </select>
        </div>

        <script>
            $(function(){
                if(<%=c.equals("no")%>){
                    $('#x').prop('selected',true);
                }else if(<%=c.equals("name")%>){
                    $('#y').prop('selected',true);
                }else{
                    $('#z').prop('selected',true);
                }
            });
        </script>

		&nbsp; &nbsp;
		
        <p style="display:inline-block; font-size: larger; font-size: x-large;">총 회원 : <%=count%> 명</p>

        <div style="display:inline; padding-left:55%">
            <button onclick="deleteNo();" class="btn1" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" >강제 탈퇴</button>
        </div>
        
        <br>

        <table class="rwd-table" width="80%">   
                
                <tbody>

                    <% if(list.isEmpty()){ %>
                    <!--case1. 게시글이 없을경우-->
                    <tr>
                        <td colspan="10">조회된 멤버가 없습니다.</td>
                    </tr>
                    
                    <%}else { %>
                    <!--case2. 게시글이 있을경우-->
                    <tr>
                        <th><input type="checkbox" name="check" onclick="selectAll(this)"></th>
                        <th>번호</th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>닉네임</th>
                        <th>회원 등급</th>
                        <th>휴대폰 번호</th>
                        <th>주소</th>
                        <th>이메일</th>
                    </tr>
                     
                    <% for(Member m : list){ %>
                        <tr id="detail">
		                    <th><input type="checkbox" class="chkbox" name="check"></th>
		                    <td><%= m.getMemNo() %></td>
		                    <td><%= m.getMemId() %></td>
		                    <td><%= m.getMemName() %></td>
                            <td><%= m.getMemNickname() %></td>
                            <% if(m.getMemGrade().equals("일반")){ %>
                                <td style="color:black"><%= m.getMemGrade() %></td>
                            <% }else if(m.getMemGrade().equals("관리자")){ %>
                                <td style="color:red"><%= m.getMemGrade() %></td>
                            <% }else {%>
                                <td style="color:blue"><%= m.getMemGrade() %></td>
                            <% } %>    
		                    <td><%= m.getMemPhone() %></td>
                            <% if(m.getAddress().equals("(null)")) {%>
                                <td></td>
                            <% }else{ %>
                                <td><%= m.getAddress() %><br><%= m.getAddressDetail() %></td>
                            <% } %>
		                    <td><%= m.getMemEmail() %></td>
		                </tr>
                     <%} %>
                <%} %>
                </tbody>
                
        </table>

        <script>
            // 선택한 체크박스 삭제
            // prev
            function deleteNo(){
                if(confirm("선택한 게시글을 삭제하시겠습니까?")){
                    let delArr = []
                    let tr = $('input[class="chkbox"]:checked')
                    $(tr).each(function(){
                       delArr.push( $(this).parent().next().text())
                    })
                    //console.log(delArr);
                    $.ajax({
                        url:"<%=request.getContextPath()%>//allMembersList2.bo",
                        traditional: true,
                        data:{delArr:delArr},
                        success:function(result){   
                            if(result=='NNN'){
                                location.href="<%=contextPath%>/allMembersList.bo?cpage=<%= currentPage %>&a=<%=a%>&c=<%=c%>&search=";
                            }else{
                                alert('bye');
                            }
                        },error:function(){
                            console.log("블랙리스트처리 중복체크용 ajax 통신 실패");
                        }
        		    });
                }
            }

        </script> 
        
        <!--페이징바 영역-->
        <div class="wrapper-paging">
					    
            <nav aria-label="Page navigation example">
                <ul class="pagination">
					<% if(currentPage != 1) { %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/allMembersList.bo?cpage=<%= currentPage-1 %>&a=<%=a%>&c=<%=c%>&search=<%=search%>">&lt;</a></li>
				    <% } %>
				    
				    <% for(int p=startPage; p<=endPage; p++) { %>
				    	
				    	<% if(p == currentPage) { %>
				    		<li class="page-item"><a class="page-link focus" href="<%=contextPath%>/allMembersList.bo?cpage=<%=p%>&a=<%=a%>&c=<%=c%>&search=<%=search%>"><%= p %></a></li>
				    	<% } else { %>
				    		<li class="page-item"><a class="page-link" href="<%=contextPath%>/allMembersList.bo?cpage=<%=p%>&a=<%=a%>&c=<%=c%>&search=<%=search%>"><%= p %></a></li>
				    	<% } %>
				    	
				    <% } %>
				    
				    <% if(currentPage != maxPage) { %>
				    	<li class="page-item"><a class="page-link" href="<%=contextPath%>/allMembersList.bo?cpage=<%=currentPage+1%>&a=<%=a%>&c=<%=c%>&search=<%=search%>">&gt;</a></li>
				    <% } %>
			    </ul>
            </nav>					
        
        </div> 
        
        <br>
        

        <!--검색바 영역-->
        <div align="center">
	        <div class="wrap55">
	            <div class="input-group mb-3" >
	              <input type="text" class="form-control input-text" id=search placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
	                <div class="input-group-append">
	                    <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search" onclick="search();">검색</i></button>
	                </div>
	            </div>
	            
	        </div>
        </div>

        
        <script>

            // 체크박스 전체 선택, 전체 해제 
            function selectAll(selectAll)  {
                const checkboxes = document.querySelectorAll('input[type="checkbox"]');

                checkboxes.forEach((checkbox) => {
                checkbox.checked = selectAll.checked
                })
            }

            // 셀렉트 박스 선택 
            $("select[name=selectbox]").change(function(){
                let val = $(this).val();

                switch(val) {
                    case 'no' : location.href="<%=contextPath%>/allMembersList.bo?cpage=<%=currentPage%>&a=1&c=no&search=<%=search%>";                    
                    break;
                    case 'name' : location.href="<%=contextPath%>/allMembersList.bo?cpage=<%=currentPage%>&a=2&c=name&search=<%=search%>";
                    break;
                    case 'grade' : location.href="<%=contextPath%>/allMembersList.bo?cpage=<%=currentPage%>&a=3&c=grade&search=<%=search%>";
                    break; 
			    }
	        });


            // 검색하는 기능
            function search(){
             
                location.href="<%=request.getContextPath()%>/allMembersList.bo?cpage=1&a=<%=a%>&c=<%=c%>&search="+$('#search').val();
            }
            

            // 회원 상세정보로 가는 길
            
            $(function(){
                $("#detail").click(function(){
                    const num = $(this).children.eq(0).text(); // 클릭했을때의 글번호
                    
                    // 요청할url?키=밸류&키=밸류... 
                    // 요청시전달값(키=밸류) => 쿼리스트링 
                    
                    // /web/detail.no?no=xx
                    location.href = '<%=contextPath%>/detail.no?no=' + num;
    		    })
    	    })
        </script>

    </div>
</body>
</html>