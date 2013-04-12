<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Logged Out</title> </head>
<body>

<br/>
<% session.invalidate();%>
You are now logged out..
<br/>

<script type="text/javascript"> 
<!-- 
var obj = 'window.location.replace("index.jsp");'; 
setTimeout(obj,600); 
// --> 
</script>
</body>
</html>