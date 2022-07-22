<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>Slick</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <script>
      $( document ).ready( function() {
        $( '.slider' ).slick( {
          autoplay: true,
          autoplaySpeed: 1000,
          slidesToShow: 5,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                slidesToShow: 3,
                arrows: false,
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 1,
                arrows: false,
              }
            }
          ]
        } );
      } );
    </script>
    <style>
      img {
        max-width: 100%;
        height: auto;
      }
      .slider {
        width: 80%;
        margin: 0px auto;
      }
      .slider .slick-slide {
        margin: 10px;
      }
      .slick-prev:before, .slick-next:before {
        color: #444444;
      }
    </style>
  </head>
  <body>
    <div class="slider">
      <div><img src="" alt=""></div>
      <div><img src="<%=contextPath%>/resources/image/cy/rank.jpg" alt=""></div>
      <div><img src="<%=contextPath%>/resources/image/cy/rank.jpg" alt=""></div>
      <div><img src="images/slider-1080x1080-04.png" alt=""></div>
      <div><img src="images/slider-1080x1080-05.png" alt=""></div>
      <div><img src="images/slider-1080x1080-06.png" alt=""></div>
    </div>
  </body>
</html>