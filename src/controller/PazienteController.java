package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.Esame;
import model.Paziente;
import model.PazienteFacade;




@ManagedBean(name="pazienteController")
@SessionScoped
public class PazienteController {
	
	@EJB(beanName="pazienteFacade")
	private PazienteFacade pazienteFacade;
	
	private Long id;

	private String firstName;
	private String userName;
	private String password;
	private String lastName;
	private Paziente paziente;
	private String loginErr;
	private List<Esame> esami;
	
	
	public String validate(){
		try {this.paziente=pazienteFacade.validate(userName, password);}
		catch (EJBException e) {
			this.loginErr = "Username o Password errati";
			return "login";
		} 
			this.esami=this.paziente.getEsami();
			return "customer"; //da sostituire con paziente
		}
	
	
	public String createPaziente(){
		this.paziente=pazienteFacade.createPaziente(this.firstName, this.lastName, this.userName, this.password);
		return "customer";
	}
	
	public String listEsami(){
		this.esami = this.paziente.getEsami();
		return "listOrders"; //da sostituire con listEsami
	}
	
	//public void addEsame(Esame esame){
	//	this.esami.add(esami);
	//}


	public PazienteFacade getPazienteFacade() {
		return pazienteFacade;
	}


	public void setPazienteFacade(PazienteFacade pazienteFacade) {
		this.pazienteFacade = pazienteFacade;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public Paziente getPaziente() {
		return paziente;
	}


	public void setPaziente(Paziente paziente) {
		this.paziente = paziente;
	}


	public String getLoginErr() {
		return loginErr;
	}


	public void setLoginErr(String loginErr) {
		this.loginErr = loginErr;
	}


	public List<Esame> getEsami() {
		return esami;
	}


	public void setEsami(List<Esame> esami) {
		this.esami = esami;
	}
	
	

}
