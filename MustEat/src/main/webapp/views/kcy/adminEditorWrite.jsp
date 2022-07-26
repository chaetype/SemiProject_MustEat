<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">

<link rel="icon" href="../../resources/image/favicon-32x32.png" type="image/x-icon">
<style>
    .wrap88{
        width: 70%;
        margin-left: 20%;
        margin-top: 20px;
        text-align: center;
    }

    .btn1{
        width: 300px;
    }
</style>

</head>
<body>
    <!-- 에디터 글 조회에서 관리자만 글쓰기 버튼 활성화 시켜서 들어오기 -->
    <%@ include file="../common/menubar22.jsp"%>
    
    <div class="wrap88">
        <form method="post">
            <textarea class="yui3-cssreset" id="summernote" name="editordata"></textarea>
        </form>

        <button class="btn1">작성완료</button>
    </div>
      
    <script>
        $(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 600,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
          
        });
    });

    </script>


    
</body>
</html>