<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]리뷰관리</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/table.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
    
    
    <style>
    	.rwd-table{
        width: 80%;
		margin: auto;
    }

    h3{
        margin-left: 20% ;
        color: rgb(167, 112, 239);
    }
    
    .list01{
    margin-left : 10%
    }
    
    .a222{
    	float:right;
    	color:red;
    	font-size:10px;
    	cursor:pointer;
    }
    
    .a222:hover{
    	background-color: rgb(231, 216, 241);
    	color: red;
    }
    </style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>
	
	
	
	<div>
        <br><br>
        <hr>
        <h1 style="font-family: 'OTWelcomeRA';">(밀키트 리뷰페이지에 첨부시 이 줄 삭제)(전체 댓글 관리 페이지)</h1>
        <br>
		
		  <div id="reply-area">
            <table border="1" align="center" class="rwd-table">
                
                <tbody>
                	<tr>
                    	<td class="reviewDelete">댓글 삭제</td>
                        <th>댓글작성</th>
                        <td><textarea rows="3" cols="50" style="resize:none"></textarea></td>
                        <td><button class="btn1">댓글등록</button></td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>김밥</td>
                        <td>지난번에 여기 가봤는데 정말 맛있었어요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>젤리아이스크림</td>
                        <td>포장하면 양이 더 많습니다 추천해요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>젤리아이스크림</td>
                        <td>포장하면 양이 더 많습니다 추천해요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>악성유저</td>
                        <td>돈주고 왜먹냐 해먹으면 되는걸<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>캡슐커피 매니아</td>
                        <td>재방문 하고싶습니다 맜있어요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-24</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>노티드 도넛</td>
                        <td>위생상태는 그리 좋은 것 같지않아요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-23</td>
                    </tr>
                    <tr>
                    	<td class="reviewDelete"><input type="checkbox" name="check"></td>
                        <td>젤리아이스크림</td>
                        <td>포장하면 양이 더 많습니다 추천해요<a herf="" class="a222">신고하기</a></td>
                        <td>2022-07-25</td>
                    </tr>
                </tbody>
            </table>
        </div>
			<div class="list01">
		        <button class="btn1" id="btn2" onclick="chkClick();">전체선택</button>
		        <input type="checkbox" id="checkAll" name="checkAll" onclick="checkAll(this)" style="display:none">
		        <button class="btn1" onclick="deleteNo();">선택삭제</button>
	        </div>
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
        		
        		location.href="<%=contextPath%>/deleteNotice.no?cpage=<%=currentPage%>&delNo=" + str;
        	}
        }
    </script>
	
</body>
</html>