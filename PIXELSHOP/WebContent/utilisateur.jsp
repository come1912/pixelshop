<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %> 
 <%@ page import="bean.utilisateur" %> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       <table>  <TR>
<TD><center>id</center> </TD>
<TD><center>email</center> </TD>
<TD><center>nom </center></TD> 
<TD><center>prenom</center> </TD>
<TD><center>adresse</center> </TD>
<TD><center>date de naissance</center> </TD>
<TD><center>telephone</center> </TD>
<TD><center>ville</center> </TD>
<TD><center>cp</center> </TD>
<TD><center>date inscription</center> </TD>
</TR>
                 <% ArrayList<utilisateur> listeutilisateur= ( ArrayList)request.getAttribute("listeutilisateur");%>
    <% for(int i=0;i<listeutilisateur.size();i++)
   { 
    	
    	utilisateur u=(utilisateur)listeutilisateur.get(i); 

        
        
          
         
          
         
        	
        	out.println("<tr>");	
        	out.println("<td>");
        	
        	out.println(u.getId());
        	out.println("</td>");
out.println("<td>");
        	
        	out.println(u.getEmail());
        	out.println("</td>");
        	
out.println("<td>");
        	
        	out.println(u.getNomclient());
        	out.println("</td>");
        	
out.println("<td>");
        	
        	out.println(u.getPrenomclient());
        	out.println("</td>");
out.println("<td>");
        	
        	out.println(u.getAddresseclient());
        	out.println("</td>");
out.println("<td>");
        	
        	out.println(u.getDdnclient());
        	out.println("</td>");
out.println("<td>");
        	
        	out.println(u.getTelephoneclient());
        	out.println("</td>");
out.println("<td>");
        	
        	out.println(u.getVilleclient());
        	out.println("</td>");
        	
out.println("<td>");
        	
        	out.println(u.getCpclient());
        	out.println("</td>");
        	
out.println("<td>");
        	
        	out.println(u.getDateInscription());
        	out.println("</td>");
        	
        	
        	
   
        	
        
        	out.println(" </tr>");
        	
          
}
          
          
       %>
       </table>
</body>
</html>