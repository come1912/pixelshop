package bean;



public class Admin {
	
	private String  login ;
	private String  pass ;
	public boolean valid;

	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public boolean isValid()
	{
		return valid;
	}
	public void setValid(boolean newValid)
	{
		valid = newValid;
	}
	
	
}
