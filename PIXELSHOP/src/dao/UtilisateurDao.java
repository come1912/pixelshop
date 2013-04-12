package dao;

import java.util.ArrayList;
import java.util.List;

import bean.utilisateur;

public interface UtilisateurDao {
 
    void creer( utilisateur utilisateur ) throws Exception;
    utilisateur trouver( String email ) throws DAOException;
    void update(String nom) throws Exception;
	List<utilisateur> findAll() throws Exception;
	ArrayList<utilisateur> getAll() throws Exception;
	
	void supprimer(String nom) throws DAOException;
	
    
}
