<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.store.model.vo.*"%>
<%
	int storeNo = (int)request.getAttribute("storeNo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Must Eat</title>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">

<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
    
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<link rel="stylesheet" href="../resources/css/fontawesome-stars.css">
	<script type="text/javascript" src="../resources/js/jquery.barrating.min.js"></script>
    
    
    
    
    
    
    
    
<style>
    #enroll-form table{
        border:1px solid white;
        width: 950px;
    }
    #enroll-form input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    .outer{
        margin:auto;
        width:80%;
        text-align:center;
    }
    .star-container{
    	margin-left : 200px ;
    }
    #star {
  display: flex;
}

.star {
  font-size: 2rem;
  margin: 10px 0;
  cursor: pointer;
}

.star:not(.on) {
  color: #ccc;
}

.star.on {
  color: orange;
}
    
</style>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/table.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/searchForm.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">

</head>
<body>

	<%@ include file="../common/menubar22.jsp"%>
	
	<div class="outer">
        <br>
        <h2 align="center">식당 리뷰 작성하기</h2>
        <br>
        
		
        <form id="enroll-form" action="<%= contextPath %>/srinsert.st?no=<%=storeNo%>" method="post" enctype="multipart/form-data">
        <%-- <input type="hidden" name="no" value="<%=storeNo%>"> --%>
      
      
            <table align="center">
                <tr>
                    <th>제목</th>
                    <td><input type="review-title" name="title" required></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td> <textarea class="yui3-cssreset" id="summernote" name="reviewcontent"></textarea></td>
                </tr>

            </table>
            <br>
			 <!-- 별점선택 -->
			 <!-- <div class="star-container" id="star">
		 이 식당에 대한 당신의 별점은 ?<span class="star">★</span>
		  <span class="star">★</span>
		  <span class="star">★</span>
		  <span class="star">★</span>
		  <span class="star">★</span>
		</div>
      	<script>
      	(function () {
      	    var starEls = document.querySelectorAll('#star span.star');
      	    var rate = 0;

      	    loop(starEls, function (el, index) {
      	        el.addEventListener('click', function () {
      	            rating(index + 1);
      	        });
      	    });

      	    function loop(list, func) {
      	        Array.prototype.forEach.call(list, func);
      	    }

      	    function rating(score) {
      	        loop(starEls, function (el, index) {
      	            if (index < score) {
      	                el.classList.add('on');
      	            } else {
      	                el.classList.remove('on');
      	            }
      	        });

      	        rate = score;
      	        
      	      
      	    }
      	})(); -->
      	</script> 
	     
      	
            <div align="center">
                <button class="btn1" type="submit">작성하기</button>
                <button class="btn1" type="reset">취소하기</button>
            </div>
        </form>

        <br><br>


    </div>



<script>
                    $('#summernote').summernote({
                       spellCheck: true,
                       disableDragAndDrop: true,
                  codeviewFilter: false,
                  codeviewIframeFilter: true,
                  placeholder: '식당 리뷰 작성',
                  tabsize: 2,
                  height: 600,
                  toolbar: [
                     ['style', ['fontname', 'fontsize', 'bold', 'italic', 'underline', 'clear']],
                     ['color', ['color']],
                     ['para', ['ul', 'ol', 'paragraph']],
                     ['insert', ['link', 'picture', 'hr']],
                     ['view', ['fullscreen']]
                         ],
                            // 이미지 업로드하면 이벤트 발생시킴
                        onImageUpload: function(files, editor, webEitable){
                            // 이미지 개수대로 함수 sendFile 호출
                            for(var i=0; i<files.length; i++){
                                sendFile(files[i], editor, welEditable);
                            }
                        }
                        
                    });

                    function sendFile(file, editor, welEditable){
                        var imgUrl = 'resources/image/cy/attachment/'

                        // 파일 전송을 위한 form 생성
                        form_data = new FormData();
                        form_data.append("image", file);
                        $.ajax({
                            data: form_data,
                            type: "post",
                            url: "summernote_imageUpload.do",
                            dataType: "text",
                            cache: "false",
                            enctype: "multipart/form-data",
                            processData:"false",
                            processData: "false",
                            success: function(savename){
                                imgUrl = imgUrl + savename;
                                editor.insertImage(welEditable, imgUrl); // 에디터에 업로드된 이미지 삽입
                            },
                            error: function(){
                                alert("error");
                            }

                        })
                    }
                    // $(".note-editable").change( console.log( $(this).html() ) )
                    
                  </script>
</body>
</html>