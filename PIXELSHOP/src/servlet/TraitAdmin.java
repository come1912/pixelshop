package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Admin;

import Forms.traitAdminForm;

import dao.AdminDao;
import dao.DAOFactory;



/**
 * Servlet implementation class Inscription
 */
@WebServlet("/TraitAdmin")
public class TraitAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public static final String CONF_DAO_FACTORY = "daofactory";
	    public static final String ATT_USER         = "Admin";
	    public static final String ATT_FORM         = "form";
	    public static final String VUE              = "/acontrol.jsp";
	    
	    private AdminDao     adDao;
	 
	    public void init() throws ServletException {
	        /* R�cup�ration d'une instance de notre DAO Utilisateur */
	        this.adDao = ( (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY ) ).getAdminDao();

	    }
  
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 /* Affichage de la page d'inscription */
    //    this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Pr�paration de l'objet formulaire */
        traitAdminForm form = new traitAdminForm( adDao );
 
        /* Traitement de la requ�te et r�cup�ration du bean en r�sultant */
        Admin Admin = form.ChercherAdmin(request);
 
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, Admin );
 
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	

}
