<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">

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
        margin-left:20%;
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
    <div class="wrap77">
        
        <!-- 검색폼 시작 -->
		<form action="<%=contextPath%>/">
			<div class="test1">
			<select name="select11" style="height: 48px; margin: 10px;">
				<option value="1">아이디</option>
				<option value="2">닉네임</option>
				<option value="3" selected>전체</option>
			</select>
			</div>
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
	
	
        <table class="tt" background = "<%=contextPath%>/resources/image/cy/retrobg.jpg">
            
            <tr>
                <th width="50">  </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">가나다</td>
                <td width="100">user101</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            

        </table>
    </div>
</body>
</html>