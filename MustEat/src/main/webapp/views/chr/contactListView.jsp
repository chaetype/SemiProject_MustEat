<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.notice.model.vo.Contact"%>
<%
	ArrayList<Contact> list = (ArrayList<Contact>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역</title>
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
    .table-act{
        display:none;
        text-align:left;
        background-color:rgba(202, 183, 219, 0.479);
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
    .table-act p{
        padding-left:20px;
    }
    h1{
        text-transform:none;
        letter-spacing:normal;
    }
    
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br><br>
        <h2><b>1 : 1 문의 내역</b></h2>
        <br><br>

        <div class="table-wrap">
            <table class="table table-hover">
                <thead>
                <tr style="background:rgba(168, 108, 203, 0.518);">
                    <th style="font-size:medium; text-align:center;" scope="col">번호</th>
                    <th style="font-size:medium; text-align:center;" scope="col">문의</th>
                    <th style="font-size:medium; text-align:center;" scope="col">상태</th>
                    <th style="font-size:medium; text-align:center;" scope="col">작성일</th>
                </tr>
                </thead>
                <tbody>
                	<% if(list == null) { %>
                		<tr class="contact-title">
                			<th colspan="4">문의 내역이 없습니다.</th>
                		</tr>
                	<% }else{ %>
	                	<% for(int i=0; i<list.size(); i++){ %>
		                    <tr class="contact-title" style="cursor:pointer">
		                        <td><%= list.size() - i %></td>
		                        <td>[<%= list.get(i).getContactType() %>] <%= list.get(i).getContactTitle() %></td>
		                        <% if(list.get(i).getContactStatus().equals("답변 대기")){ %>
		                        	<td id="standby"><%=list.get(i).getContactStatus()%></td>
		                        <% }else{ %>
		                        	<td id="complete"><%=list.get(i).getContactStatus()%></td>
		                        <% } %>
		                        <td><%= list.get(i).getEnrollDate() %></td>
		                    </tr>
		                    <% if(list.get(i).getAnswer() != null){ %>
			                    <tr class="table-act">
			                        <td colspan="4">
			                        	<p>
			                        		<br><%= list.get(i).getAnswer() %> <br><br>
			                        		<%= list.get(i).getAnswerDate() %>
			                        	</p>
			                        </td>
			                    </tr>
		                    <% }else{ %>
		                    	<tr class="table-act">
		                    		<td colspan="4" style="display:none">
		                    			<p>잠시만 기다려주십시오.</p>
		                    		</td>
		                    	</tr>
		                    <% } %>
	                    <% } %>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        $(function(){
          $(".contact-title").click(function(){
            const $content = $(this).next();
            if($content.css("display") == "none"){
              $(this).siblings(".table-act").slideUp();
  
              $content.slideDown();
            }else{
              $content.slideUp();
            }
          })
        })
      </script>

</body>
</html>