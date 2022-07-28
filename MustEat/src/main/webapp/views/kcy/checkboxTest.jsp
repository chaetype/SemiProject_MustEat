<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <input type="checkbox" id="chk_all">전체선택이
<input type="checkbox" class="del-chk">
<input type="checkbox" class="del-chk">
<input type="checkbox" class="del-chk">

<script>
    $(document).on('click','.del-chk',function(){ if($('input[class=del-chk]:checked').length==$('.del-chk').length){         $('#chk_all').prop('checked',true);     }else{        $('#chk_all').prop('checked',false);     } });
</script>

</body>
</html>