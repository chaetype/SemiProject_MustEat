<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.member.model.vo.Follow "%>
<%
	ArrayList<Follow> list = (ArrayList<Follow>)request.getAttribute("followlist");
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
        color : white;
        
 	
    }
    .outer661{
        background-color: rgb(231, 216, 241);
        width: 100%;
        margin-top: 50px;
        background-image: url("<%=request.getContextPath()%>/resources/image/cy/retrobg.jpg");
       
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>

    <div class="wrap66">


        <div class="outer661">
        

        	<% for (Follow f : list){ %>
            <div class="outer66">
            <input type="hidden" value="<%=f.getFollowNo() %>">
                <div class="thumbnail66"> <img src="<%=contextPath%>/resources/image/mz.png" style="width: 100%; height:100%;"></div>
                <div class="info66">
                    <table>
                        <tr>
                            <td style="width: 200px;"><b><%=f.getIngMemName() %></b></td>
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
                            <td>팔로워</td>
                            <td style="color: white; "><%=f.getFollowCount() %></td>
                        </tr>
                        <tr>
                            <td>식당리뷰</td>
                            <td style="color: white; "><%=f.getReviewCount() %></td>
                        </tr>
                         <tr>
                            <td>밀키트리뷰</td>
                            <td style="color: white; "><%=f.getProreviewCount() %></td>
                        </tr>
                    </table>
                    <br>
                    <a class="btn1" style="padding: 0.2em 1.2em;
                    margin: 0 0.1em 0.1em 0;" onclick="return unfollow(<%=f.getFollowNo()%>);">Unfollow</a>
                </div>
            </div>
            <br>
            <hr>
			<%} %>
           

        </div>


	<Script>
	function unfollow(followNo) {
		if(confirm("팔로우를 취소하시겠습니까?")) {
			
			$.ajax({
				url : "<%=contextPath%>/unfollow.fo",
				data : { no:followNo },
				success : function(result) {
					
					if(result == 1) {
						location.reload(); 
					} else {
						alert("팔로우 취소 실패");
					}
					console.log("ajax 성공");
					
				},
				error : function(result) {
					console.log("ajax 통신 실패");
				}
			});
			
		} else {
			return false;
		}
	}
	
	</Script>


    </div>
</body>
</html>