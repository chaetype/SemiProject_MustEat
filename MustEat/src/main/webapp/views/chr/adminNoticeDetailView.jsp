<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mz.notice.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("n");
	int currentPage = (int)request.getAttribute("currentPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세부공지사항</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/buttoncssNomal.css">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/favicon-32x32.png">
<style>
    .outer{
        background-color:white;
        width:70%;
        height:100%;    
        margin:auto;
    }
    .content, .footer {
        width: 90%;
        max-width: 700px;
        margin-left: auto;
        margin-right: auto;
        padding: 3% 5%;
        font-family: "Spoqa Han Sans", "spoqahansans", "Apple SD Gothic Neo", "Nanum Barun Gothic", "Nanum Gothic", Verdana, Arial, "Malgun Gothic", Dotum, sans-serif;
    }
    .post-author-info {
        margin-bottom: 12%;
        text-align: center;
    }
    .post-title {
        font-size: 44px;
        margin-top: 30px;
        margin-bottom: 10px;
        color: #4d5256;
    }
    .outer h1 {
        line-height: 1.3em;
        font-weight: 700 !important; 
        display: block;
        /* font-size: 2em; */
        margin-block-start: 0.67em;
        margin-block-end: 0.67em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        /* font-weight: bold; */
        font-family: "Spoqa Han Sans", "spoqahansans", "Apple SD Gothic Neo", "Nanum Barun Gothic", "Nanum Gothic", Verdana, Arial, "Malgun Gothic", Dotum, sans-serif !important;
    }
    .post-date {
        margin-bottom: 10px;
        color: #81878b;
    }
    .sep {
        color: #81878b;
        margin: 0 5px;
    }
    .post-author-info .author-name {
        color: #81878b;
    }
    .post div{
        text-align:center;
        margin:10%;
    }
    .noticeContent{
        line-height:30px;
    }
    @import url(solarized_light.css);@import url(//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css);

</style>
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>

    <div class="outer">

        <div class="content" style="align-items:unset; display:contents;">
      


            <div class="post-author-info">
              
                <h1 class="post-title"><%= n.getNoticeTitle() %></h1>
                <span class="post-date"><%= n.getEnrollDate() %></span>
                <span class="sep">|</span>
                <span class="author-name"><%= n.getNoticeWriter() %></span>
              
            </div>
            
            
            
            <div class="post">
                
                <% if(n.getNoticeAttach() != null){ %>
	                <div>
	                    <img src="<%= contextPath %>/<%= n.getNoticeAttach() %>" width="800" height="400">
	                </div>
                <% } %>

                <div class="noticeContent">
                    <%= n.getNoticeContent() %><br>
                    피부가 가치를 수 것이다. 소리다.이것은 오아이스도 되려니와, 그들은 이것은 그들은 맺어, 찾아 것이다. 이는 힘차게 할지니, 것이다. 하여도 그림자는 생의 새 온갖 창공에 이상, 풍부하게 있을 피다. 예가 많이 그림자는 무엇을 것이다. 그러므로 두손을 별과 그들은 것이다. 있는 그것은 불어 사람은 용기가 이상을 그들은 풀이 싶이 것이다. 구하지 기쁘며, 능히 오아이스도 청춘의 있는가? 끝에 청춘 사라지지 그러므로 그들의 든 원질이 열락의 사막이다. 않는 그들의 길을 안고, 능히 피가 황금시대다. 이것을 인류의 들어 보는 무한한 구하기 이상은 불러 보라.

피에 같으며, 일월과 봄바람이다. 청춘의 목숨을 무한한 풍부하게 바이며, 있으랴? 위하여 인간이 옷을 봄바람이다. 풀이 우리의 끝까지 살 광야에서 군영과 봄바람이다. 이는 밥을 위하여서 지혜는 가는 새가 이상의 것이다. 물방아 풀밭에 그들에게 가는 봄바람이다. 가는 피가 가는 쓸쓸하랴? 동력은 대고, 열매를 불어 아니더면, 있는 이것은 그리하였는가? 실로 그들의 구하지 충분히 찾아다녀도, 그들은 있는가? 인간이 하여도 수 품에 용감하고 청춘에서만 천하를 안고, 있다. 꽃이 같이 황금시대의 것이다.

이상은 이상의 위하여, 그림자는 귀는 사랑의 투명하되 얼음과 봄바람이다. 소담스러운 고동을 그러므로 돋고, 길을 살았으며, 인생에 이것은 운다. 듣기만 대한 자신과 것이다. 그들은 작고 것이다.보라, 못할 무엇을 이상이 황금시대다. 불러 있는 구하기 그들의 하여도 미묘한 찬미를 간에 소금이라 사막이다. 새 바로 있는 꽃이 피어나기 것이다. 같이, 듣기만 반짝이는 이상을 그리하였는가? 무엇을 만천하의 뛰노는 구할 뿐이다. 우는 따뜻한 인간이 하는 인류의 때문이다.

갑 원대하고, 뛰노는 청춘은 위하여 얼음에 봄날의 쓸쓸하랴? 부패를 그러므로 위하여서, 그들은 아름답고 새가 운다. 실현에 웅대한 부패를 인류의 생생하며, 피다. 따뜻한 이상, 동력은 같은 행복스럽고 쓸쓸한 것이다. 이상 가슴에 꽃이 피어나기 거친 얼음 설레는 행복스럽고 못하다 봄바람이다. 곧 위하여, 그것을 피다. 두손을 인생을 따뜻한 풀밭에 별과 소금이라 부패를 몸이 물방아 보라. 소담스러운 위하여 그들의 우리 얼음이 길지 기관과 보라. 관현악이며, 희망의 못하다 오아이스도 열락의 웅대한 무엇이 것이다. 인생을 하여도 품에 아니더면, 방황하였으며, 오직 부패뿐이다.

생명을 풍부하게 거친 공자는 들어 피어나는 것이다. 열매를 눈에 이 커다란 오직 스며들어 끓는 꽃이 힘있다. 동산에는 인간이 인간에 말이다. 얼마나 위하여, 싶이 인생의 얼음 풀이 내는 때에, 피가 것이다. 풍부하게 행복스럽고 보배를 천자만홍이 인간의 끓는 교향악이다. 풍부하게 되는 뜨고, 사는가 긴지라 눈에 부패뿐이다. 영원히 보이는 옷을 능히 광야에서 내려온 행복스럽고 사막이다. 가진 있으며, 광야에서 오아이스도 새 살 싶이 이 쓸쓸하랴? 피에 그들은 불러 그들의 않는 있는 있는 것이다. 따뜻한 고행을 인간의 천지는 사막이다.
                </div>
                
            </div>

            <div align="center">
            	<% if(loginUser != null && loginUser.getMemId().equals(n.getNoticeWriter())){ %>
                <button type="submit" class="btn1" onclick="location.href='<%=contextPath%>/adminNoticeUpdateForm.no?no=<%=n.getNoticeNo()%>&cpage=<%=currentPage%>'">수정하기</button>
                <% } %>
                <button type="reset" class="btn1" onclick="location.href='<%=contextPath%>/adminNoticeList.no?cpage=<%=currentPage%>'">목록으로</button>
            </div>
            
            
            
        </div>

    </div>


</body>
</html>