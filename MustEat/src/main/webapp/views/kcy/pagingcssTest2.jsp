<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(http://weloveiconfonts.com/api/?family=entypo);

@import url(https://fonts.googleapis.com/css?family=Roboto:300);



.pagination-container {
	margin-top: 1em;
	padding-top: 2em;
	border-top: 1px solid #d7dadb;
	text-align: center;
}

.pagination-item {
	list-style-type: none;
	display: inline-block;
	border-right: 1px solid #d7dadb;

	transform: scale(1) rotate(19deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(-20deg);
}

	.pagination-item:hover,
	.pagination-item.is-active {
		background-color: rgb(231, 216, 241);
		border-right: 1px solid #fff;
	}

.pagination-item.first-number {
  border-left: 1px solid #d7dadb;
}

.pagination-link {
	padding: 1.1em 1.6em;
	display: inline-block;
	text-decoration: none;
	color: rgb(167, 112, 239);

	transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(20deg) skewY(0deg);
}

.pagination-item--wide {
	list-style-type: none;
	display: inline-block;
}

.pagination-item--wide.first {
	margin: 0 1em 0 0;
}

.pagination-item--wide.last {
	margin: 0 0 0 1em;
}

.pagination-link--wide {
	text-decoration: none;
	color: #8b969c;
	padding: 1.1em 1.6em;
}

.pagination-link--wide:hover {
	color: rgb(167, 112, 239);
}

.pagination-link--wide.first:before,
.pagination-link--wide.last:after {
  font-family: 'entypo';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;

  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.pagination-link--wide.first::before {
	content: "\E765";
	margin-right: 0.5em;
}

.pagination-link--wide.last::after {
	content: "\E766";
	margin-left: 0.5em;
}
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="pagination-container wow zoomIn mar-b-1x" data-wow-duration="0.5s">

      <ul class="pagination">
        <li class="pagination-item--wide first"> <a class="pagination-link--wide first" href="#">Previous</a> </li>
        <li class="pagination-item first-number"> <a class="pagination-link" href="#">1</a> </li>
        <li class="pagination-item"> <a class="pagination-link" href="#">2</a> </li>
        <li class="pagination-item is-active"> <a class="pagination-link" href="#">3</a> </li>
        <li class="pagination-item"> <a class="pagination-link" href="#">4</a> </li>
        <li class="pagination-item"> <a class="pagination-link" href="#">5</a> </li>
        <li class="pagination-item--wide last"> <a class="pagination-link--wide last" href="#">Next</a> </li>
      </ul>
    
    </div>
    
      <!-- <script>
const c = document.querySelector('.container')
const indexs = Array.from(document.querySelectorAll('.index'))
let cur = -1
indexs.forEach((index, i) => {
  index.addEventListener('click', (e) => {
    // clear
    c.className = 'container'
    void c.offsetWidth; // Reflow
    c.classList.add('open')
    c.classList.add(`i${i + 1}`)
    if (cur > i) {
      c.classList.add('flip')
    }
    cur = i
  })
})

      </script> -->
</body>
</html>