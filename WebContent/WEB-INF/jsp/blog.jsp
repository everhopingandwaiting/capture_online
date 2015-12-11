<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
<title>Blog</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
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
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
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
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - August11, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_8">
        <h2>Blog</h2>
        <div>
      <c:forEach items="${listGoods}" var="goodsform" varStatus="status">
        <div class="blog">
          <img src="${goodsform.picture}" alt="" class="img_inner">
          <div class="text1 color1">
            <a href="#"> ${goodsform.name}</a></div>
          <p> ${goodsform.information}</p>
            ${goodsform.comment}
          <br>
          <a href="blogDetail?goodsId=${goodsform.id}" class="btn">more</a>
          <table>
          <tbody>
            <tr>
              <td><time datetime="${goodsform.date}">
                <span class="fa fa-calendar"></span>
                  ${goodsform.date}
              </time> </td>
              <td><a href="#"><div class="fa fa-user"></div> ${goodsform.name}</a></td>
              <td><a href="blogDetail?goodsId=${goodsform.id}"><span class="fa fa-link"></span> Permalink</a></td>
            </tr>
            <tr>
              <td><div class="fa fa-bookmark"></div> ${goodsform.category}  </td>
              <td colspan="2"><div class="fa fa-tag"></div> ${goodsform.tag}</td>
            </tr>
            <tr>
              <td><div class="fa fa-comments"></div> ${goodsform.comment}   </td>
              <td colspan="2"><div class="fa fa-eye"></div>${goodsform.view}
              <div class="fa fa-thumbs-up"></div>
              <div class="fa fa-thumbs-down"></div> </td>
            </tr>
          </tbody>
        </table>
        </div>
  </c:forEach>
          </div>
     <%--   <div class="blog">
          <img src="images/page4_img2.jpg" alt="" class="img_inner">
          <div class="text1 color1"><a href="#">Koquam nibh ante dertolinom sertowy munotoer</a></div>
          <p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.</p>
          Proin pharetra luctus diam, a scelerisque eros convallis accumsan. Maecenas vehicula egestas venenatis. Duis massa eliterto dertolo auctor non pellentesque vel, aliquet sit amet erat. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut veliter.
          <br>
          <a href="#" class="btn">more</a>
          <table>
          <tbody>
            <tr>
              <td><time datetime="2014-01-01">
                <span class="fa fa-calendar"></span>
                January 20, 2014
              </time> </td>
              <td><a href="#"><div class="fa fa-user"></div> Admin</a></td>
              <td><a href="#"><span class="fa fa-link"></span> Permalink</a></td>
            </tr>
            <tr>
              <td><div class="fa fa-bookmark"></div> Uncategorized  </td>
              <td colspan="2"><div class="fa fa-tag"></div> No tags</td>
            </tr>
            <tr>
              <td><div class="fa fa-comments"></div> No commentts   </td>
              <td colspan="2"><div class="fa fa-eye"></div>182
              <div class="fa fa-thumbs-up"></div>0
              <div class="fa fa-thumbs-down"></div>0</td>
            </tr>
          </tbody>
        </table>
        </div>--%>
      </div>
      <div class="grid_4">
        <h2>Categories</h2>
        <ul class="list-1">
          <li><span></span><a href="#"><div class="fa fa-chevron-right"></div>Waecenas vehicuas </a></li>
          <li><span></span><a href="#"><div class="fa fa-chevron-right"></div>Kaecenas vehicula egs </a></li>
          <li><span></span><a href="#"><div class="fa fa-chevron-right"></div>Daecenas vehicula egesta </a></li>
          <li><span></span><a href="#"><div class="fa fa-chevron-right"></div>Faecenas vehicula egestte </a></li>
          <li><span></span><a href="#"><div class="fa fa-chevron-right"></div>Faecenas vehicula egestso </a></li>
          <li><span></span><a href="#"><div class="fa fa-chevron-right"></div>Faecenas vehicula egestas </a></li>
        </ul>
      </div>
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
