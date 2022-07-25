<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    @import url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap");
* {
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
/* .wrap999 {
  display: grid;
  height: 100%;
  place-items: center;
  text-align: center;
  background: white;
  
  
} */
.container {
  background: rgb(231, 216, 241);
  padding: 25px;
  border-radius: 3px;
  box-shadow: -3px -3px 7px #ffffff73, 3px 3px 5px rgba(94, 104, 121, 0.288);
  width: 550px;
  text-align: center;
}
.pagination {
  display: flex;
  list-style: none;
  /* width: 250px; */
}
.pagination li {
  flex: 1;
  margin: 0px 5px;
  background: rgb(231, 216, 241);
  border-radius: 3px;
  box-shadow: -3px -3px 7px #ffffff73, 3px 3px 5px rgba(94, 104, 121, 0.288);
}
.pagination li a {
  font-size: 18px;
  text-decoration: none;
  color: #4d3252;
  height: 38px;
  width: 38px;
  display: block;
  line-height: 45px;
  
}
.pagination li:first-child a {
  width: 100px;
}
.pagination li:last-child a {
  width: 100px;
}
.pagination li.active {
  box-shadow: inset -3px -3px 7px #ffffff73,
    inset 3px 3px 5px rgba(94, 104, 121, 0.288);
}
.pagination li.active a {
  font-size: 17px;
  color: #6f6cde;
}
.pagination li:first-child {
  margin: 0 15px 0 0;
}
.pagination li:last-child {
  margin: 0 0 0 15px;
}

</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <div class="wrap999">
        <div class="container">
            <ul class="pagination">
            <li><a href="#">Previous</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">Next</a></li>
            </ul>
        </div>
    </div>
      <script>

$("li").click(function () {
  $(this).addClass("active").siblings().removeClass("active");
});

      </script>
</body>
</html>