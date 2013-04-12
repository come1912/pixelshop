package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.utilisateur;
import dao.DAOException;
import dao.DAOFactory;
import dao.UtilisateurDao;
import Forms.FormValidationException;
import Forms.InscriptionForm;
import Forms.trouverForm;
import Forms.InscriptionForm.*;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/trouver")
public class trouver extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public static final String CONF_DAO_FACTORY = "daofactory";
	    public static final String ATT_USER         = "client";
	    public static final String ATT_FORM         = "form";
	    public static final String VUE              = "/trouver.jsp";
	    
	    private UtilisateurDao     clientDao;
	 
	    public  trouver( String email ) throws DAOException {
	        /* R�cup�ration d'une instance de notre DAO Utilisateur */
	        this.clientDao = ( (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY ) ).getUtilisateurDao();
	    }
  
    public trouver() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 /* Affichage de la page trouver */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Pr�paration de l'objet formulaire */
        trouverForm form = new trouverForm( clientDao );
 
        /* Traitement de la requ�te et r�cup�ration du bean en r�sultant */
        utilisateur client = form.trouverClient( request );
 
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, client );
 
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	

}

