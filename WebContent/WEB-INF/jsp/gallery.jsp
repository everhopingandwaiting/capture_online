<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
<title>Gallery</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/touchTouch.css">

<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/touchTouch.jquery.js"></script>

<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({}); 
    $('.gallery .gall_item').touchTouch();
 }); 

</script>
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>

<body>
<!--==============================
              header
=================================-->
<jsp:include page="common/header.jsp"/>
<!--=====================
          Content
======================-->
<section id="content" class="gallery"><div class="ic">More Website Templates @ TemplateMonster.com - August11, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h2>Gallery</h2>
      </div>

<c:forEach items="${listGoods}" var="goodsform" varStatus="status">
      <div class="grid_4">
        <div class="box">
          <a href="${goodsform.picture}" class="gall_item"><img src="${goodsform.picture}" alt="">
              <span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Photo ${goodsform.name}</div>
            <p>${goodsform.information}</p>
            <a href="galleryDetail?goodsId=${goodsform.id}" class="btn">more</a>
          </div>
        </div>
      </div>
       </c:forEach>

    <%--  <div class="grid_4">
        <div class="box">
          <a href="images/big2.jpg" class="gall_item"><img src="images/page3_img2.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Aliquam nibh ante</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big3.jpg" class="gall_item"><img src="images/page3_img3.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Cliqum nibh anteter</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big4.jpg" class="gall_item"><img src="images/page3_img4.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Gyloiqum nibh ante</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big5.jpg" class="gall_item"><img src="images/page3_img5.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Hqum nibh antetem</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big6.jpg" class="gall_item"><img src="images/page3_img6.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Hoiqum nibh antetew</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big7.jpg" class="gall_item"><img src="images/page3_img7.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Cliqum nibh anteter</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big8.jpg" class="gall_item"><img src="images/page3_img8.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Moqum nibh untetek</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big9.jpg" class="gall_item"><img src="images/page3_img9.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">Dliqum nibh anteta</div>
            <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit</p>
            <a href="#" class="btn">more</a>
          </div>
        </div>
      </div>--%>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<jsp:include page="common/footer.jsp"/>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
