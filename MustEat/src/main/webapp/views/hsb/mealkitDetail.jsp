<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.product.model.vo.Product"%>
<%
	Product p = (Product)request.getAttribute("p");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<link rel="icon" href="../resources/image/favicon-32x32.png" type="image/x-icon">
<style>
	.outer{
		width:80%;
		margin:auto;
		margin-left: 15%;
	}
    .rating {
 display: flex;
        margin-top: -10px;
    flex-direction: row-reverse;
    margin-left: -4px;
        float: left;
}

.rating>input {
    display: none
}

.rating>label {
        position: relative;
    width: 19px;
    font-size: 25px;
    color:gold;
    cursor: pointer;
}

.rating>label::before {
    content: "\2605";
    position: absolute;
    opacity: 0
}

.rating>label:hover:before,
.rating>label:hover~label:before {
    opacity: 1 !important
}

.rating>input:checked~label:before {
    opacity: 1
}

.rating:hover>input:checked~label:before {
    opacity: 0.4
}

div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
		
		<div class="outer">
			
				<div style="display:inline-block;vertical-align:top;">
					<img style="display:flex" width="300" height="300" src="<%= contextPath %>/<%= p.getImgPath() %>">
					 
				</div>
				

				
				<form action="<%=contextPath%>/insertCart.do" style="display:inline-block; margin-left: 50px;" id="orderMealkit" method="post">
				<div style="display:inline-block; margin-left: 50px; width:400px;">
					
					<h3><%= p.getProductName() %></h3>
					<br>
					
						<input type="hidden" name="productCode" value="<%=p.getProductCode()%>">
						<input type="hidden" name="productName" value="<%=p.getProductName()%>">
						<input type="hidden" name="seller" value="<%=p.getSeller()%>">
						<input type="hidden" name="selPhone" value="<%=p.getSellerPhone()%>">
						<input type="hidden" name="enrollDate" value="<%=p.getEnrollDate()%>">
						<input type="hidden" name="price" value="<%=p.getPrice()%>">
						<b>판매단위: </b><%= p.getSalesUnit() %>
						<br><br>
						<b>용량: </b><%= p.getCapacity() %>
						<br><br>
						<b>배송구분: </b>일반배송/새벽배송
						<br><br>
						<b>포장타입: </b><%= p.getPacking() %>
						<br><br>
						<b>알레르기정보: </b><%= p.getAllergy() %>
						<br><br>
						<b>유통기한: </b><%= p.getExpirationDate() %>
						<br>
					
				</div>

					<div align="right">	
						<hr>
						<h4><%= p.getPrice() %>원</h4>
						
						<p class="cartStock">
							<span>구입 수량</span>
							<button type="button" class="plus">+</button>
							<input type="number" name="amount" class="numBox" min="1" max="1000" value="1" readonly="readonly" style="width:50px">
							<button type="button" class="minus">-</button>
					    </p>
							<% if(loginUser == null){ // 로그인이 안되어있을 경우 %>
								<button type="button" class="btn1" onclick="log1();">바로구매</button>
								<button type="button" class="btn1" onclick="log2();">장바구니</button>
								<a href="<%=contextPath%>/mealList.bo?cpage=1"><button type="button" class="btn1">목록가기</button></a>
							<% }else{ // 로그인이 되어있을 경우 %>
								<button type="button" class="btn1" onclick="direct();">바로구매</button>
								<button type="submit" onclick="cartMove();" class="btn1">장바구니</button>
								<a href="<%=contextPath%>/mealList.bo?cpage=1"><button type="button" class="btn1">목록가기</button></a>
							<% } %>
					</div>
				</form>
					<hr>
		        </div>		

				<script>				
					function log1(){
						alert("로그인 후 이용가능합니다.");
					}

					function log2(){
						alert("로그인 후 이용가능합니다.");
					}
					
					function direct(){
						$("#orderMealkit").attr("action", "<%=request.getContextPath()%>/direct.do");
						$("#orderMealkit").submit();
					}
					
					function cartMove(){
						if(confirm("장바구니로 이동하시겠습니까?")){
							//loction.href = "<%=contextPath%>/orderStatusList.pro?status=basket";
							window.open("<%=contextPath%>/orderStatusList.pro?status=basket");
						}
							
						
					}
					
					

				</script>
			
		<div id="reply-area">
            <table border="1" align="center" class="rwd-table">
            
                <thead>
                    <tr>
                    	<% if(loginUser != null && loginUser.getMemGrade().equals("관리자")){ %>
                    		<th>댓글삭제</th>
                    	<% } %>
                    	
                        <th>댓글작성</th>
                        
                        <% if(loginUser == null){ // 로그인이 안되어있을 경우 %>
	                        <td><textarea rows="3" cols="50" style="resize:none" readonly>로그인 후 이용가능한 서비스입니다.</textarea></td>
	                        <td width="100">
                                <div class="rating"> 
                                <input type="radio" class="rate" name="rate" value="5" id="5"><label for="5">☆</label>
                                <input type="radio" class="rate" name="rate" value="4" id="4"><label for="4">☆</label> 
                                <input type="radio" class="rate" name="rate" value="3" id="3"><label for="3">☆</label>
                                <input type="radio" class="rate" name="rate" value="2" id="2"><label for="2">☆</label>
                                <input type="radio" class="rate" name="rate" value="1" id="1"><label for="1">☆</label>
                            </div>
                            </td>
	                        <td><button disabled>댓글등록</button></td>
							<div align="center"><a href="<%=contextPath%>/login1.me"><button class="btn1">로그인하러가기</button></a></div>
                        <% }else if(loginUser.getMemGrade().equals("관리자")){ // 관리자로 로그인이 되어있을 경우 %>
	                        <td><textarea rows="3" cols="50" style="resize:none" id="replyContent"></textarea></td>
                            <td width="100">
                                <div class="rating"> 
                                <input type="radio" class="rate" name="rate" value="5" id="5"><label for="5">☆</label>
                                <input type="radio" class="rate" name="rate" value="4" id="4"><label for="4">☆</label> 
                                <input type="radio" class="rate" name="rate" value="3" id="3"><label for="3">☆</label>
                                <input type="radio" class="rate" name="rate" value="2" id="2"><label for="2">☆</label>
                                <input type="radio" class="rate" name="rate" value="1" id="1"><label for="1">☆</label>
                            </div>
                            </td>
	                        <td><button onclick="insertReply();">댓글등록</button></td>
                            
                        <% }else{ // 사용자로 로그인이 되어있을 경우 %>
	                        <td><textarea rows="3" cols="50" style="resize:none" id="replyContent"></textarea></td>
                            <td width="100">
                                <div class="rating"> 
                                <input type="radio" class="rate" name="rate" value="5" id="5"><label for="5">☆</label>
                                <input type="radio" class="rate" name="rate" value="4" id="4"><label for="4">☆</label> 
                                <input type="radio" class="rate" name="rate" value="3" id="3"><label for="3">☆</label>
                                <input type="radio" class="rate" name="rate" value="2" id="2"><label for="2">☆</label>
                                <input type="radio" class="rate" name="rate" value="1" id="1"><label for="1">☆</label>
                            </div>
                            </td>
	                        <td><button onclick="insertReply();">댓글등록</button></td>
                            
                        <% } %>
                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
           </table>
        </div>
        <div class="list01">
        	<% if(loginUser != null && loginUser.getMemGrade().equals("관리자")){ %>
		        <button class="btn1" id="btn2" onclick="chkClick();">전체선택</button>
		        <input type="checkbox" id="checkAll" name="checkAll" onclick="checkAll(this)" style="display:none">
		        <button class="btn1" onclick="deleteNo();">선택삭제</button>
            <% } %>
        </div>
			
		<script>
			$(".plus").click(function(){
			 var num = $(".numBox").val();
			 var plusNum = Number(num) + 1;
			 
			 if(plusNum >= 1000) {
			  $(".numBox").val(num);
			 } else {
			  $(".numBox").val(plusNum);          
			 }
			});
			
			$(".minus").click(function(){
			 var num = $(".numBox").val();
			 var minusNum = Number(num) - 1;
			 
			 if(minusNum <= 0) {
			  $(".numBox").val(num);
			 } else {
			  $(".numBox").val(minusNum);          
			 }
			});
		   </script>

		<% 
			String memGrade = "";
			if(loginUser != null){
				memGrade = loginUser.getMemGrade();
			}
		%>

        <script>
			$(function(){ // 현재 이페이지상에 모든 요소가 다 로딩되자마자 곧바로 실행 
				selectReplyList();
			
				// 1초주기마다 댓글 리스트 조회해오는 요청
				// => 다른 사람이 쓴 댓글을 실시간으로 볼 수 있음
				//setInterval(selectReplyList, 1000);
			})
			
			// ajax로 댓글 등록용 function
			function insertReply(){
				$.ajax({
					url:"<%=contextPath%>/insert.rv",
					data:{
						content:$("#replyContent").val(),
						no:<%=p.getProductCode()%>,
						rate:$("input[name=rate]:checked").val()
			
					},
					type:"post",
					success:function(result){
						
						if(result > 0){ // 댓글작성 성공
							// =>내가 작성한 댓글이 보여지기 위해 갱신된 댓글 리스트 조회
							selectReplyList();
							$("#replyContent").val(""); // textarea 초기화
						}
						
					},error:function(){
						console.log("댓글 작성용 ajax 통신 실패");
					}
				})
			}
		
			// ajax로 현재 게시글에 딸려있는 댓글 목록 조회용 function
			function selectReplyList(){
				
				$.ajax({
					url:"<%=contextPath%>/select.rv",
					data:{no:<%=p.getProductCode()%>},
					success:function(list){
						
						console.log(list); // [{한댓글}, {한댓글}, {한댓글}]
						
						let value = "";
						if('<%= memGrade %>' == "관리자"){
							for(let i=0; i<list.length; i++){
								value += "<tr>"
									   +	"<td class='reviewDelete'>"
									   +		"<input type='checkbox' name='check' class='chkbox' value='" + list[i].reviewNo + "'>"
									   +	"</td>"
									   +	"<td>" + list[i].reviewWriter + "</td>"
									   +	"<td>" + list[i].prReviewContent + "</td>"
									   +	"<td>☆ x " + list[i].prReviewRate + "</td>"
									   + "</tr>";
							}
						}else{
							for(let i=0; i<list.length; i++){
								value += "<tr>"
									   +	"<td>" + list[i].reviewWriter + "</td>"
									   +	"<td>" + list[i].prReviewContent + "</td>"
									   +	"<td>☆ x " + list[i].prReviewRate + "</td>"
									   + "</tr>";
							}
						}
						
						$("#reply-area tbody").html(value);
						
					},error:function(){
						console.log("댓글목록 조회용 ajax 통신 실패");
					}
				})
				
			}
			
			function chkClick(){
	        	$("#checkAll").click();
	        }
	        
	        
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
	        	if($("#checkAll").checked){
	        		$(this).attr("checked", false);
	        	}else{
	        		$(this).attr("checked", true);
	        	}
	           let checkboxes=document.getElementsByName("check");
	           //console.log(checkboxes);
	           checkboxes.forEach((checkbox)=>{
	              //console.log(checkbox    );
	              checkbox.checked=checkAll.checked;
	           });
	        }
	        
	        function deleteNo(){
	        	if(confirm("선택한 댓글을 삭제하시겠습니까?")){
	        		let delArr = [];
	        		
	        		$("tbody .chkbox").each(function(){
	        			if($(this).prop("checked")){
	        				delArr.push($(this).val());
	        			}
	        		});
	        		
		        	console.log(delArr.toString());
	        		
	        		const str = delArr.toString();
	        		
	        		$.ajax({
	        			url:"<%=contextPath%>/adminDelete.rv",
	        			data:{delStr:str},
	        			success:function(result){
	        				if(result > 0){ 
	        					
								selectReplyList();
								
							}
	        			},
	        			error:function(){
	        				console.log("댓글목록 조회용 ajax 통신 실패");
	        			}
	        		})
	        		
	        		
	        	}
	        }
		</script>
          <br><br><br>
  
	</div>
	
	<script>
        const $container = document.querySelector('.wrap55');
        const $inputs = [...$container.children];
        const $agreeBtn = document.querySelector('#btn2');

        $agreeBtn.onclick = () => {
        if ($inputs.filter(input => input.checked).length === 3) {
            $inputs.forEach(input => { input.checked = false; });
        } else {
            $inputs.forEach(input => {
            input.checked = true;
            });
        }
        };
    </script>

			
		
		
	 
</div>




		 


		
		
		
</body>
</html>
