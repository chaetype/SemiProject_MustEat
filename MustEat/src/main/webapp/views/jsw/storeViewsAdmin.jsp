<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당조회/수정</title>
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>

	.wrap-store-view {
		width:80%;
		height:100%;
		margin:auto;
	}
	
	.container {
		margin-top:5%;
		margin-bottom:5%;
	}	
	
	.table-div {
		margin-top:3%;
	}
	
	.store-search{
		margin-top:3%;		
	}

	.store-delete{
		margin-top:2%;	
	}

	body{
    	background-color: #eee;
	}

	.wrapper-paging{	
		margin-top:3%;
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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></link>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
</head>
<body>
	
	<%@ include file="../common/adminMenubar.jsp"%>

	<div class="wrap-store-view">
		
		<div class="container">
		
		<h1 style="font-family: 'OTWelcomeRA'; text-align:center;">식당 조회</h1>
	
		<hr noshade size = 1 style="background:black;">
		
		<div class="table-div">
			
				<table class="rwd-table" style="width:100%;">
				    <tbody>
				      <tr>
				        <th><input type="checkbox" id="storelist" name="storelist" value="storelist"></th>
				        <th>식당번호</th>
				        <th>식당명</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>대표메뉴</th>
						<th>등록일</th>
						<th>상세보기 및 수정</th>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
					  <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				      <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
					  <tr>
				        <td><input type="checkbox" id="storelist" name="storelist" value="storelist"></td>
				        <td>1</td>
				        <td>김밥천국</td>
						<td>xx시 xx구 xx동 xx</td>
						<td>xx-xxx-xxxx</td>
						<td>김밥</td>
						<td>xxxx-xx-xx</td>
						<td><button class="btn1"><strong>상세보기 및 수정</strong></button></td>
				      </tr>
				    </tbody>
		  		</table>
		  		
		  		<script type="text/javascript">
				   let check = false;
				   // function checkAll(){
				   //     let chk = document.getElementsByName("chk[]");
				   //     console.log(chk);
				   //     if(check==false){
				   //         check=true;
				   //         for(let i=0; i<chk.length; i++){
				   //             chk[i].checked=true;
				   //         }
				   //     }else{
				   //         check=false;
				   //         for(let i=0; i<chk.length; i++){
				   //             chi[i].checked=false;
				   //         }
				   //     }
				   // }
				
				   function checkAll(checkAll){
				      let checkboxes=document.getElementsByName("storelist");
				      console.log(checkboxes);
				      checkboxes.forEach((checkbox)=>{
				         console.log(checkbox    );
				         checkbox.checked=checkAll.checked;
				      })
				   }
				
				</script>
		  		

				  <div>
			
					<div class="wrapper-paging">
					    
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">&lt;</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">&gt;</a></li>
							</ul>
						</nav>					
					
					</div>
				
				</div>	
	
				<div style="width:100%; margin-top:3%;">
					<div style="display:inline-block;">
						<table style="display:inline-block;">
							<tr>
								<td>
									<div class="point-category">
										<select class="point-select" name="" id="" style="height: 48px; border-color:lightgrey; font-family: Verdana, Geneva, Arial, sans-serif !important;">
											<option value="">식당명</option>
											<option value="">식당주소</option>
											<option value="">전화번호</option>
										</select>
									</div>
								</td>
								<td>
									<div class="input-group mb-3" style="margin-top:6.5%;">
										<input type="text" class="form-control input-text" placeholder="검색내용입력해주세요." width="100%;" aria-label="Recipient's username" aria-describedby="basic-addon2" style="font-family: Verdana, Geneva, Arial, sans-serif !important;">
										<div class="input-group-append">
											<button class="btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>	

				<div class="store-delete">

					<button class="btn1"><strong>삭제하기</strong></button>

				</div>
			
			
		</div>
		
	</div>
	
	
</body>
</html>