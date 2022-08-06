<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.member.model.vo.Member"%>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MUST EAT</title>


<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">


<style>
    
    

    .tt{
        border: 1px solid black;
        /* margin-left: 250px;
        margin-top: 10px; */
        color: white;
        /* display: inline-block; */
    }

    .wrap77{
        text-align: center;
        width : 80%;
        margin : auto;
    }
    

    .search1{
        margin-top: 50px;
        width: 300px;
        margin-left:-20%;
        display: inline-block;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>
	<br><br><br><br>
    <div class="wrap77">
        
        <!-- 검색폼 시작 -->
		<form action="<%=contextPath%>/">
			<div class="wrap55">
				<div class="input-group mb-3">
					<input type="text" name="findKeyword" class="form-control input-text" placeholder="검색할 유저를 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2" >
					<div class="input-group-append">
						<button class="btn btn-outline-warning btn-lg" type="submit"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
		</form>
	<!-- 검색폼 끝 -->
	
	
	
	
	
		<form action="<%= contextPath %>/insert.fo" method="post">
		<div>
        <table class="tt" style="width:100%; background-color: rgb(223, 196, 240);" >
            <% for(Member m : list){ %>
            <tr>
                <th width="50"><input type="hidden" name="fingMno" value="<%=m.getMemNo()%>"></th>
                <td width="70"><img src="<%=contextPath%><%=m.getMemImgPath() %>" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100"><%=m.getMemNickname() %></td>
                <td width="100"><%=m.getMemId() %></td>
                <td width="100">리뷰 갯수 <%=m.getCstreview() %></td>
                <th width="200"><button type="submit" class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>
			
			<%} %>
            

        </table>
        </div>
        </form>
    </div>
    
    
    
	
</body>
</html>