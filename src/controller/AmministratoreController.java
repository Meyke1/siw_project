package controller;



import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

import model.Amministratore;
import model.AmministratoreFacade;

@ManagedBean(name="amministratoreController")
@SessionScoped
public class AmministratoreController {
	
	
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String cognome;
	private String nome;
	private String username;
	private String password;
	private Amministratore amministratore;
	private Amministratore corrente;
	private List<Amministratore> amministratori;
	private String errore;
	
	@EJB
	private AmministratoreFacade aFacade;
	
	public String createAmministratore() {
		this.amministratore = aFacade.createAmministratore(nome, cognome, username, password);
		return "amministratore"; 
	}
	
	public String listAmministratori() {
		this.amministratori = aFacade.getAllAmministratori();
		return "amministratori"; 
	}

	public String findAmministratore() {
		this.amministratore = aFacade.getAmministratore(id);
		return "amministratore";
	}
	
	public String findAmministratore(Long id) {
		this.amministratore = aFacade.getAmministratore(id);
		return "amministratore";
	}
	
	public String loginAmministratore(){
		this.amministratori = aFacade.getAllAmministratori();
		for(Amministratore am:amministratori){
			if(username.equals(am.getUsername()))
				if(password.equals(am.getPassword())){
					this.corrente=am;
					this.errore=null;
					return "index";
				}
				else
					this.errore="Mail o Password errati";
			else
				this.errore="Mail o Password errati";
		}
		return "loginAmministratore";
	}
	
	public String logoutAmministratore(){
		this.corrente=null;
		return "index";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Amministratore getAmministratore() {
		return amministratore;
	}

	public void setAmministratore(Amministratore amministratore) {
		this.amministratore = amministratore;
	}

	public Amministratore getCorrente() {
		return corrente;
	}

	public void setCorrente(Amministratore corrente) {
		this.corrente = corrente;
	}

	public List<Amministratore> getAmministratori() {
		return amministratori;
	}

	public void setAmministratori(List<Amministratore> amministratori) {
		this.amministratori = amministratori;
	}

	public String getErrore() {
		return errore;
	}

	public void setErrore(String errore) {
		this.errore = errore;
	}

	public AmministratoreFacade getaFacade() {
		return aFacade;
	}

	public void setaFacade(AmministratoreFacade aFacade) {
		this.aFacade = aFacade;
	}
	


}
