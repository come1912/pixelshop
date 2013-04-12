<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>pixelshop</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Comfortaa_400.font.js" type="text/javascript"></script>


<script type="text/javascript">
			Cufon.replace('h1', { fontFamily: 'Comfortaa' });
			Cufon.replace('h2', { fontFamily: 'Comfortaa' });
			Cufon.replace('h3', { fontFamily: 'Comfortaa' });
			Cufon.replace('h4', { fontFamily: 'Comfortaa' });


		</script></head>

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
    </div>      <!-- end div #TopContent -->

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
    </div><!-- end div #Nav -->

  </div>      <!-- end div #Top -->
      <!-- END HEADER -->
      
      <!-- BEGIN CONTENT -->
        <div id="Content">
          <div class="LeftSide">
            <div class="leftBox">
              <h3>Cat�gories</h3>
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
            <div class="cards">
              <ul>
                <li><a href="#"><img src="images/paypal.gif" alt="" /></a></li>
                <li><a href="#"><img src="images/card-visia.gif" alt="" /></a></li>
                <li><a href="#"><img src="images/card-master.gif" alt="" /></a></li>
              </ul>
            </div>
          </div>
          <!-- end div #LeftSide -->
      <div class="RightSide">     

				<div class="bredCrum">
					<h4><a href="#" class="select"> Inscription </a></h4> 
			  </div>
             	<div class="productDetial"></div>
             	<div class="paging">
                  <div class="clr"><form method="post" action="Inscription">
	<fieldset>
	<table width="569" height="449" border="0">
	  <tr>
	    <td width="268"><div align="center"><strong>email:*</strong></div></td>
	    <td width="285"><strong>
	      <input type="text" id="emailc" name="emailc" />
	     </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>Mot de passe:*</strong></div></td>
	    <td><strong>
	      <input type="text" id="mdpc" name="mdpc" />
	     </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>Nom:*</strong></div></td>
	    <td><strong>
	      <input type="text" id="nomc" name="nomc" />
	     </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>
	       </strong></div>	      <strong>
	      <label for="prenomclient">
	        <div align="center">Pr&eacute;nom:*</div>
	      </label>
	     </strong></td>
	    <td><strong>
	      <input type="text" id="prenomc" name="prenomc" />
	     </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>Adresse:*</strong></div></td>
	    <td><strong>
	      <input type="text" id="adressec" name="adressec" />
	     </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>Date de naissance:*</strong></div></td>
	    <td><strong>
	      <input type="text" id="dnc" name="dnc" />
	     </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>
	       </strong></div>	      <strong>
	      <label for="telephoneclient2">
	        <div align="center">T&eacute;lephone:*</div>
	      </label>
	     </strong></td>
	    <td><strong>
	      <input type="text" id="telephonec" name="telephonec" />
	    </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>
	      </strong></div>	      <strong>
	      <label for="ville2">
	        <div align="center">Ville:*</div>
	      </label>
        </strong></td>
	    <td><strong>
	      <input type="text" id="villec" name="villec"/>
	    </strong></td>
	    </tr>
	  <tr>
	    <td><div align="center"><strong>Code postal:*</strong></div></td>
	    <td><strong>
	      <input type="text" id="cpc" name="cpc" />
	    </strong></td>
	    </tr>
	  <tr>
	    <td><div align="right"><strong>
	      <input type="submit" value="Inscription" />
	     </strong></div></td>
	    <td>&nbsp;</td>
	    </tr>
	  </table>
	</fieldset>
</form></div> 
                </div>
          </div>    <!-- end div #RightSide-->

            <div class="clr"></div>     <!-- BEGIN FOOTER -->
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
