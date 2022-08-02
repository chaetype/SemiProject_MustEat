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

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="icon" type="image/png" sizes="32x32" href="../../favicon-32x32.png?">
<style>
	.outer{
		width:80%;
		margin:auto;
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
    color: rgb(173, 101, 221);
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
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%>
		
		<div class="outer">
			
				<div style="display:inline-block;vertical-align:top;">
					<img style="display:flex" width="300" height="300" src="<%= p.getImgPath() %>]">
					 
				</div>
				

				
			
				<div style="display:inline-block; margin-left: 50px;" >
					<h3><%= p.getProductName() %></h3>
					<br>
					<p><b>판매단위: </b><%= p.getSalesUnit() %></p>
					<p><b>중량/용량: </b><%= p.getCapacity() %></p>
					<p><b>배송구분: </b>일반배송/새벽배송</p>
                    <p><b>포장타입: </b><%= p.getPacking() %></p>
                    <p><b>알레르기정보: </b><%= p.getAllergy() %></p>
                    <p><b>유통기한: </b><%= p.getExpirationDate() %></p>
				</div>

					<div align="right">	
						<hr>
						<h4><%= p.getPrice() %>원</h4>
						<button class="btn1">바로구매</button>
						<button class="btn1">장바구니</button>
					</div>
					<hr>
		</div>		
			
		<div id="reply-area">
            <table border="1" align="center" class="rwd-table">
            
                <thead>
                    <tr>
                        <th>댓글작성</th>
                        
                        <% if(loginUser == null){ // 로그인이 안되어있을 경우 %>
	                        <td><textarea rows="3" cols="50" style="resize:none" readonly>로그인 후 이용가능한 서비스입니다.</textarea></td>
	                        <td width="100">
                                <div class="rating"> 
                                <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
                                <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> 
                                <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label>
                                <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label>
                                <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
                            </div>
                            </td>
	                        <td><button disabled>댓글등록</button></td>
                        <% }else{ // 로그인이 되어있을 경우 %>
	                        <td><textarea rows="3" cols="50" style="resize:none" id="replyContent"></textarea></td>
                            <td width="100">
                                <div class="rating"> 
                                <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
                                <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> 
                                <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label>
                                <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label>
                                <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
                            </div>
                            </td>
	                        <td><button onclick="insertReply();">댓글등록</button></td>
                            
                        <% } %>
                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
           
        </div>
			
        <script>
			$(function(){ // 현재 이페이지상에 모든 요소가 다 로딩되자마자 곧바로 실행 
				selectReplyList();
			
				// 1초주기마다 댓글 리스트 조회해오는 요청
				// => 다른 사람이 쓴 댓글을 실시간으로 볼 수 있음
				setInterval(selectReplyList, 1000);
			})
			
			// ajax로 댓글 등록용 function
			function insertReply(){
				$.ajax({
					url:"<%=contextPath%>/insert.rv",
					data:{
						content:$("#replyContent").val(),
						no:<%=p.getProductCode()%>
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
						for(let i=0; i<list.length; i++){
							value += "<tr>"
								   +	"<td>" + list[i].reviewWriter + "</td>"
								   +	"<td>" + list[i].prReviewContent + "</td>"
								   +	"<td>" + list[i].prReviewErollDate + "</td>"
								   + "</tr>";
						}
						
						$("#reply-area tbody").html(value);
						
					},error:function(){
						console.log("댓글목록 조회용 ajax 통신 실패");
					}
				})
				
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
