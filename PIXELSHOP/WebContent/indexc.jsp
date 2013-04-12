<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="bean.utilisateur" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pixelshop</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slideshow.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/jquery.cycle.js"></script>
<script type="text/javascript" src="js/jquery.functions.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Comfortaa_400.font.js" type="text/javascript"></script>
<script type="text/javascript">
			Cufon.replace('h1', { fontFamily: 'Comfortaa' });
			Cufon.replace('h2', { fontFamily: 'Comfortaa' });
			Cufon.replace('h3', { fontFamily: 'Comfortaa' });
			Cufon.replace('h4', { fontFamily: 'Comfortaa' });
		</script>
<script type="text/javascript" src="assets/js/font-delicious.js"></script>
</head>
<body>
<div id="Layout">
  <!-- BEGIN HEADER -->
  <div id="Top">
    <div id="Logo">
      <h1><img src="C:\files/logo.png" width="130" height="100" longdesc="index.html" /></h1>
    </div>
    <!-- end div #Logo -->
    <div id="TopContent">
      <ul>
        <li class="cart"><a href="shopping-cart.html">Shopping Cart</a></li>
        <li class="cart-value"><span class="blue"><a href="#">6 item</a></span> | <span>$3000.00</span></li>
      </ul>
    </div>
    <!-- end div #TopContent -->
    <div id="Nav">
      <div class="NavBody">
        <ul>
          <li> <a href="index.jsp">Acceuil</a></li>
          <li> <a href="ProduitReflex">Produits </a></li>
          <li> <a href="#">Mon compTE</a></li>
          <li> <a href="inscription.jsp">S'inscrire</a></li>
          <li> <a href="#">Contact</a></li>
          <li class="search">
            <input type="image" class="action" src="images/search-action.jpg" />
            <input type="text" class="searchfeild" />
          </li>
        </ul>
      </div>
    </div>
    <!-- end div #Nav -->
  </div>
  <!-- end div #Top -->
  <!-- END HEADER -->
  <!-- BEGIN CONTENT -->
  <div id="Content">
    <div class="LeftSide">
      <div class="leftBox">
        <h3>Cat√©gories</h3>
        <div class="leftBoxBody">
          <ul class="cat-link">
            <li><a href="ProduitReflex">Reflex</a></li>
            <li><a href="Category.html">Compact</a></li>
            <li><a href="#">Objectifs</a></li>
            <li>Accessoires</li>
            <li>Nettoyage</li>
           
          </ul>
        </div>
      </div>
       <div class="leftBox">
        
         <form action="Logout.jsp">
        
         <p>User name: ${utilisateur.nomclient}</p>
<input type="submit" value="dÈconnexion">
</form>
      </div>
    </div>
    <!-- end div #LeftSide -->
    <div class="RightSide">
      <!-- slideshow start -->
      <div id="slideshow">
        <ul id="slides">
          <li style="position: absolute; top: 0px; left: 0px; display: list-item; z-index: 4;"><a href="#"><img src="js/images/her.jpg" alt="" width="693" height="256" /></a><span class="slide_caption"> <a href="#" class="title">Rockablepress.com</a> Proin ac nunc eu nunc condimentum accumsan. Phasellus odio justo</span></li>
          <li style="position: absolute; top: 0px; left: 0px; display: none; z-index: 3;"> <a href="#"> <img src="js/images/her.jpg" alt="" width="693" height="256" /></a><span class="slide_caption"> <a href="#" class="title">Rockablepress.com</a> Proin ac nunc eu nunc condimentum accumsan. Phasellus odio justo</span></li>
          <li style="position: absolute; top: 0px; left: 0px; display: none; z-index: 2;"> <a href="#"><img src="js/images/her.jpg" alt="" width="693" height="256" /></a><span class="slide_caption"> <a href="#" class="title">Graphic River</a> Proin ac nunc eu nunc condimentum accumsan. Phasellus odio justo</span></li>
          <li style="position: absolute; top: 0px; left: 0px; display: none; z-index: 1;"> <a href="#"> <img src="js/images/her.jpg" alt="" width="693" height="256" /></a><span class="slide_caption"> <a href="#" class="title">Envato&trade;</a> Proin ac nunc eu nunc condimentum accumsan. Phasellus odio justo</span></li>
        </ul>
        <div id="slideshow_violator" class="clearfix">
          <div style="display: block;" id="project_caption"></div>
          <div id="slide_navigation" class="clearfix"></div>
        </div>
      </div>
      <div class="bredCrum" style="margin-bottom:38px;">
        <h4>Last product</h4>
      </div>
      <!-- slideshow end -->
      <div class="catrow">
        <ul>
          <li class="new">
            <div class="catThum"><a href="product.html"><img src="images/OXO---Homepage_39.jpg" alt="" /></a>
              <div class="new"></div>
            </div>
            <div class="catDetail">
              <h4><a href="product.html">Product Name</a></h4>
              <p>1000$</p>
            </div>
          </li>
          <li>
            <div class="catThum"><a href="product.html"><img src="images/OXO---Homepage_39.jpg" alt="" /></a></div>
            <div class="catDetail">
              <h4><a href="product.html">Product Name</a></h4>
              <p>1000$</p>
            </div>
          </li>
          <li class="last">
            <div class="catThum"><a href="product.html"><img src="images/OXO---Homepage_39.jpg" alt="" /></a></div>
            <div class="catDetail">
              <h4><a href="product.html">Product Name</a></h4>
              <p>1000$</p>
            </div>
          </li>
        </ul>
        <div class="clr"></div>
      </div>
      <div class="catrow">
        <ul>
          <li class="new">
            <div class="catThum"><a href="product.html"><img src="images/OXO---Homepage_39.jpg" alt="" /></a>
              <div class="new"></div>
            </div>
            <div class="catDetail">
              <h4><a href="product.html">Product Name</a></h4>
              <p>1000$</p>
            </div>
          </li>
          <li>
            <div class="catThum"><a href="product.html"><img src="images/OXO---Homepage_39.jpg" alt="" /></a></div>
            <div class="catDetail">
              <h4><a href="product.html">Product Name</a></h4>
              <p>1000$</p>
            </div>
          </li>
          <li class="last">
            <div class="catThum"><a href="product.html"><img src="images/OXO---Homepage_39.jpg" alt="" /></a></div>
            <div class="catDetail">
              <h4><a href="product.html">Product Name</a></h4>
              <p>1000$</p>
            </div>
          </li>
        </ul>
        <div class="clr"></div>
      </div>
      <div class="paging">
        <div class="pagingDiv"><span class="label">Page <b class="blue">1</b> of 6</span><span class="back"><a href="#"><img src="images/back.gif" alt="" /></a></span><span class="next"><a href="#"><img src="images/next.gif" alt="" /></a></span></div>
        <div class="pagingInfo">Dispaying 1 to 6 (of 6 products)</div>
        <div class="clr"></div>
      </div>
    </div>
    <!-- end div #RightSide-->
    <div class="clr"></div>
    <!-- BEGIN FOOTER -->
    <div id="Footer">
      <div class="footerbody">
        <div class="footercontent"></div>
      </div>
    </div>
    <!-- END FOOTER -->
  </div>
  <!-- END CONTENT -->
  <div id="Footerimg"> </div>
</div>
<!-- end div #Layout -->
</body>
</html>
