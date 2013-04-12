package dao;
import java.util.ArrayList;
import bean.Produit;

public interface ProduitDAO {
	
	public abstract void add(Produit p);
	public abstract ArrayList<Produit> getAll();
	public abstract void delete(int id);
	public abstract void modifier(int id);
}