<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %> 
 <%@ page import="bean.Produit" %> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
                <TR>
<TD><center>Photo</center> </TD>
<TD><center>Description</center> </TD>
<TD><center>Prix </center></TD> 
<TD><center>Disponibilit�</center> </TD>

</TR>
                 <% ArrayList<Produit> listeProduit= ( ArrayList)request.getAttribute("listeProduit");%>
    <% for(int i=0;i<listeProduit.size();i++)
   { 
    	
	Produit p=(Produit)listeProduit.get(i); 
        
     
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
                	
                	//out.println(" </td>");
                	out.println(" </form>");
                	
                	out.println(" </td>");
                	out.println(" </tr>");
                	
                  }
   
                  
                  
               %>
                </table>
</body>
</html>