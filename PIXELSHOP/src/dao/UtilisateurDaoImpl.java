package dao;
import static dao.DAOUtilitaire.*;

import dao.UtilisateurDao;
import bean.utilisateur;
import dao.DAOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class UtilisateurDaoImpl implements UtilisateurDao {
	
	private DAOFactory daoFactory;
	Connection connexion = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
	
    
    UtilisateurDaoImpl( DAOFactory daoFactory ) {
        this.daoFactory = daoFactory;
    }
    
    //------------------------
    public static PreparedStatement initialisationRequetePreparee( Connection connexion, String sql, boolean returnGeneratedKeys, Object... objets ) throws SQLException {
        PreparedStatement preparedStatement = connexion.prepareStatement( sql, returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS );
        for ( int i = 0; i < objets.length; i++ ) {
            preparedStatement.setObject( i + 1, objets[i] );
        }
        return preparedStatement;
    }
    //--------------------------------
    

	private static final String SQL_INSERT = "INSERT INTO client (emailclient,mdpclient , nomclient,prenomclient,addresseclient,ddnclient,telephoneclient,villeclient,cpclient,dateinsclient) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";
	private static final String SQL_SELECT_PAR_NOM = "SELECT idclient,emailclient,mdpclient , nomclient,prenomclient,addresseclient,ddnclient,telephoneclient,villeclient,cpclient,dateinsclient FROM client WHERE nomclient = ?";
	private static final String SQL_DELETE_PAR_NOM = "DELETE FROM client WHERE nomclient = ?";
	 
	/* Impl�mentation de la m�thode d�finie dans l'interface UtilisateurDao */
	@Override
	public void creer( utilisateur utilisateur ) throws DAOException {
	    Connection connexion = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet valeursAutoGenerees = null;
	    
	    try {
	        /* R�cup�ration d'une connexion depuis la Factory */
	        connexion = daoFactory.getConnection();
	        preparedStatement = initialisationRequetePreparee( connexion, SQL_INSERT, true,utilisateur.getEmail(),utilisateur.getMotDePasse(),utilisateur.getNomclient(),utilisateur.getPrenomclient(),utilisateur.getAddresseclient(),utilisateur.getDdnclient(),utilisateur.getTelephoneclient(),utilisateur.getVilleclient(),utilisateur.getCpclient());
	        int statut = preparedStatement.executeUpdate();
	        /* Analyse du statut retourn� par la requ�te d'insertion */
	        if ( statut == 0 ) {
	            throw new DAOException( "�chec de la cr�ation de l'utilisateur, aucune ligne ajout�e dans la table." );
	        }
	        /* R�cup�ration de l'id auto-g�n�r� par la requ�te d'insertion */
	        valeursAutoGenerees = preparedStatement.getGeneratedKeys();
	        if ( valeursAutoGenerees.next() ) {
	            /* Puis initialisation de la propri�t� id du bean Utilisateur avec sa valeur */
	            utilisateur.setId( valeursAutoGenerees.getLong( 1 ) );
	        } else {
	            throw new DAOException( "�chec de la cr�ation de l'utilisateur en base, aucun ID auto-g�n�r� retourn�." );
	        }
	    } catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses( valeursAutoGenerees, preparedStatement, connexion );
	    }
	}
	
	
	
	public ArrayList<utilisateur> getAll() {
		utilisateur u;
		ArrayList<utilisateur> listeutilisateur=new ArrayList<utilisateur>();
		String   req="SELECT * FROM client";
		try
		{
		connexion=daoFactory.getConnection();
		preparedStatement = initialisationRequetePreparee( connexion, req, false);
		resultSet = preparedStatement.executeQuery();
		while(resultSet.next())
		{
			
			u=map(resultSet);
			listeutilisateur.add(u);
		}
		return listeutilisateur;
		}
		catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses( resultSet, preparedStatement, connexion );
	    }
		
		
	}
	
	
	
	
	/* Implémentation de la méthode définie dans l'interface UtilisateurDao */
	@Override
	public utilisateur trouver( String nom ) throws DAOException {
	    Connection connexion = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;
	    utilisateur utilisateur = null;
	 
	    try {
	        /* Récupération d'une connexion depuis la Factory */
	        connexion = daoFactory.getConnection();
	        preparedStatement = initialisationRequetePreparee( connexion, SQL_SELECT_PAR_NOM, false, nom );
	        resultSet = preparedStatement.executeQuery();
	        /* Parcours de la ligne de données de l'éventuel ResulSet retourné */
	        if ( resultSet.next() ) {
	            utilisateur = map( resultSet );
	        }
	    } catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses( resultSet, preparedStatement, connexion );
	    }
	 
	    return utilisateur;
	}
	private static final String SQL_SELECT_ALL = "SELECT * FROM Utilisateur";
	@Override
	public List<utilisateur> findAll() throws Exception {
		// TODO Auto-generated method stub

	    Connection connexion = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;
	    List<utilisateur> utilisateur = null;
	 
	    try {
	        /* R�cup�ration d'une connexion depuis la Factory */
	        connexion = daoFactory.getConnection();
	        preparedStatement = initialisationRequetePreparee( connexion, SQL_SELECT_ALL, false);
	        resultSet = preparedStatement.executeQuery();
	        /* Parcours de la ligne de donn�es de l'�ventuel ResulSet retourn� */
	        if ( resultSet.next() ) {
	            utilisateur.add(map( resultSet ));
	        }
	       return utilisateur;
	    } catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses( resultSet, preparedStatement, connexion );
	    }
	}
	
	
	 @Override
	    public void supprimer( String nom ) throws DAOException {
		 Connection connexion = null;
		    PreparedStatement preparedStatement = null;
		  
	 
	        try {
	            connexion = daoFactory.getConnection();
	            preparedStatement = initialisationRequetePreparee( connexion, SQL_DELETE_PAR_NOM, true, nom );
	            int statut = preparedStatement.executeUpdate();
	            if ( statut == 0 ) {
	                throw new DAOException( "Échec de la suppression du client, aucune ligne supprimée de la table." );
	            } else {
	            	nom=null;
	            }
	        } catch ( SQLException e ) {
	            throw new DAOException( e );
	        } finally {
	            fermeturesSilencieuses( preparedStatement, connexion );
	        }
	    }
	
	
	private static utilisateur map( ResultSet resultSet ) throws SQLException {
		
	    utilisateur utilisateur = new utilisateur();
	    utilisateur.setId( resultSet.getLong( "idclient" ) );
	    utilisateur.setEmail(resultSet.getString( "emailclient" ));
	    utilisateur.setMotDePasse(resultSet.getString( "mdpclient" ));
	    utilisateur.setNomclient(resultSet.getString( "nomclient" ));
	    utilisateur.setPrenomclient(resultSet.getString( "prenomclient" ));
	    utilisateur.setAddresseclient(resultSet.getString( "addresseclient" ));
	    utilisateur.setDdnclient(resultSet.getString( "ddnclient" ));
	    utilisateur.setTelephoneclient(resultSet.getString( "telephoneclient" ));
	    utilisateur.setVilleclient(resultSet.getString( "villeclient" ));
	    utilisateur.setCpclient(resultSet.getString( "cpclient" ));
	    
	    utilisateur.setDateInscription( resultSet.getTimestamp( "dateinsclient" ) );
	    return utilisateur;
	}


	@Override
	public void update(String nom) throws Exception {
		// TODO Auto-generated method stub
		
		String SQL_UPDATE = "Update from utilisateur set nom=\"toto\" where nom= \" "+nom+" \" ";
		Connection connexion = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;
	 
	    try {
	        /* Récupération d'une connexion depuis la Factory */
	        connexion = daoFactory.getConnection();
	        Statement st = connexion.createStatement();
	        st.executeUpdate(SQL_UPDATE);

	    } catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses( resultSet, preparedStatement, connexion );
	    }
		
	}

	
	
	
	/*
	 * Simple méthode utilitaire permettant de faire la correspondance (le
	 * mapping) entre une ligne issue de la table des utilisateurs (un
	 * ResultSet) et un bean Utilisateur.
	 */
	private static utilisateur map1( ResultSet resultSet ) throws SQLException {
	    utilisateur utilisateur = new utilisateur();
	    utilisateur.setId( resultSet.getLong( "idclient" ) );
	    utilisateur.setEmail(resultSet.getString( "emailclient" ));
	    utilisateur.setMotDePasse(resultSet.getString( "mdpclient" ));
	    utilisateur.setNomclient(resultSet.getString( "nomclient" ));
	    utilisateur.setPrenomclient(resultSet.getString( "prenomclient" ));
	    utilisateur.setAddresseclient(resultSet.getString( "addresseclient" ));
	    utilisateur.setDdnclient(resultSet.getString( "ddnclient" ));
	    utilisateur.setTelephoneclient(resultSet.getString( "telephoneclient" ));
	    utilisateur.setVilleclient(resultSet.getString( "villeclient" ));
	    utilisateur.setCpclient(resultSet.getString( "cpclient" ));
	    
	    utilisateur.setDateInscription( resultSet.getTimestamp( "dateinsclient" ) );
	    return utilisateur;
	}

	

    
}