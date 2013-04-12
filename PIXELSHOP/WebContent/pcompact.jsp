<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %> 
 <%@ page import="bean.Produit" %> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
      <h1><img src="images/files/logo.png" width="130" height="100" longdesc="index.jsp" /></h1>
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
                  <li><a href="ProduitCompact">Compact</a></li>
                  <li><a href="ProduitObjectif">Objectifs</a></li>
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
					<h4><a href="#" class="select"> Compact </a></h4> 
			  </div>
             	<div class="productDetial"></div>
<div class="clr"><table id="productTable">
                <TR style="color:navy">
<TD class="lightBlue"><center>Photo</center> </TD>
<TD class="lightBlue"><center>Description</center> </TD>
<TD class="lightBlue"><center>Prix </center></TD> 
<TD class="lightBlue"><center>Disponibilit�</center> </TD>
<TD class="lightBlue"><center></center> </TD>
</TR>
                 <% ArrayList<Produit> listeProduit= ( ArrayList)request.getAttribute("listeProduit");%>
    <% for(int i=0;i<listeProduit.size();i++)
   { 
    	
	Produit p=(Produit)listeProduit.get(i); 
    if(p.getCategorie()==2) {     
         
                char c='"';
                 String cn="<center>";
                 String cn1="</center>";
                
                  
                 
                  
                 
                	  out.println("<form action=");
                		out.println("#");out.println(" method=");out.println("post");
                	out.println("<tr>");	
                	out.println("<td class="+c+"white"+c+">");
                	out.println("<center><IMG");
                	out.println( "SRC=");
                	out.println("images/files/"+p.getPhoto()+" width="+c+"140"+c+" height="+c+"140"+c+"></center>");
                	//out.println("C://Users/op/workspace/j2eeTP/testproduit/files/"+rs.getString(1)+">");
                	out.println("</td>");
                	out.println("<td class="+c+"white"+c+">");
                	out.println("<span class=");
                	out.println(c+"smallText"+c);out.println(">");
                	out.println("<center>"+p.getLibelle()+"</center>");
                	out.println("</span>");
                	out.println(" <br>");
                	
                	
                	
                	out.println("<center>"+p.getDescription()+"</center>");
                	
                	out.println(" </td>");
                	out.println("<td class="+c+"white"+c+">");
                	out.println("<center>"+p.getPrix()+" DH</center>");
                	out.println(" </td>");
                	out.println("<td class="+c+"white"+c+">");
                	String d="0";
                	if(!d.equals(p.getQuantite()) ){
                		out.println("<span class=");
                    	out.println(c+"produitdispo"+c);out.println(">");
                		out.println("<center>disponible</center>");
                		out.println("</span>");
                	}
                	else {
                		out.println("<span class=");
                    	out.println(c+"produitnondispo"+c);out.println(">");
                		out.println("<center>non disponible</center>");
                		out.println("</span>");
                	}
                	out.println("<td class="+c+"white"+c+">");
                	out.println(" <input type=");
                	out.println(c+"submit"+c);
                	out.println(" value=");
                	out.println(c+"ajouter"+c);
                	//out.println(" </td>");
                	out.println(" </form>");
                	
                	out.println(" </td>");
                	out.println(" </tr>");
                	
                  }

   }   
                  
               %>
                </table></div>
                <div class="paging">
                  <div class="clr"></div> 
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
