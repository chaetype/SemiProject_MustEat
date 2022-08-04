<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]문의내역</title>
<style>
    .outer{
        background-color:white;
        width:80%;
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
        color:red;
    }
    #complete{
        color:blue;
    }
    tbody th, tbody td{
        font-weight:bold;
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
                    <th style="font-size:medium; text-align:center;" scope="col">문의</th>
                    <th style="font-size:medium; text-align:center;" scope="col">작성자</th>
                    <th style="font-size:medium; text-align:center;" scope="col">상태</th>
                    <th style="font-size:medium; text-align:center;" scope="col">작성일</th>
                </tr>
                </thead>
                <tbody>
                	<% if(list == null) { %>
                		<tr class="contact-title">
                			<th colspan="5">문의 내역이 없습니다.</th>
                		</tr>
                	<% }else{ %>
	                	<% for(int i=0; i<list.size(); i++){ %>
		                    <tr class="contact-title">
		                        <td><%= list.size() - i %></td>
		                        <td>[<%= list.get(i).getContactType() %>] <%= list.get(i).getContactTitle() %></td>
                                <td>작성자</td>
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