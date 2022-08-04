<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.notice.model.vo.Contact"%>
<%
	ArrayList<Contact> list = (ArrayList<Contact>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]문의내역</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/combine/npm/bootswatch@5.1.3/dist/lux/bootstrap.min.css,npm/bootswatch@5.1.3/dist/lux/bootstrap.min.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    .outer{
        background-color:white;
        width:70%;
        height:100%;    
        margin:auto;
    }
    .table-wrap{
        border-top:3px solid black;
        padding-top:30px;
    }
    table{
        text-align:center;
    }
    #standby{
        color:rgb(250, 60, 60);
    }
    #complete{
        color:rgb(66, 66, 253);
    }
    tbody th, tbody td{
        font-weight:bold;
    }
    h1{
        text-transform:none;
        letter-spacing:normal;
    }
</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2><b>사용자 문의 내역</b></h2>
        <br><br>

        <div class="table-wrap">
            <table class="table table-hover">
                <thead>
                <tr style="background:rgba(168, 108, 203, 0.518);">
                    <th style="font-size:medium; text-align:center;" scope="col">번호</th>
                    <th style="font-size:medium; text-align:center;" scope="col">유형</th>
                    <th style="font-size:medium; text-align:center;" scope="col">문의</th>
                    <th style="font-size:medium; text-align:center;" scope="col">작성자</th>
                    <th style="font-size:medium; text-align:center;" scope="col">상태</th>
                    <th style="font-size:medium; text-align:center;" scope="col">작성일</th>
                </tr>
                </thead>
                <tbody>
                	<% if(list == null) { %>
                		<tr class="contact-title">
                			<th colspan="6">문의 내역이 없습니다.</th>
                		</tr>
                	<% }else{ %>
	                	<% for(int i=0; i<list.size(); i++){ %>
		                    <tr class="contact-title" onclick="location.href='<%=contextPath%>/adminContactDetail.no?no=<%= list.get(i).getContactNo() %>'">
		                        <td><%= list.get(i).getContactNo() %></td>
		                        <td><%= list.get(i).getContactType() %></td>
		                        <td><%= list.get(i).getContactTitle() %></td>
                                <td><%= list.get(i).getContactWriter() %></td>
		                        <% if(list.get(i).getContactStatus().equals("답변 대기")){ %>
		                        	<td id="standby"><%=list.get(i).getContactStatus()%></td>
		                        <% }else{ %>
		                        	<td id="complete"><%=list.get(i).getContactStatus()%></td>
		                        <% } %>
		                        <td><%= list.get(i).getEnrollDate() %></td>
		                    </tr>
	                    <% } %>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>