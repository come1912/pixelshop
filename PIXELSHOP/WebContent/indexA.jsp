

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>



<!--META-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Page d'administrateur</title>

<!--STYLESHEETS-->
<link href="css/styleadmin.css" rel="stylesheet" type="text/css" />

<!--SCRIPTS-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<!--Slider-in icons-->
<script type="text/javascript">
$(document).ready(function() {
	$(".username").focus(function() {
		$(".user-icon").css("left","-48px");
	});
	$(".username").blur(function() {
		$(".user-icon").css("left","0px");
	});
	
	$(".password").focus(function() {
		$(".pass-icon").css("left","-48px");
	});
	$(".password").blur(function() {
		$(".pass-icon").css("left","0px");
	});
});
</script>

</head>
<body>

<!--WRAPPER-->
<div id="wrapper">

	<!--SLIDE-IN ICONS-->
    <div class="user-icon"></div>
    <div class="pass-icon"></div>
    <!--END SLIDE-IN ICONS-->

<!--LOGIN FORM-->
<form name="login-form" class="login-form" action="LoginAdmin" method="GET">

	<!--HEADER-->
    <div class="header">
    <!--TITLE-->
    <h1>Administrateur</h1><!--END TITLE-->
    <!--DESCRIPTION--><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	<!--USERNAME--><input name="uname" type="text" class="input username" value="login" onfocus="this.value=''" /><!--END USERNAME-->
    <!--PASSWORD--><input name="password" type="password" class="input password" value="Password" onfocus="this.value=''" /><!--END PASSWORD-->
    </div>
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <div align="center">
      <!--LOGIN BUTTON-->
      <input type="submit" name="submit" value="Login" class="button" />
        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
    </div>
    <!--END LOGIN BUTTON-->
    <!--REGISTER BUTTON--><!--END REGISTER BUTTON-->
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->

</body>
</html>