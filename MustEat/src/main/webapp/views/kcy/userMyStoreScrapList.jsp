<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.member.model.vo.StoreScrap"%>
<%
	ArrayList<StoreScrap> list = (ArrayList<StoreScrap>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<style>
    .wrap66{
        /* border: 1px solid black; */
        width : 80%;
		margin : auto;        
    }
    .outer{
        /* border: 1px solid blue; */
        margin: 10px;
    }
    .thumbnail66{
        /* border: 1px solid black; */
        display: inline-block;
        width: 100px;
        height: 100px;
        border-radius:50px;
        overflow:hidden;
        margin: 30px;
        
    }
    .info66{
        /* border: 1px solid black; */
        display: inline-block;
        margin-top: 50px;
    }
    .outer661{
        background-color: rgb(231, 216, 241);
        width: 100%;
        margin-top: 50px;
       
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>

    <div class="wrap66">


        <div class="outer661">
        

        	<% for (StoreScrap ss : list){ %>
            <div class="outer66">
            <input type="hidden" value="<%=ss.getScarpNo() %>">
                <div class="thumbnail66"> <img src="<%=contextPath%>/resources/image/mz.png" style="width: 100%; height:100%;"></div>
                <div class="info66">
                    <table>
                        <tr>
                            <td style="width: 200px;"><b><%=ss.getStoreName() %></b></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td style="color: white; "><%=ss.getStoreAddress() %></td>
                        </tr>
                        <tr>
                            <td>평점</td>
                            <td style="color: white; ">4</td>
                        </tr>
                    </table>
                    <br>
                    <button class="btn1" style="padding: 0.2em 1.2em;
                    margin: 0 0.1em 0.1em 0;">찜 취소</button>
                </div>
            </div>
            <br>
            <hr>
			<%} %>
           

        </div>





    </div>
</body>
</html>