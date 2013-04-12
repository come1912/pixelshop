package Forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import bean.utilisateur;
import dao.DAOException;
import dao.DAOFactory;
import dao.UtilisateurDao;
import Forms.FormValidationException;
import Forms.InscriptionForm;

public final class trouverForm {
	 private static final String CHAMP_EMAIL      = "emailc";
	    private static final String CHAMP_PASS       = "mdpc";
	    private static final String CHAMP_NOM        = "nomc";
	    private static final String CHAMP_PRENOM       = "prenomc";
	    private static final String CHAMP_ADRESSE       = "adressec";
	    private static final String CHAMP_DATEN      = "dnc";
	    private static final String CHAMP_TELEPHONE      = "telephonec";
	    private static final String CHAMP_VILLE        = "villec";
	    private static final String CHAMP_CODEPOS        = "cpc";

    private static final String ALGO_CHIFFREMENT = "SHA-256";

    private String              resultat;
    private Map<String, String> erreurs          = new HashMap<String, String>();
    private UtilisateurDao      clientDao;

    public trouverForm( UtilisateurDao clientDao ) {
        this.clientDao = clientDao;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }

    public utilisateur trouverClient( HttpServletRequest request ) {
    	String emailclient = getValeurChamp( request, CHAMP_EMAIL );
        String mdpclient = getValeurChamp( request, CHAMP_PASS );
        String nomclient = getValeurChamp( request, CHAMP_NOM );
        String prenomclient = getValeurChamp( request, CHAMP_PRENOM );
        
        String addresseclient = getValeurChamp( request, CHAMP_ADRESSE );
        String ddnclient = getValeurChamp( request, CHAMP_DATEN );
        String telephoneclient = getValeurChamp( request, CHAMP_TELEPHONE );
        String villeclient = getValeurChamp( request, CHAMP_VILLE );
        String cpclient = getValeurChamp( request, CHAMP_CODEPOS );

        utilisateur client = new utilisateur();
        client.setEmail(emailclient);
        client.setMotDePasse(mdpclient);
        client.setNomclient(nomclient);
        client.setPrenomclient(prenomclient);
        client.setAddresseclient(addresseclient);
        client.setDdnclient(ddnclient);
        client.setTelephoneclient(telephoneclient);
        client.setVilleclient(villeclient);
        client.setCpclient(cpclient);
        try {
/*            traiterEmail( email, client );
            traiterMotsDePasse( motDePasse, confirmation, client );
            traiterNom( nom, client );*/

            //if ( erreurs.isEmpty() ) {
                clientDao.trouver( emailclient );
                resultat = "Succ�s de trouver.";
            /*} else {
                resultat = "echec de trouver.";
            }*/
        } catch ( DAOException e ) {
            resultat = "echec de trouver : une erreur  est survenue, merci de r�essayer dans quelques instants.";
            e.printStackTrace();
        } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        return client;
    }



    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }
	


}
