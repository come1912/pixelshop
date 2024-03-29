<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="bean.Admin" %>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8"/>
	<title>Dashboard I Admin Panel</title>
	
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
	<!--[if lt IE 9]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
	<script src="js/hideshow.js" type="text/javascript"></script>
	<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
	<script type="text/javascript">
	$(document).ready(function() 
    	{ 
      	  $(".tablesorter").tablesorter(); 
   	 } 
	);
	$(document).ready(function() {

	//When page loads...
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content

		var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});

});
    </script>
    <script type="text/javascript">
    $(function(){
        $('.column').equalHeight();
    });
</script>

</head>


<body>

	<header id="header">
		<hgroup>
			<h1 class="site_title">Admin Pixelshop</h1>
			<h2 class="section_title">&nbsp;</h2><div class="btn_view_site"><a href="index.jsp">Voir le Site</a></div>
		</hgroup>
	</header> <!-- end of header bar -->
	
	<section id="secondary_bar">
		<div class="user">
			<p> ${Admin.login} </p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container"></div>
	</section><!-- end of secondary bar -->
	
	<aside id="sidebar" class="column">
		<form class="quick_search">
    </form>
		<hr/>
		<h3>ProduitS</h3>
		<ul class="toggle">
        			<li class="icn_tags"><a href="#">Afficher</a></li>
			<li class="icn_new_article"><a href="#">Ajouter</a></li>
			<li class="icn_edit_article"><a href="#">Modifier</a></li>
			
		</ul>
		
		<h3>Categories</h3>
		<ul class="toggle">
        <li class="icn_tags"><a href="#">Afficher</a></li>
			<li class="icn_new_article"><a href="#">Ajouter</a></li>
			<li class="icn_edit_article"><a href="#">Modifier</a></li>
			
		</ul>
        <h3>Utilisateurs</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">Ajouter</a></li>
			<li class="icn_view_users"><a href="#">Afficher</a></li>
			<li class="icn_profile"><a href="#">Modifier</a></li>
		</ul>
		<h3>Admin</h3>
		<ul class="toggle">
			<li class="icn_settings"><a href="#">Options</a></li>
			<li class="icn_security"><a href="#">Security</a></li>
			<li class="icn_jump_back"><a href="#">Logout</a></li>
		</ul>
		
		<footer>
			<hr />
			<p>&nbsp;</p>
</footer>
	</aside><!-- end of sidebar -->
	
	<section id="main" class="column">
	  <article class="module width_full">
		<header><h3>Stats</h3></header>
			<div class="module_content">
				<article class="stats_graph">
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
			  </article>
				<div class="clear"></div>
			</div>
		</article><!-- end of stats article --><!-- end of content manager article --><!-- end of messages article -->
		
	  <div class="clear"></div><!-- end of post new article --><!-- end of styles article -->
	  <div class="spacer"></div>
</section>


</body>

</html>