package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Categorie;

import dao.CategorieDAO;
import dao.DAOFactory;
import Forms.CategorieForm;

/**
 * Servlet implementation class AdCategorie
 */
@WebServlet("/AdCategorie")
public class AdCategorie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String ATT_USER         = "client";
    public static final String ATT_FORM         = "form";
    public static final String VUE              = "/categorie.jsp";
    
    private CategorieDAO categorieDAO;
    public void init() throws ServletException {
        /* R�cup�ration d'une instance de notre DAO Utilisateur */
        this.categorieDAO = ( (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY ) ).getCategorieDAO();
    }
    
    public AdCategorie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 CategorieForm form = new CategorieForm( categorieDAO );
		 
	        /* Traitement de la requ�te et r�cup�ration du bean en r�sultant */
	        Categorie cat = form.ajouterCategorie(request);
	 
	        /* Stockage du formulaire et du bean dans l'objet request */
	        request.setAttribute( ATT_FORM, form );
	        request.setAttribute( ATT_USER, cat );
	 
	        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

}
