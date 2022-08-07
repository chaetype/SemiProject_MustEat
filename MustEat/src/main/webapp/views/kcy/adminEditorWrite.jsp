<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.store.model.vo.*"%>
    
<%
	Editor e = new Editor();
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
  <%@ include file="../common/menubar22.jsp"%>
  
  <div class=wrap88>
  
   <form method="post" action="<%=contextPath%>/ctinsert.st" enctype="multipart/form-data">
   
   <table align="center">
                
                <tr>
                    <th>대표이미지</th>
                    <td colspan="3" align="center">
                        <img id="titleImg" width="250" height="120" onclick="chooseFile(1);">
                    </td>
                </tr>
                
            </table>

            <div id="file-area" style="display:none"><input type="hidden" id="hidden" name="profile" value="<%=e.getEditorAttach()%>">
             <input type="file" name="file1" onchange="loadImg(this, 1);">
            </div>

            <script>
                function chooseFile(num){
                    $("input[name=file" + num + "]").click();
                }

                function loadImg(inputFile, num){
         

                    if(inputFile.files.length == 1){ 

                       
                        const reader = new FileReader();

                       
                        reader.readAsDataURL(inputFile.files[0]);

                        
                        reader.onload = function(e){
                            
                            switch(num){
                                case 1: $("#titleImg").attr("src", e.target.result); break;
                           
                            }
                        }

                    }else{ // 파일취소됐을경우 => 미리보기된것도 사라지게 
                        switch(num){
                            case 1: $("#titleImg").attr("src", null); break;
                           
                        }
                    }

                }
            </script>
  
            <textarea class="yui3-cssreset" id="summernote" name="editcontent"></textarea>
        
        	<button class="btn1" type="submit">작성완료</button>
   </form>
    
    
   <script>
                    $('#summernote').summernote({
                       spellCheck: true,
                       disableDragAndDrop: true,
                  codeviewFilter: false,
                  codeviewIframeFilter: true,
                  placeholder: '에디터글 작성',
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
    
    </div>
  </body>
</html>