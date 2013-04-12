package Forms;


import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;


import bean.Categorie;
import dao.DAOException;
import dao.DAOFactory;
import dao.CategorieDAO;
import Forms.FormValidationException;
import Forms.CategorieForm;
public class CategorieForm {
	 private static final String CHAMP_NOM      = "nomcategorie";
	    private static final String CHAMP_DESCRIPTION       = "desccategorie";
	    private String              resultat;
	    private Map<String, String> erreurs          = new HashMap<String, String>();
	    private CategorieDAO      categorieDAO;
	    public CategorieForm( CategorieDAO categorieDAO ) {
	        this.categorieDAO = categorieDAO;
	    }
	    public Map<String, String> getErreurs() {
	        return erreurs;
	    }

	    public String getResultat() {
	        return resultat;
	    }
	  
	    public Categorie ajouterCategorie( HttpServletRequest request ) {
	        String nom = getValeurChamp( request, CHAMP_NOM );
	        String description = getValeurChamp( request, CHAMP_DESCRIPTION );
Categorie cat=new Categorie();
cat.setNom(nom);
cat.setDescription(description);
try {

	categorieDAO.creer( cat );
    resultat = "Succ�s de l'inscription.";

} catch ( DAOException e ) {
resultat = "echec de l'inscription : une erreur  est survenue, merci de r�essayer dans quelques instants.";
e.printStackTrace();
} catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}

return cat;
}
		private String getValeurChamp(HttpServletRequest request,
				String champNom) {
			// TODO Auto-generated method stub
			return null;
		}
	    }
