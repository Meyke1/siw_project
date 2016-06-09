package controller;



import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;


//import model.Esame;
import model.Paziente;
import model.PazienteFacade;





@ManagedBean
@SessionScoped
public class PazienteController {
	
	
	@EJB
	private PazienteFacade pazienteFacade;
	
	@ManagedProperty(value="#{param.id}")
	private Long id;

	private String nome;
	private String cognome;
	private String indirizzo;
	private Date dataDiNascita;
	private Date dataDiRegistrazione;
	private String username;
	private String password;
	private String errore;
	private String code;
	
	private Paziente paziente;
	private Paziente corrente = null;
	//private List<Esame> esami;
	private List<Paziente> pazienti;
	
	public String createPaziente() {
		this.paziente = pazienteFacade.createPaziente(nome, cognome, dataDiNascita, new Date(), indirizzo, username, password, code);
		return "paziente"; 
	}
	
	public String loginPaziente(){
		this.pazienti = pazienteFacade.getAllPazienti();
		for(Paziente p: pazienti){
			if(username.equals(p.getUsername()))
				if(password.equals(p.getPassword())){
					this.corrente = p;
					this.errore = null;
					return "index";
				}
				else
					this.errore="Username o Password errati";
			else
				this.errore="Username o Password errati";
		}
		return "loginPaziente";
	}
	
	public String logoutPaziente(){
		this.corrente=null;
		return "index";
	}
	
	public String listEsami(){
		//this.esami = this.paziente.getEsami();
		return "listEsami"; 
	}

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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public Date getDataDiNascita() {
		return dataDiNascita;
	}

	public void setDataDiNascita(Date dataDiNascita) {
		this.dataDiNascita = dataDiNascita;
	}

	public Date getDataDiRegistrazione() {
		return dataDiRegistrazione;
	}

	public void setDataDiRegistrazione(Date dataDiRegistrazione) {
		this.dataDiRegistrazione = dataDiRegistrazione;
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

	public String getErrore() {
		return errore;
	}

	public void setErrore(String errore) {
		this.errore = errore;
	}

	public Paziente getPaziente() {
		return paziente;
	}

	public void setPaziente(Paziente paziente) {
		this.paziente = paziente;
	}

	public Paziente getCorrente() {
		return corrente;
	}

	public void setCorrente(Paziente corrente) {
		this.corrente = corrente;
	}
/*
	public List<Esame> getEsami() {
		return esami;
	}

	public void setEsami(List<Esame> esami) {
		this.esami = esami;
	}
*/
	public List<Paziente> getPazienti() {
		return pazienti;
	}

	public void setPazienti(List<Paziente> pazienti) {
		this.pazienti = pazienti;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	} 
	
	
	
}
	
	


	
