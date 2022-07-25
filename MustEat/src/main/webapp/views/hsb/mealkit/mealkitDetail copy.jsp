<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<%@ include file="../common/menubar.jsp"%>
<!-- header 입니다 -->


      <div class="main">
        <section class="module bg-dark-60 shop-page-header" data-background="assets/images/shop/product-page-bg.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Shop Products</h2>
                <div class="module-subtitle font-serif">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</div>
              </div>
            </div>
          </div>
        </section>
        <section class="module-small">
          <div class="container">
       		
             <div class="col-sm-12 mb-sm-20" style="text-align:center; font-size:20px;">
             <c:if test="${cri.catesub=='outer' or cri.catesub=='jamper' or cri.catesub=='coat'or cri.catesub=='jacket'or cri.catesub=='padding'}">
             
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=jamper&sort=">JAMPER</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=coat&sort=">COAT</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=jacket&sort=">JACKET</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=padding&sort=">PADDING</a> 
             </c:if>
             
             <c:if test="${cri.catesub=='top' or cri.catesub=='long' or cri.catesub=='knit' or cri.catesub=='halftee'or cri.catesub=='shirts'or cri.catesub=='blank'}">
             
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=long&sort=">LONG</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=knit&sort=">KNIT</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=halftee&sort=">1/2 TEE</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=shirts&sort=">SHIRTS</a> 
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=blank&sort=">BLANK</a> 
             </c:if>
             
              <c:if test="${cri.catesub=='bottom' or cri.catesub=='denim' or cri.catesub=='halfpants' or cri.catesub=='jogger'or cri.catesub=='sult'}">
             
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=bottom&sort=">BOTTOM</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=denim&sort=">DENIM</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=halfpants&sort=">1/2PANTS</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=jogger'or&sort=">Jogger</a> 
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=sult&sort=">sult</a> 
             </c:if>
             
             <c:if test="${cri.catesub=='shoes' or cri.catesub=='sneakers' or cri.catesub=='boots' or cri.catesub=='walker' or cri.catesub=='derby' or cri.catesub=='sandal'}">
             
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=sneakers&sort=">SNEAKERS</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=boots&sort=">BOOTS</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=walker&sort=">WALKER</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=derby&sort=">DERBY</a> &nbsp;&nbsp;&nbsp;
             <a href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=sandal&sort=">SANDAL</a> 
             </c:if>
              </div>
 			
         </div>
  
        </section>
        <hr class="divider-w">
        <section class="module-small">
          <div class="container">
            <div class="row multi-columns-row">
            <form>
            <c:forEach items="${itemList}" var="itemList">
              <div class="col-sm-6 col-md-3 col-lg-3 mt-60 mb-40">
              
                <div class="shop-item">
                	<a href="/main/itemContent?item_no=${itemList.item_no}&page=${cri.page}&perPageNum=${cri.perPageNum}&catemain=${cri.catemain}&catesub=${cri.catesub}&sort=${cri.sort}">
                  <div class="shop-item-image"><img width="10%" src="/img/${itemList.item_imgmain}" alt="Accessories Pack"/>
                    <div class="shop-item-detail"><img src="/img/${itemList.item_imgsub}" alt="Accessories Pack"/></div>
                  </div>
                  <h4 class="shop-item-title font-alt">${itemList.item_name}</h4>
                  ₩ <fmt:formatNumber pattern="###,###,###" value="${itemList.item_price}"/>
                  </a>
                </div>
                
              </div>
              </c:forEach>
              </form>
   
            </div>
   
                 <div class="row">
              <div class="col-sm-12" style="text-align:center;">
     <div class="pagination font-alt">
  
    <c:if test="${pageMaker.prev}">
    <a href="/main/itemView${pageMaker.makeQuery(pageMaker.startPage - 1)}"><i class="fa fa-angle-left"></i></a>
    </c:if> 

    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    	<a class="active" href="/main/itemView${pageMaker.makeQuery(idx)}">${idx}</a>
    </c:forEach>

    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    	<a href="/main/itemView${pageMaker.makeQuery(pageMaker.endPage + 1)}"><i class="fa fa-angle-right"></i></a>
    </c:if> 

</div>
</div>
</div>
          </div>
        </section>



<!-- footer 입니다 -->

<%@include file="../include/footer.jsp"%>
<!-- footer 입니다 -->