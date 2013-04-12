package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOFactory;
import dao.UtilisateurDao;

import bean.utilisateur;

/**
 * Servlet implementation class ServletProduitModel
 */
@WebServlet("/AdUtilisateurs")
public class AdUtilisateurs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAOFactory df;
	UtilisateurDao ud;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdUtilisateurs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	     ArrayList<utilisateur> listeutilisateur=new ArrayList<utilisateur>();
	 
	       df=DAOFactory.getInstance();
	       ud=df.getUtilisateurDao();
	       try {
			listeutilisateur= ud.getAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	            request.setAttribute("listeutilisateur", listeutilisateur);
	            
	            RequestDispatcher dis=request.getRequestDispatcher("utilisateur.jsp");
	                             dis.forward(request, response);
	        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request,response);
	}

}
