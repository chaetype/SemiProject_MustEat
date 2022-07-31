<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.mz.notice.model.vo.Tos"%>
<%
	ArrayList<Tos> list = (ArrayList<Tos>)request.getAttribute("list");
%>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>

<style>

	.wrap-tos {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container-tos {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.tos-table{
		width:100%;
	}
	
	.tos-enroll{
		margin-top:2%;	
		text-align:center;
	}
	
	@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');
	
	html, body{height: 100%}
	
	body{place-items: center;font-family: 'Manrope', sans-serif;background: red}
	
	.card{position: relative;display: flex;flex-direction: column;min-width: 0;padding: 20px;word-wrap: break-word;background-color: #fff;background-clip: border-box;border-radius: 6px;-moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1)}
	
	.card input{margin-top:10px}.btn-success{color: #fff;background-color: #ff5300;border-color: #ff5300}
	
	.btn-success:hover{color: #fff;background-color: #ff0000;border-color: #ff0000}
	
	.btn-success.focus, .btn-success:focus{box-shadow: 0 0 0 0.2rem rgb(255, 255, 255)}
	
	.btn-success:not(:disabled):not(.disabled):active, .show>.btn-success.dropdown-toggle{color: #fff;background-color: #ff0000;border-color: #ff0000}
	
	.form-control:focus{color: #495057;background-color: #fff;border-color: #ff5300;outline: 0;box-shadow: 0 0 0 1px rgb(255, 255, 255) !important}
		
</style>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-tos">
		
		<div class="container-tos">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:center;">이용약관</h1>
			
			<!-- 이용약관이 없을 경우 -->
			<% if(list.isEmpty()) { %>
			<table class="rwd-table tos-table">
		    <tbody>
			    <tr>
			      	<th></th>
			        <th>글번호</th>
			        <th>제목</th>
			        <th>등록일</th>
			        <th>수정일</th>
			        <th/>비고</th>
			    </tr>
			<tr>
				<td colspan="6">존재하는 이용약관이 없습니다.</td>
			</tr>		      			
			</table>
			<% }else { %>			
			<!-- 이용약관이 있을 경우 -->    
				<% for(Tos t : list) { %>  
				<table class="rwd-table tos-table">
			    <tbody>	
				    <tr>
				      	<th><input type="checkbox" id="" name="tosNum" value=""></th>
				        <th>글번호</th>
				        <th>제목</th>
				        <th>등록일</th>
				        <th>수정일</th>
				        <th/>비고</th>
				    </tr>		    
				    <tr>
				      	<td><input type="checkbox" id="" name="tosNum" value=""></td>
				        <td><%= t.getTosNo() %></td>
				        <td><%= t.getTosTitle() %></td>
				        <td><%= t.getEnrollDate() %></td>
				        <td><%= t.getModifyDate() %></td>
				        <td><%= t.getTosNote() %></td>
				     </tr>	
			     <% } %>
		     <% } %>	     
		    </tbody>
		  </table>
						
		</div>

		
		<div class="tos-enroll">
		
			<button type="button" class="btn1" id="tos-enroll-btn" data-toggle="modal" data-target="#myModal">등록하기</button>
			<button type="button" class="btn1" id="tos-modify-btn" >수정하기</button>
			<button type="button" class="btn1" id="tos-delete-btn" >삭제하기</button>

		</div>
		
		<form action="<%= contextPath %>/tosInsertList.no" id="tos-enroll-form" method="post">
				
		<!-- The Modal -->
		<div class="modal fade" id="myModal">
		    <div class="modal-dialog">
		      <div class="modal-content">
		      		        
		        <!-- Modal body -->
		        <div class="modal-body">
		          
			        <link href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/datedropper.css" rel="stylesheet">
					<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/datedropper.js"></script>
					
					<div class="container d-flex justify-content-center text-center">
					    <div class="card px-5 py-5">
					        <div class="row">
					        <h1 style="font-family: 'OTWelcomeRA';">이용약관 등록하기</h1>
					            <div class="col-md-6"> <input type="text" name="tosTitle" class="form-control" placeholder="이용약관 제목"> </div>
					            <div class="col-md-6"> <input type="text" name="tosEtc" class="form-control" placeholder="비고"> </div>
					        </div>
					        <div class="row mt-3">
					            <div class="col-md-12"> <textarea name="tosContent" rows="15" class="form-control" id="tos-content" style="width:100% !important; resize:none;" placeholder="이용약관 내용을 입력해주세요." ></textarea> </div>
					        </div> <button type="submit" value="이용약관내용" class="btn btn-primary mt-5" style="background:rgb(167, 112, 239) !important;">등록하기<i class="fa fa-long-arrow-right ml-2 mt-1"></i></button>
					    </div>
					</div>				          
		          
		        </div>
		        
		        <!-- Modal footer -->
		        <div class="modal-footer">
		          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        </div>
		        
		      </div>
		    </div>
		  </div>
		  
		  </form>
		
		

		
		
		
	</div>

</body>
</html>