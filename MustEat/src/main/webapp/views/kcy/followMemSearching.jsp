<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
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
        <div class="search1">
            <div class="input-group mb-3">
                <input type="text" class="form-control input-text" placeholder="검색할 내용을 입력해주세요" width="70%" aria-label="Recipient's username" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
                </div>
            </div>
        </div>

        <table class="tt" background = "<%=contextPath%>/resources/image/cy/retrobg.jpg">
            
            <tr>
                <th width="50"> 15 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">가나다</td>
                <td width="100">user101</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 14 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">라마바</td>
                <td width="100">user030</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 13 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 12 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 11 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 10 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 9 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">감감이</td>
                <td width="100">user002</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th width="50"> 8 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">강강이</td>
                <td width="100">user003</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 7 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">겅겅이</td>
                <td width="100">user004</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 6 </td>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 5 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 4 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 3 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 2 </td>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

            <tr>
                <th> 1 </th>
                <td width="70"><img src="<%=contextPath%>/resources/image/mz.png" style="width: 40px; height:40px; border-radius:50px;
                    overflow:hidden;"></td>
                <td width="100">김김이</td>
                <td width="100">user001</td>
                <td width="100">리뷰 20</td>
                <td width="150">팔로워 120</td>
                <th width="200"><button class="btn1" style="padding: 0.3em 1.2em;
                    margin: 0 0.1em 0.1em 0;">follow</button></th>
            </tr>

        </table>
    </div>
</body>
</html>