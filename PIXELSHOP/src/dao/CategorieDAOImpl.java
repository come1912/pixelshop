package dao;

import static dao.DAOUtilitaire.fermeturesSilencieuses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.Categorie;

public class CategorieDAOImpl implements CategorieDAO {
	private DAOFactory daoFactory;
	Connection connexion = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    CategorieDAOImpl(DAOFactory daoFactory){
    	this.daoFactory=daoFactory;
    }
    private static final String SQL_INSERT = "INSERT INTO categorie (idcategorie,nomcategorie,desccategorie) VALUES (?, ?, ?)";
	public void creer(Categorie categorie) throws Exception {
		// TODO Auto-generated method stub
		 Connection connexion = null;
		    PreparedStatement preparedStatement = null;
		    ResultSet valeursAutoGenerees = null;
		    try {
		        /* R�cup�ration d'une connexion depuis la Factory */
		        connexion = daoFactory.getConnection();
		        preparedStatement = initialisationRequetePreparee( connexion, SQL_INSERT, true,categorie.getNom(),categorie.getDescription());
		        int statut = preparedStatement.executeUpdate();
		        /* Analyse du statut retourn� par la requ�te d'insertion */
		        if ( statut == 0 ) {
		            throw new DAOException( "�chec de la cr�ation de l'utilisateur, aucune ligne ajout�e dans la table." );
		        }
		        /* R�cup�ration de l'id auto-g�n�r� par la requ�te d'insertion */
		        valeursAutoGenerees = preparedStatement.getGeneratedKeys();
		        if ( valeursAutoGenerees.next() ) {
		            /* Puis initialisation de la propri�t� id du bean Utilisateur avec sa valeur */
		        	categorie.setIdcategorie(valeursAutoGenerees.getInt(1));
		        } else {
		            throw new DAOException( "�chec de la cr�ation de l'utilisateur en base, aucun ID auto-g�n�r� retourn�." );
		        }
		    } catch ( SQLException e ) {
		        throw new DAOException( e );
		    } finally {
		        fermeturesSilencieuses( valeursAutoGenerees, preparedStatement, connexion );
		    }
		}
	public static PreparedStatement initialisationRequetePreparee( Connection connexion, String sql, boolean returnGeneratedKeys, Object... objets ) throws SQLException {
        PreparedStatement preparedStatement = connexion.prepareStatement( sql, returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS );
        for ( int i = 0; i < objets.length; i++ ) {
            preparedStatement.setObject( i + 1, objets[i] );
        }
        return preparedStatement;
    }
	private static Categorie map(ResultSet resultSet ) throws SQLException {
		Categorie categorie=new Categorie();
		categorie.setIdcategorie( resultSet.getInt("idcategorie"));
		categorie.setNom( resultSet.getString("nomcategorie"));
		categorie.setDescription( resultSet.getString("desccategorie"));
		
		
		
		return categorie;
	}
}
