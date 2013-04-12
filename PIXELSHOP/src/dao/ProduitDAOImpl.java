package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dao.DAOException;
import bean.Produit;

public class ProduitDAOImpl implements ProduitDAO{
	private DAOFactory df;
	Connection connexion = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    
    public ProduitDAOImpl(DAOFactory df){
    	this.df=df;
    	}
    
    public static PreparedStatement initialisationRequetePreparee( Connection connexion, String sql, boolean returnGeneratedKeys, Object... objets ) throws SQLException {
        PreparedStatement preparedStatement = connexion.prepareStatement( sql, returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS );
        for ( int i = 0; i < objets.length; i++ ) {
            preparedStatement.setObject( i + 1, objets[i] );
        }
        return preparedStatement;
    }
    public Produit map(ResultSet rs) throws SQLException
    {
    	Produit p=new Produit();
    	p.setIdProduit(rs.getInt(1));
    	p.setLibelle(rs.getString(2));
    	p.setDescription(rs.getString(3));
    	p.setQuantite(rs.getString(4));
    	p.setPrix(rs.getDouble(5));
    	p.setdProduit(rs.getDate(6));
    	p.setPhoto(rs.getString(7));
    	p.setCategorie(rs.getInt(8));
    	return p;
    }

    
	@Override
	public void add(Produit p) {
		String req="insert into produit values(null,?,?,?,?,?,?,?,null)";
		try
		{
		connexion=df.getConnection();
		preparedStatement = initialisationRequetePreparee( connexion, req, false,p.getLibelle(),p.getDescription(),p.getPrix(),p.getdProduit(),p.getPhoto(),p.getEtatProduit(),p.getCategorie());
		int rs=preparedStatement.executeUpdate();
		
		}catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses(  preparedStatement, connexion );
	    }
		
	}

	@Override
	public ArrayList<Produit> getAll() {
		Produit p;
		ArrayList<Produit> listeProduit=new ArrayList<Produit>();
		String   req="SELECT id_produit, intitule_produit, desc_produit,quantite_produit, prix_produit, date_ajout_produit, image_produit,idcategorie FROM produit";
		try
		{
		connexion=df.getConnection();
		preparedStatement = initialisationRequetePreparee( connexion, req, false);
		resultSet = preparedStatement.executeQuery();
		while(resultSet.next())
		{
			
			p=map(resultSet);
			listeProduit.add(p);
		}
		return listeProduit;
		}
		catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
	        fermeturesSilencieuses( resultSet, preparedStatement, connexion );
	    }
		
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifier(int id) {
		// TODO Auto-generated method stub
		
	}
	
	/* Fermeture silencieuse du resultset */
	public static void fermetureSilencieuse( ResultSet resultSet ) {
	    if ( resultSet != null ) {
	        try {
	            resultSet.close();
	        } catch ( SQLException e ) {
	            System.out.println( "Échec de la fermeture du ResultSet : " + e.getMessage() );
	        }
	    }
	}
	 
	/* Fermeture silencieuse du statement */
	public static void fermetureSilencieuse( Statement statement ) {
	    if ( statement != null ) {
	        try {
	            statement.close();
	        } catch ( SQLException e ) {
	            System.out.println( "Échec de la fermeture du Statement : " + e.getMessage() );
	        }
	    }
	}
	 
	/* Fermeture silencieuse de la connexion */
	public static void fermetureSilencieuse( Connection connexion ) {
	    if ( connexion != null ) {
	        try {
	            connexion.close();
	        } catch ( SQLException e ) {
	            System.out.println( "Échec de la fermeture de la connexion : " + e.getMessage() );
	        }
	    }
	}
	 
	/* Fermetures silencieuses du statement et de la connexion */
	public static void fermeturesSilencieuses( Statement statement, Connection connexion ) {
	    fermetureSilencieuse( statement );
	    fermetureSilencieuse( connexion );
	}
	/* Fermetures silencieuses du resultset, du statement et de la connexion */
	public static void fermeturesSilencieuses( ResultSet resultSet, PreparedStatement preparedStatement, Connection connexion ) {
	    fermetureSilencieuse( resultSet );
	    fermetureSilencieuse(  preparedStatement );
	    fermetureSilencieuse( connexion );
	}
	

}
