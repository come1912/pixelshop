package dao;

import java.util.List;

import bean.Admin;

public interface AdminDao {
 
    void trouver(Admin Admin ) throws DAOException;
	List<Admin> findAll() throws Exception;

    
}
