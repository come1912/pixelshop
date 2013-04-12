package bean;

import java.sql.Timestamp;
import java.util.Date;

public class utilisateur {
 
	private Long      id;
    


	private String    email;
    private String    motDePasse;
    private String    nomclient;
    private String prenomclient;
    private String addresseclient;
    private String ddnclient;
    private String telephoneclient;
    private String villeclient;
    private String cpclient;
    
    
    private Date dateInscription;

    public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMotDePasse() {
		return motDePasse;
	}


	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}


	public String getNomclient() {
		return nomclient;
	}


	public void setNomclient(String nomclient) {
		this.nomclient = nomclient;
	}


	public String getPrenomclient() {
		return prenomclient;
	}


	public void setPrenomclient(String prenomclient) {
		this.prenomclient = prenomclient;
	}


	public String getAddresseclient() {
		return addresseclient;
	}


	public void setAddresseclient(String addresseclient) {
		this.addresseclient = addresseclient;
	}


	public String getDdnclient() {
		return ddnclient;
	}


	public void setDdnclient(String ddnclient) {
		this.ddnclient = ddnclient;
	}


	public String getTelephoneclient() {
		return telephoneclient;
	}


	public void setTelephoneclient(String telephoneclient) {
		this.telephoneclient = telephoneclient;
	}


	public String getVilleclient() {
		return villeclient;
	}


	public void setVilleclient(String villeclient) {
		this.villeclient = villeclient;
	}


	public String getCpclient() {
		return cpclient;
	}


	public void setCpclient(String cpclient) {
		this.cpclient = cpclient;
	}


	public Date getDateInscription() {
		return dateInscription;
	}


	public void setDateInscription(Date dateInscription) {
		this.dateInscription = dateInscription;
	}


	@Override
	public String toString() {
		return "utilisateur [id=" + id + ", email=" + email + ", motDePasse="
				+ motDePasse + ", nomclient=" + nomclient + ", prenomclient="
				+ prenomclient + ", addresseclient=" + addresseclient
				+ ", ddnclient=" + ddnclient + ", telephoneclient="
				+ telephoneclient + ", villeclient=" + villeclient
				+ ", cpclient=" + cpclient + ", dateInscription="
				+ dateInscription + "]";
	}


	
	
 
    
}